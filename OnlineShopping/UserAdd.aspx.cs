using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShopping
{
    public partial class UserAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text == "")
            {
                Response.Write("<script>alert('请输入用户名')</script>");
                return;
            }
            if (txtNickName.Text == "")
            {
                Response.Write("<script>alert('请输入昵称')</script>");
                return;
            }
            if (txtNewUserPassword.Text == "")
            {
                Response.Write("<script>alert('请输入密码')</script>");
                return;
            }
            if (txtEnterUserPassword.Text == "")
            {
                Response.Write("<script>alert('请确认密码')</script>");
                return;
            }
            if(DBHelper.Select("select * from Users where UserName='"+txtUserName.Text+"'").Tables[0].Rows.Count>0)
            {
                Response.Write("<script>alert('该用户名已使用')</script>");
                return;
            }
            if(txtNewUserPassword.Text!=txtEnterUserPassword.Text)
            {
                Response.Write("<script>alert('两次输入密码不一致')</script>");
                return;
            }
            if(DBHelper.Update("insert into Users (UserName,NickName,UserPassword,IsAdmin) values ('"+txtUserName.Text+"','"+txtNickName.Text+"','"+txtNewUserPassword.Text+"',1)"))
            {
                Response.Write("<script>alert('添加管理员成功');window.location.href='UserAdd.aspx'</script>");
                return;
            }
            else
            {
                Response.Write("<script>alert('添加管理员失败')</script>");
                return;
            }
        }
    }
}