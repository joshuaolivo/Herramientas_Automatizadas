using HealthyDiet.clases;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Dynamic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthyDiet.front
{
    public partial class frmDieta : System.Web.UI.Page
    {
        string id, result, result_info;
        cCalories calories = new cCalories();
        cQuerys queys = new cQuerys();
        float[] macros = new float[4];
        int[] cal = new int[3];
        int calorie = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cardFatSecret.Style.Add("display", "none");
                cardInfoUser.Style.Add("display", "none");
                cardDieta.Style.Add("display", "none");
                ClientScript.RegisterStartupScript(GetType(), "animacion", "cargarAnim();", true);
            }
            else
            {
                cardDieta.Style.Remove("display");
                cardFatSecret.Style.Remove("display");
                cardInfoUser.Style.Remove("display");
            }

            if (Session["idUser"] == null)
            {
                Response.Redirect("index.aspx");
            }
            else
            { 
                id = Session["idUser"].ToString();
            }

            macros = queys.sumMacros(id);

            if (queys.Objetivo(id))
            {
                cal = calories.getMacrosMore(id);
            }
            else
            {
                cal = calories.getMacrosLess(id);
            }

            calorie = queys.getCalories(id);

            lblCaloriasAC.Text = Convert.ToString(calorie);
            lblCarboAC.Text = Convert.ToString(cal[0]);
            lblProteinaAC.Text = Convert.ToString(cal[1]);
            lblGrasasAC.Text = Convert.ToString(cal[2]);

            lblCaloriasF.Text = Convert.ToString(calorie - macros[0]);
            lblCarboF.Text = Convert.ToString(cal[0] - macros[1]);
            lblProteinaF.Text = Convert.ToString(cal[1] - macros[2]);
            lblGrasasF.Text = Convert.ToString(cal[2] - macros[3]);

            lblCaloriasC.Text = Convert.ToString(macros[0]);
            lblCarboC.Text = Convert.ToString(macros[1]);
            lblGrasasC.Text = Convert.ToString(macros[2]);
            lblProteinaC.Text = Convert.ToString(macros[3]);

            GridView1.DataSource = queys.FillInTable(id);
            GridView1.DataBind();
        }
        
        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["idUser"] = null;
            Response.Redirect("frmLog.aspx");
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtComida.Text != "" && txtProte.Text != "" && txtCarbos.Text != "" && txtGrasas.Text != "" && txtCal.Text != "")
            {
                int respuesta = queys.pushFood(id, txtComida.Text, Convert.ToSingle(0), Convert.ToSingle(txtProte.Text), Convert.ToSingle(txtCarbos.Text), Convert.ToSingle(txtGrasas.Text), Convert.ToSingle(txtCal.Text));

                if (respuesta == 0)
                {
                    addFood();
                }
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if (txtAlimento.Text != "")
            {
                getFood();
            }
        }

        protected void gridAlimentos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridAlimentos.PageIndex = e.NewPageIndex;
            getFood();
        }

        protected void gridAlimentos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "seleccion")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow id_Rows = gridAlimentos.Rows[index];
                string idalimento = id_Rows.Cells[1].Text;
                getInfo(int.Parse(idalimento));
            }
        }


        private void getFood()
        {
            ProcessStartInfo start = new ProcessStartInfo();
            start.FileName = AppDomain.CurrentDomain.BaseDirectory + @"front\fatSecretAPI\fs\fs.exe";
            start.Arguments = string.Format("{0}", txtAlimento.Text);
            start.UseShellExecute = false;
            start.RedirectStandardOutput = true;
            start.CreateNoWindow = true;
            using (Process process = Process.Start(start))
            {
                using (StreamReader reader = process.StandardOutput)
                {
                    result = reader.ReadToEnd();
                }
            }
            var dataTable = JsonConvert.DeserializeObject<List<JsonResult>>(result);
            gridAlimentos.DataSource = dataTable;
            gridAlimentos.DataBind();
        }

        private void getInfo(int idF)
        {
            ProcessStartInfo start = new ProcessStartInfo();
            start.FileName = AppDomain.CurrentDomain.BaseDirectory + @"front\fatSecretAPI\info\info.exe";
            start.Arguments = string.Format("{0}", idF);
            start.UseShellExecute = false;
            start.RedirectStandardOutput = true;
            start.CreateNoWindow = true;
            using (Process process = Process.Start(start))
            {
                using (StreamReader reader = process.StandardOutput)
                {
                    result_info = reader.ReadToEnd();
                    result_info = "[" + result_info + "]";
                    var listProductos = JsonConvert.DeserializeObject<List<ExpandoObject>>(result_info);
                    foreach (dynamic prod in listProductos)
                    {
                        if (result_info.Contains("brand_name"))
                        { 
                            string porcion = "";
                            if (result_info.Contains("metric_serving_amount"))
                            {
                                porcion = prod.servings.serving.metric_serving_amount + prod.servings.serving.metric_serving_unit;
                            }
                            else
                            {
                                porcion = prod.servings.serving.serving_description;
                            }
                            lblMedida.Text = porcion;
                            var IDFood = prod.food_id;
                            txtComida.Text = prod.food_name;
                            txtProte.Text = prod.servings.serving.protein;
                            txtCal.Text = prod.servings.serving.calories;
                            txtCarbos.Text = prod.servings.serving.carbohydrate;
                            txtGrasas.Text = prod.servings.serving.fat;
                        }
                        else
                        {
                            string porcion = "";
                            if (result_info.Contains("metric_serving_amount"))
                            {
                                porcion = prod.servings.serving[0].metric_serving_amount + prod.servings.serving[0].metric_serving_unit;
                            }
                            else
                            {
                                porcion = prod.servings.serving[0].serving_description;
                            }
                            lblMedida.Text = porcion;
                            var IDFood = prod.food_id;
                            txtComida.Text = prod.food_name;
                            txtProte.Text = prod.servings.serving[0].protein;
                            txtCal.Text = prod.servings.serving[0].calories;
                            txtCarbos.Text = prod.servings.serving[0].carbohydrate;
                            txtGrasas.Text = prod.servings.serving[0].fat;
                        }
                    }
                }
            }
        }

        private void addFood()
        {
            lblMedida.Text = "";
            txtCal.Text = "";
            txtCarbos.Text = "";
            txtComida.Text = "";
            txtGrasas.Text = "";
            txtProte.Text = "";
            macros = queys.sumMacros(id);

            lblCaloriasC.Text = Convert.ToString(macros[0]);
            lblCarboC.Text = Convert.ToString(macros[1]);
            lblGrasasC.Text = Convert.ToString(macros[2]);
            lblProteinaC.Text = Convert.ToString(macros[3]);

            lblCaloriasF.Text = Convert.ToString(calorie - macros[0]);
            lblCarboF.Text = Convert.ToString(cal[0] - macros[1]);
            lblProteinaF.Text = Convert.ToString(cal[1] - macros[2]);
            lblGrasasF.Text = Convert.ToString(cal[2] - macros[3]);

            GridView1.DataSource = queys.FillInTable(id);
            GridView1.DataBind();
        }
        
        public class JsonResult
        {
            public int food_id { get; set; }
            public string food_name { get; set; }
            public string food_description { get; set; }
        }
    }
}