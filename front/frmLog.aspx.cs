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
            if (Session["idUser"] != null)
            {
                Response.Redirect("frmPrincipal.aspx");
            }
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            
            Session["idUser"] = queys.getId(txtCorreo.Value);
            Response.Redirect("frmPrincipal.aspx");
        }
    }
}