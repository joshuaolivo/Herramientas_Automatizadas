using HealthyDiet.clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthyDiet.front
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
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

            Response.Redirect("frmPrincipal.aspx?parametro=465");
        }
    }
}