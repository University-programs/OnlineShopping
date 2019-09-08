using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
namespace OnlineShopping
{
    /// <summary>
    /// GoodCarEdit 的摘要说明
    /// </summary>
    public class GoodCarEdit : IHttpHandler, IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            if (context.Request["fun"].ToString()=="1")
            {
                DBHelper.Update("delete from ShopCar where cid='" + context.Request["cid"] + "'");
                context.Response.Redirect("GoodCar.aspx");
            }
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