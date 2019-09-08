using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace OnlineShopping
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtNname.Text.Trim() == "" || txtNname.Text.Trim() == "" || txtPwd.Text.Trim() == "")
            {
                Response.Write("<script>alert('请输入正确的内容!')</script>");
                return;
            }
            DataTable dt = DBHelper.Select("SELECT * from Users where UserName='" + txtNname.Text.Trim() + "'").Tables[0];
            if (dt.Rows.Count>0)
            {
                Response.Write("<script>alert('该账户已被注册!')</script>");
                return;
            }
            bool result = DBHelper.Update("insert into Users values('" + txtUname.Text.Trim() + "','" + txtNname.Text.Trim() + "','" + txtPwd.Text.Trim() + "','false')");
            if (result)
            {
                Response.Write("<script>alert('注册成功!')</script>");
            }
            else
            {
                Response.Write("<script>alert('注册失败!')</script>");
            }
        }
    }
}