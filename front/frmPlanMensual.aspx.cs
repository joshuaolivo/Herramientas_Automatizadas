using HealthyDiet.clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthyDiet.front
{
    public partial class frmPlanMensual : System.Web.UI.Page
    {
        string id;
        cQuerys queys = new cQuerys();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idUser"] == null)
            {
                Response.Redirect("index.aspx");
            }

            if (Session["idUser"] != null)
            {
                id = Session["idUser"].ToString();
            }

            int time = queys.time_diet(id);
            if(time>0)
            {
                Label2.Text = "Mes de dieta No.";
                txtMeses.Text = (time+1).ToString();
                txtMeses.Enabled = false;
            }

            cardPlan.Style.Add("display", "none");
            cardResumen.Style.Add("display", "none");
            ClientScript.RegisterStartupScript(GetType(), "animacion", "cargarAnim();", true);
        }

        protected void btnPlan_Click(object sender, EventArgs e)
        {
            string objetivo = purpose();
            string sexo = queys.gender(id);
            int calorias;
            int resultado;

            cPlan plan = new cPlan(Convert.ToInt32(txtMeses.Text), Convert.ToInt32(txtEdad.Text), Convert.ToInt32(txtAltura.Text), Convert.ToSingle(txtPeso.Text), sexo, Convert.ToInt32(ddlActividad.Text), objetivo);
            calorias = Convert.ToInt32(Math.Round(plan.NewCobsumption()));
            lblObjetivo.Text = ddlObjetivo.Text;
            lblBAsal.Text = Convert.ToString(Math.Round(plan.BasalCalories()));
            lblObje.Text = Convert.ToString(calorias);

            //RAUL AQUI QUIERO QUE SALGA UN MENSA QUE DIGA PLAN CREADO Y GURDADO CON EXITO
            resultado = queys.saveDiet(id, Convert.ToInt32(txtMeses.Text), lblObjetivo.Text, calorias);
            resultado = queys.setDataFIsic(id, Convert.ToInt32(txtAltura.Text), Convert.ToSingle(txtPeso.Text));
            btnPlan.Enabled = false;
           
        }

        protected void btnContinuar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmDieta.aspx");
        }

        private string purpose()
        {
            if (ddlActividad.Text == "Perder Grasa")
            {
                return "B";
            }

            return "S";
        }
    }
}