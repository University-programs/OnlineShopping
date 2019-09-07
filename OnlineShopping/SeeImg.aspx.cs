using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShopping
{
    public partial class SeeImg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Image1.ImageUrl = "./Images/" + Request["url"];
                Image1.Height = 500;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.location.href='GoodManager.aspx'</script>");
        }
    }
}