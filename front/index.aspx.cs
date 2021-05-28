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
        cQuerys querys = new cQuerys();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idUser"] != null)
            {
                Response.Redirect("frmPrincipal.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
          
            Session["idUser"] = querys.getId(txtCorreo.Value);
            Response.Redirect("frmPrincipal.aspx?parametro=465");
        }
    }
}