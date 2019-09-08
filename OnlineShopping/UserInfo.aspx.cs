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
    public partial class UserInfo : System.Web.UI.Page
    {
        static DataSet ds = new DataSet();
        static string uid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                uid = Session["uid"] as string;
                if (string.IsNullOrEmpty(uid))
                {
                    Response.Redirect("UserLogin.aspx");
                }
                ds = DBHelper.Select("select * from Users where uid=" + uid);
                txtUserName.Text = ds.Tables[0].Rows[0][1].ToString();
                txtNickName.Text = ds.Tables[0].Rows[0][2].ToString();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtNickName.Text == "")
            {
                Response.Write("<script>alert('请输入昵称')</script>");
                return;
            }
            if (txtOldUserPassword.Text == "" && txtNewUserPassword.Text == "" && txtEnterUserPassword.Text == "")
            {//没有输入密码
                if (DBHelper.Update("update Users set NickName='" + txtNickName.Text + "' where uid=" + uid))
                {
                    Response.Write("<script>alert('提交成功');window.location.href='UserManager.aspx'</script>");
                }
            }
            else//输入密码
            {
                if (txtOldUserPassword.Text == "")
                {
                    Response.Write("<script>alert('请输入原密码')</script>");
                    return;
                }
                if (txtNewUserPassword.Text == "")
                {
                    Response.Write("<script>alert('请输入新密码')</script>");
                    return;
                }
                if (txtEnterUserPassword.Text == "")
                {
                    Response.Write("<script>alert('请确认新密码')</script>");
                    return;
                }
                if (txtOldUserPassword.Text != ds.Tables[0].Rows[0][3].ToString())
                {
                    Response.Write("<script>alert('原密码不正确')</script>");
                    return;
                }
                if (txtNewUserPassword.Text != txtEnterUserPassword.Text)
                {
                    Response.Write("<script>alert('两次密码不一致')</script>");
                    return;
                }
                if (DBHelper.Update("update Users set NickName='" + txtNickName.Text + "',UserPassword='" + txtNewUserPassword.Text + "' where uid=" + uid))
                {
                    Response.Write("<script>alert('提交成功');window.location.href='Index.aspx'</script>");
                }

            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.location.href='Index.aspx'</script>");
        }
    }
}