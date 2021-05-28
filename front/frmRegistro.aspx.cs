using HealthyDiet.clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace HealthyDiet.front
{
    public partial class frmRegistro : System.Web.UI.Page
    {
        cQuerys queys = new cQuerys();
        cHash hash = new cHash();
        public string idFood = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idUser"] != null)
            {
                Response.Redirect("frmPrincipal.aspx");
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
           
           // try
            //{
                //string pass = hash.HashPass(txtContraseña.Value);
                string id = hash.HashId(txtNombre.Value, Convert.ToString(DateTime.Now), txtEdad.Value);
                //LLAMAR HAS PASS
                if (queys.Registrar(id, txtNombre.Value, txtApPaterno.Value, txtApMaterno.Value, Convert.ToString(ddlSexo.SelectedValue), txtEdad.Value, txtCorreo.Value, txtContraseña.Value))
                {
                    
                    Response.Redirect("frmPlanMensual.aspx?parametro=" + txtCorreo.Value);
                }
                else
                {
                    lblRespuesta.Text = "¡Ha ocurrido un error!";
                    lblRespuesta.CssClass = "alert alert-warning";
                }
            }
           /* catch(Exception ex)
            {
                lblRespuesta.Text = "¡Ups! Algo salió mal! Algo ocurrió con nuestra base de datos." + ex.ToString();
                lblRespuesta.CssClass = "";
            }*/
    }
}