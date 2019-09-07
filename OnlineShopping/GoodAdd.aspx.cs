using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

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
            if(!imgUpdate())
            {
                Response.Write("<script>alert('上传失败，请检查文件类型和网络')</script>");
                return;
            }
            if (DBHelper.Update("insert into Goods (gid,GoodName,GoodPrice,Category,GoodNum,GoodPic,GoodShow,GoodTime)" +
                " values(" + Convert.ToInt32(txtgid.Text) + ",'" + txtGoodName.Text + "'," + Convert.ToSingle(txtGoodPrice.Text) + ",'" + ddlCategory.SelectedIndex.ToString() + "'," + Convert.ToInt32(txtGoodNum.Text) + ",'" + fuploadGoodPic.FileName + "','" + txtGoodShow.Text + "','" + DateTime.Now.ToString() + "')"))
            {
                Response.Write("<script>alert('添加商品成功');window.location.href='GoodAdd.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('添加商品失败')</script>");
            }
        }

        protected bool imgUpdate()
        {
            string name = fuploadGoodPic.FileName;   //上传文件名
            string size = fuploadGoodPic.PostedFile.ContentLength.ToString();   //文件大小（字节）
            string type = fuploadGoodPic.PostedFile.ContentType;   //获取上传文件的MIME内容类型
            string type1 = name.Substring(name.LastIndexOf(".") + 1);  //name.LastIndexOf(".")索引name中"."的位置+1，就是后缀名的index
            string ipath = Server.MapPath("Images") + "\\" + name;
            if (type1 == "jpg" || type1 == "gif" || type1 == "bmp" || type1 == "png")
            {
                try
                {
                    fuploadGoodPic.SaveAs(ipath);
                    return true;//上传成功
                }
                catch(Exception ex)
                {
                    return false;//上传出现异常
                }
            }
            else
            {
                return false;//文件类型不正确
            }
        }
    }
}