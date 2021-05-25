using HealthyDiet.clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthyDiet.front
{
    public partial class frmDieta : System.Web.UI.Page
    {
        string id;
        cCalories calories = new cCalories();
        cQueys queys = new cQueys();
        float[] macros = new float[4];
        int[] cal = new int[3];
        int calorie = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Params["parametro"] != null)
            {
                id = Request.Params["parametro"];
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

        protected void GridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            
            int respuesta = queys.pushFood(id, txtComida.Text, Convert.ToSingle(0), Convert.ToSingle(txtProte.Text), Convert.ToSingle(txtCarbos.Text), Convert.ToSingle(txtGrasas.Text), Convert.ToSingle(txtCal.Text));
            
            if(respuesta == 0)
            {
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
        }
    }
}