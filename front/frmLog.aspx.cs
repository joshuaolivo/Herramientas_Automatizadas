using HealthyDiet.clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthyDiet.front
{
    public partial class frmLog : System.Web.UI.Page
    {
        cQuerys queys = new cQuerys();
        cHash hash = new cHash();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClientScript.RegisterStartupScript(GetType(), "animacion", "cargarAnim();", true);
            }
            else
            {
                cardLog.Style.Remove("display");
            }

            if (Session["idUser"] != null)
            {
                Response.Redirect("frmPrincipal.aspx");
            }
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            try
            {
                string inputPass = hash.HashPass(txtContraseña.Value);
                bool result = queys.Login(txtCorreo.Value, inputPass);
                if (result)
                {
                    Session["idUser"] = queys.getId(txtCorreo.Value);
                    Response.Redirect("frmPrincipal.aspx");
                }
                else
                {
                    lblRespuesta.Text = "Correo o contraseña incorrectos";
                    lblRespuesta.CssClass = "alert alert-danger m-1";
                }
            }
            catch (Exception)
            {

            }
        }
    }
}