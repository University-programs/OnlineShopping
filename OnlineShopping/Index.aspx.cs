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
        public string appendSql = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            totalPage = Convert.ToInt32(DBHelper.Select("select count(*) from Goods").Tables[0].Rows[0][0].ToString());
            if (totalPage%6!=0)
            {
                totalPage = totalPage / 6 + 1;
            }
            else
            {
                totalPage = totalPage / 6;
            }

            #region 配置联查SQL

            string selectVal = rdobtn.SelectedValue;
            switch (selectVal)
            {
                case "0":appendSql = "";
                    break;
                case "1":appendSql = " and Category='1' ";
                    break;
                case "2":
                    appendSql = " and Category='2' ";
                    break;
                case "3":
                    appendSql = " and Category='3' ";
                    break;
                case "4":
                    appendSql = " and Category='4' ";
                    break;
                default:
                    break;
            }
            if (!string.IsNullOrEmpty(txtSerch.Text.Trim()))
            {
                appendSql += " and GoodName like '%" + txtSerch.Text.Trim() + "%' ";
            }

            #endregion

            int count = Convert.ToInt32(DBHelper.Select("select count(*) from Goods where 1=1 " + appendSql).Tables[0].Rows[0][0].ToString());
            if (count%6==0)
            {
                count = count / 6;
            }
            else
            {
                count = count / 6;
                count++;
            }
            if (count != totalPage)
            {
                totalPage = count;
            }
            if (totalPage == 0)
            {
                totalPage++;
            }
            if (Request["page"]!=null)
            {               //不是首次访问
                nowPage = Convert.ToInt32(Request["page"].ToString());
                if (nowPage<1)
                {
                    dt = DBHelper.Select("select top 6 * from Goods where 1=1 "+appendSql+";").Tables[0];
                    nowPage = 1;
                    goodid = 0;
                    return;
                }
                else if(nowPage>totalPage)
                {
                    dt = DBHelper.Select("select top 6 * from Goods where gid not in(select top " + 6 * (totalPage - 1) + " gid from Goods) "+appendSql+";").Tables[0];
                    nowPage = totalPage;
                    goodid = 0;
                    return;
                }
                dt = DBHelper.Select("select top 6 * from Goods where gid not  in(select top " + 6 * (nowPage - 1) + " gid from Goods) "+appendSql+";").Tables[0];
            }
            else
            {               //首次访问
                dt = DBHelper.Select("select top 6 * from Goods where 1=1 "+appendSql+";").Tables[0];
            }
            goodid = 0;
        }

        
    }
}