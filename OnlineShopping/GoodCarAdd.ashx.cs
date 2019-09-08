using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Data;
using System.Data.SqlClient;

namespace OnlineShopping
{
    /// <summary>
    /// GoodCarAdd 的摘要说明
    /// </summary>
    public class GoodCarAdd : IHttpHandler,IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string uid = string.Empty;
            if (context.Session["uid"]==null)
            {
                context.Response.Redirect("UserLogin.aspx");
            }
            uid = context.Session["uid"].ToString();
            string gid = context.Request["gid"].ToString();
            DataSet ds = DBHelper.Select("select GoodId from ShopCar where UserId=" + uid);
            if (ds.Tables[0].Rows.Count<1)
            {
                bool isc = DBHelper.Update("insert into ShopCar values('" + uid + "','" + gid + "',1)");
            }
            else
            {
                bool ishave = false;// 车中是否已经有这个商品
                foreach (DataRow item in ds.Tables[0].Rows)
                {
                    if (item[0].ToString()==gid)
                    {
                        ishave = true;
                    }
                }
                if (ishave)
                {
                    int num = Convert.ToInt32(DBHelper.Select("select GoodNum from ShopCar where UserId='" + uid + "' and GoodId='" + gid + "'").Tables[0].Rows[0][0].ToString());
                    ++num;
                    DBHelper.Update("update ShopCar set GoodNum='" + num + "' where UserId='" + uid + "' and GoodId='" + gid + "'");
                }
                else
                {
                    DBHelper.Update("insert into ShopCar values('" + uid + "','" + gid + "',1)");
                }
            }
            context.Response.Redirect("GoodCar.aspx");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}