using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website
{
    public partial class ThemBlog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            try
            {

                
                string TieuDe = tbTieuDe.Text;
                string NoiDung = tbND.Text;

                string TTND = tbTTND.Text;
                string HinhAnh = FileUpload1.FileName;

                string NguoiDang = tbNguoiDang.Text;
                DateTime datetime = DateTime.Now;
                string Ngay = datetime.ToString("MM/dd/yyyy");

                string str = "insert into Blog values (N'" + HinhAnh + "',N'" + TieuDe + "',N'" + TTND + "',N'" + NoiDung + "',0,'" + Ngay + "',N'" + NguoiDang + "')";
                XLDL.Excute(str);
                Response.Write("<script>alert('Them thanh cong !!!');</script>");
                Response.Redirect("DanhSachBlog.aspx");
            }
            catch
            {
                Response.Write("<script>alert('Them That Bai !!!');</script>");
            }
        }
    }
}