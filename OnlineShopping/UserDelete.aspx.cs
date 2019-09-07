using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShopping
{
    public partial class UserDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string uid = Request["uid"] as string;
            if(DBHelper.Update("delete from Users where uid="+uid))
            {
                Response.Write("<script>alert('删除成功');window.location.href='UserManager.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('删除失败');window.location.href='UserManager.aspx'</script>");
            }
        }
    }
}