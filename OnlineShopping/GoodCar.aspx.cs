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
    public partial class GoodCar : System.Web.UI.Page
    {
        public DataTable dt;
        public DataTable gdt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"]==null)
            {
                Response.Redirect("UserLogin.aspx");
            }
            dt = DBHelper.Select("select * from ShopCar where UserId='" + Session["uid"] + "'").Tables[0];
            string gids = string.Empty;
            for (int i=0;i<dt.Rows.Count;i++)
            {
                gids += dt.Rows[i][2].ToString();
                if (i!=dt.Rows.Count-1)
                {
                    gids += ",";
                }
            }
            gdt = DBHelper.Select("select * from Goods where GoodId in(" + gids + ")").Tables[0];
        }
    }
}