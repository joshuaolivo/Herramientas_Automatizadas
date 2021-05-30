using HealthyDiet.clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthyDiet.front
{
    public partial class frmPerfil : System.Web.UI.Page
    {
        string id;
        cQuerys querys = new cQuerys();
        string[] info = new string[7];
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

            info = querys.Self_Info(id);

            lblNombre.Text = info[0];
            lblApP.Text = info[1];
            lblApM.Text = info[2];
            lblEdad.Text = info[3];
            lblAltura.Text = info[4];
            lblPeso.Text = info[5];
            lblFecha.Text = info[6];

            gdvAvance.DataSource = querys.FillInProgres(id);
            gdvAvance.DataBind();

            cardInfo.Style.Add("display", "none");
            cardAvance.Style.Add("display", "none");
            ClientScript.RegisterStartupScript(GetType(), "animacion", "cargarAnim();", true);
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["idUser"] = null;
            Response.Redirect("frmLog.aspx");
        }
    }
}