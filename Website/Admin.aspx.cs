using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = XLDL.GetData("Select * from ADMIN where TaiKhoan='" + tbTK.Text + "' and MatKhau='" + tbMK.Text + "'");
                if (dt.Rows.Count > 0)
                {
                    Session["TenDN"] = tbTK.Text;
                    Response.Redirect("~/QuanTri.aspx");
                }
                else Response.Write("<script>alert('Tên đăng nhập hoac75 mật khẩu không chính xác');</script>");
            }
            catch
            {
                Response.Write("<script>alert('Đăng Nhập Thất Bại');</script>");
            }
           
        }
    }
}