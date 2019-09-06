using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace OnlineShopping
{
    public partial class Index : System.Web.UI.Page
    {
        public int goodid = 1;
        public int nowPage = 1;
        public DataTable dt;
        public int totalPage;
        protected void Page_Load(object sender, EventArgs e)
        {
            totalPage = Convert.ToInt32(DBHelper.Select("select count(*) from Goods").Tables[0].Rows[0][0].ToString());

            if (IsPostBack)
            {               //不是首次访问
                dt = DBHelper.Select("select top 6 * from Goods where id not in(select top 6*"+(nowPage-1)+" id from Goods);").Tables[0];
            }
            else
            {               //首次访问
                dt = DBHelper.Select("select top 6 * from Goods;").Tables[0];
                goodid = 0;
            }
        }
    }
}