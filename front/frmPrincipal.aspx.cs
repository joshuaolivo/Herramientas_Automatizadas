using HealthyDiet.clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthyDiet.front
{
    public partial class frmPrincipal : System.Web.UI.Page
    {
        string id;
        cQuerys queys = new cQuerys();
        bool ValidDiet;
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
            ValidDiet = queys.ValidDiet(id);

            if (ValidDiet)
            {
                lblDita.InnerText = "Es tiempo de crear tu dieta";
            }

            cardPersonal.Style.Add("display", "none");
            cardDieta.Style.Add("display", "none");
            ClientScript.RegisterStartupScript(GetType(), "animacion", "cargarAnim();", true);
        }

        protected void imgInfo_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("frmPerfil.aspx");
        }

        protected void imgDieta_Click(object sender, ImageClickEventArgs e)
        {
            if (!ValidDiet)
            {
                Response.Redirect("frmDieta.aspx");
            }
            else
            {
                Response.Redirect("frmPlanMensual.aspx");
            }
            
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["idUser"] = null;
            Response.Redirect("frmLog.aspx");
        }
    }
}