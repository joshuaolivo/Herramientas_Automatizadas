using HealthyDiet.clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Windows.Forms;

namespace HealthyDiet.front
{
    public partial class frmRegistro : System.Web.UI.Page
    {
        cQuerys queys = new cQuerys();
        cHash hash = new cHash();
        public string idFood = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cardRegistro.Style.Add("display", "none");
                ClientScript.RegisterStartupScript(GetType(), "animacion", "cargarAnim();", true);
            }
            else
            {
                cardRegistro.Style.Remove("display");
            }

            if (Session["idUser"] != null)
            {
                Response.Redirect("frmPrincipal.aspx");
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            try
            {
                string pass = hash.HashPass(txtContraseña.Value);
                string id = hash.HashId(txtNombre.Value, Convert.ToString(DateTime.Now), txtEdad.Value);
                //LLAMAR HAS PASS
                if (queys.Registrar(id, txtNombre.Value, txtApPaterno.Value, txtApMaterno.Value, Convert.ToString(ddlSexo.SelectedValue), txtEdad.Value, txtCorreo.Value, pass))
                {
                    if (txtCorreo.Value == txtCorreo2.Value && txtContraseña.Value == txtContraseña2.Value)
                    {
                        Session["idUser"] = queys.getId(txtCorreo.Value);
                        Response.Redirect("frmPlanMensual.aspx");
                    }
                    else
                    {
                        lblRespuesta.Text = "¡Revise la confirmación de correo y contraseña!";
                        lblRespuesta.CssClass = "alert alert-warning m-1";
                    }
                }
                else
                {
                    lblRespuesta.Text = "El usuario ya está registrado";
                    lblRespuesta.CssClass = "alert alert-warning m-1";
                }
            }
            catch (Exception)
            {
                lblRespuesta.Text = "¡Ups! Algo salió mal! Algo ocurrió con nuestra base de datos.";
                lblRespuesta.CssClass = "alert alert-warning m-1";
            }
        }
    }
}