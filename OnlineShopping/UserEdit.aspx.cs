using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace OnlineShopping
{
    public partial class UserEdit : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string uid = Request["uid"] as string;
                ds = DBHelper.Select("select * from Users");
                txtUserName.Text = ds.Tables[0].Rows[0][1].ToString();
                txtNickName.Text = ds.Tables[0].Rows[0][2].ToString();
            }
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(txtNickName.Text=="")
            {
                Response.Write("<script>alert('请输入昵称')</script>");
                return;
            }
        }
    }
}