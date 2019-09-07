using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShopping
{
    public partial class GoodDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string gid = Request["gid"] as string;
            if (DBHelper.Update("delete from Goods where gid=" + gid))
            {
                Response.Write("<script>alert('删除成功');window.location.href='GoodManager.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('删除失败');window.location.href='GoodManager.aspx'</script>");
            }
        }
    }
}