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
        cQueys queys = new cQueys();
        cHash hash = new cHash();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idUser"] != null)
            {
                Response.Redirect("frmPrincipal.aspx");
            }
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            //string pass = hash.HashPass(txtContraseña.Value);

            //if (queys.Login(txtCorreo.Value, pass))
            //{
            //    lblRespuesta.Text = "Usuario Encontrado";
            //}
            //else
            //{
            //    lblRespuesta.Visible = true;;
            //    lblRespuesta.Text = "Error, correo o contraseña incorrectos";
            //}
            Session["idUser"] = "user404";
            Response.Redirect("frmPrincipal.aspx?parametro=465");
        }
    }
}