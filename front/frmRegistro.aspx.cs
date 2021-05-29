﻿using HealthyDiet.clases;
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
           
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {

            try
            {
                //string pass = hash.HashPass(txtContraseña.Value);
                string id = hash.HashId(txtNombre.Value, Convert.ToString(DateTime.Now), txtEdad.Value);
                //LLAMAR HAS PASS
                if (queys.Registrar(id, txtNombre.Value, txtApPaterno.Value, txtApMaterno.Value, Convert.ToString(ddlSexo.SelectedValue), txtEdad.Value, txtCorreo.Value, txtContraseña.Value))
                {
                    Session["idUser"] = queys.getId(txtCorreo.Value);
                    Response.Redirect("frmPlanMensual.aspx");
                }
                else
                {
                    lblRespuesta.Text = "¡Ha ocurrido un error!";
                    lblRespuesta.CssClass = "alert alert-warning";
                }
            }
            catch (Exception)
            {
                lblRespuesta.Text = "¡Ups! Algo salió mal! Algo ocurrió con nuestra base de datos.";
                lblRespuesta.CssClass = "";
            }
        }
    }
}