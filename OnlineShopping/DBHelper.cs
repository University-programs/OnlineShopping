using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Text;
using System.Xml;
using System.Collections;
using System.Security.Cryptography;
using System.Threading;
using System.Drawing;
using System.Data.SqlClient;
namespace OnlineShopping
{
    public static class DBHelper
    {
        //
        private static string conStr = @"Data Source=iZ2op1nnd1x7lwZ\SQLEXPRESS;Initial Catalog=OnlineShopping;User ID=sa;Password=woaini17899589AI;Trusted_Connection = False;";

        //查询函数 第一个参数sql语句，
        public static DataSet Select(string sql)
        {
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(conStr))
            {
                using (SqlCommand com = new SqlCommand(sql, con))
                {
                    con.Open();
                    SqlDataAdapter sda = new SqlDataAdapter(com);

                    sda.Fill(ds);

                    con.Close();
                }
            }
            return ds;
        }

        //修改函数
        public static bool Update(string sql)
        {
            bool flag = false;//标记是否更新成功
            using (SqlConnection con = new SqlConnection(conStr))
            {
                using (SqlCommand com = new SqlCommand(sql, con))
                {
                    con.Open();
                    if (com.ExecuteNonQuery() > 0)
                    {
                        flag = true;
                    }
                    con.Close();
                }
            }
            return flag;
        }

    }
}
