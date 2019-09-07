using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace OnlineShopping
{
    public partial class GoodEdit : System.Web.UI.Page
    {
        static string gid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                gid = Request["gid"] as string;
                DataSet ds = DBHelper.Select("select * from Goods where gid=" + gid);
                txtgid.Text = ds.Tables[0].Rows[0][0].ToString();
                txtGoodName.Text= ds.Tables[0].Rows[0][2].ToString();
                txtGoodPrice.Text = ds.Tables[0].Rows[0][3].ToString();
                ddlCategory.SelectedIndex = Convert.ToInt32(ds.Tables[0].Rows[0][4]);
                txtGoodNum.Text = ds.Tables[0].Rows[0][5].ToString();
                txtGoodShow.Text = ds.Tables[0].Rows[0][7].ToString();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtGoodName.Text == "")
            {
                Response.Write("<script>alert('请输入商品名称')</script>");
                return;
            }
            if (txtGoodPrice.Text == "")
            {
                Response.Write("<script>alert('请输入商品价格')</script>");
                return;
            }
            else
            {
                try
                {
                    Convert.ToSingle(txtGoodPrice.Text);
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('商品价格格式错误')</script>");
                    return;
                }
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
            else
            {
                try
                {
                    Convert.ToInt32(txtGoodNum.Text);
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('商品数量格式错误')</script>");
                    return;
                }
            }
            if (txtGoodShow.Text == "")
            {
                Response.Write("<script>alert('请输入商品介绍')</script>");
                return;
            }
            if (!fuploadGoodPic.HasFile)//不上传图片
            {
                if (DBHelper.Update("update Goods set GoodName='"+txtGoodName.Text+"',GoodPrice="+Convert.ToSingle(txtGoodPrice.Text)+",Category='"+ddlCategory.SelectedValue+"',GoodNum="+Convert.ToInt32(txtGoodNum.Text)+",GoodShow='"+txtGoodShow.Text+"' where gid=" + gid))
                {
                    Response.Write("<script>alert('修改商品成功');window.location.href='GoodManager.aspx'</script>");
                }
                else
                {
                    Response.Write("<script>alert('修改商品失败')</script>");
                }
            }
            else//上传图片
            {
                if (!imgUpdate())
                {
                    Response.Write("<script>alert('上传失败，请检查文件类型和网络')</script>");
                    return;
                }
                if (DBHelper.Update("update Goods set GoodName='" + txtGoodName.Text + "',GoodPrice=" + Convert.ToSingle(txtGoodPrice.Text) + ",Category='" + ddlCategory.SelectedValue + "',GoodNum=" + Convert.ToInt32(txtGoodNum.Text) + ",GoodPic='"+fuploadGoodPic.FileName+"',GoodShow='" + txtGoodShow.Text + "' where gid=" + gid))
                {
                    Response.Write("<script>alert('修改商品成功');window.location.href='GoodManager.aspx'</script>");
                }
                else
                {
                    Response.Write("<script>alert('修改商品失败')</script>");
                }
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
                catch (Exception ex)
                {
                    return false;//上传出现异常
                }
            }
            else
            {
                return false;//文件类型不正确
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.location.href='GoodManager.aspx'</script>");
        }
    }
}