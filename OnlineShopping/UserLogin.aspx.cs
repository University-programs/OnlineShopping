using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OnlineShopping
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataSet ds = DBHelper.Select("select * from Users where UserName='" + txtuid.Text.Trim() + "' and UserPassword='" + txtpwd.Text.Trim() + "'");
            if (ds.Tables[0].Rows.Count!=1)
            {
                Response.Write("<script>alert('账号或密码错误！');</script>");
                return;
            }
            Session["uid"] = ds.Tables[0].Rows[0][0].ToString();
            Response.Redirect("Index.aspx");
        }
    }
}