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
        }

        protected void imgInfo_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("frmPerfil.aspx");
        }

        protected void imgDieta_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("frmDieta.aspx");
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["idUser"] = null;
            Response.Redirect("frmLog.aspx");
        }
    }
}