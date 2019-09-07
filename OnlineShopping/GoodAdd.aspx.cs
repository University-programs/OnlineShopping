using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShopping
{
    public partial class GoodAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                txtgid.Text = (Convert.ToInt32(DBHelper.Select("select max(gid) from Goods").Tables[0].Rows[0][0])+1).ToString();

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(txtGoodName.Text=="")
            {
                Response.Write("<script>alert('请输入商品名称')</script>");
                return;
            }
            if (txtGoodPrice.Text == "")
            {
                Response.Write("<script>alert('请输入商品价格')</script>");
                return;
            }
            if (ddlCategory.Text == "请选择商品类别")
            {
                Response.Write("<script>alert('请选择商品类别')</script>");
                return;
            }
            if (txtGoodNum.Text == "")
            {
                Response.Write("<script>alert('请输入商品数量')</script>");
                return;
            }
            if(!fuploadGoodPic.HasFile)
            {
                Response.Write("<script>alert('请上传商品图片')</script>");
                return;
            }
            if (txtGoodShow.Text == "")
            {
                Response.Write("<script>alert('请输入商品介绍')</script>");
                return;
            }
            if (DBHelper.Update("insert into Goods (gid,GoodName,GoodPrice,Category,GoodNum,GoodPic,GoodShow,GoodTime)" +
                " values(" + Convert.ToInt32(txtgid.Text) + ",'" + txtGoodName.Text + "'," + Convert.ToSingle(txtGoodPrice.Text) + ",'" + ddlCategory.SelectedIndex.ToString() + "'," + Convert.ToInt32(txtGoodNum.Text) + ",'" + fuploadGoodPic.FileName + "','" + txtGoodShow.Text + "','" + DateTime.Now.ToString() + "')"))
            {
                Response.Write("<script>alert('添加商品成功')</script>");
            }
            else
            {
                Response.Write("<script>alert('添加商品失败')</script>");
            }
        }
    }
}