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
    public partial class GoodsInfo : System.Web.UI.Page
    {
        public DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            string gid = Request["gid"].ToString();

            dt = DBHelper.Select("select * from Goods where GoodId=" + gid).Tables[0];
        }
    }
}