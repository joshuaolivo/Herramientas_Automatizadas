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
        string id, correo;
        cQuerys queys = new cQuerys();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idUser"] == null)
            {
                Response.Redirect("index.aspx");
            }

            if (Request.Params["parametro"] != null)
            {
                correo = Request.Params["parametro"];
            }

            id = queys.getId(correo);
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

            if (btnPlan.Text == "Crear Plan")
            {
                btnPlan.Text = "Editar";
            }
            else
            {
                btnPlan.Text = "Guardar";
            }
        }

        protected void btnContinuar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmDieta.aspx?parametro=" + id);
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