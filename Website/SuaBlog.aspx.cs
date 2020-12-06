using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website
{
    public partial class SuaBlog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loaddata();
            }

        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {

            string mblog = Request.QueryString["MaBlog"].ToString();
            DateTime datetime = DateTime.Now;
            string ngaycapnhat = datetime.ToString("MM/dd/yyyy");

            string tieude = tbTieuDe.Text;
            string nd = tbND.Text;
            string ngdang = tbNguoiDang.Text;
            int slx = int.Parse(tbSoLanXem.Text);
            string savePath = MapPath("~/Anh/Blog/");
            if (FileUpload1.HasFile)
            {

                savePath += FileUpload1.FileName;

                FileUpload1.SaveAs(savePath);
                

                lbThongBao.Text = "Upload ảnh thành công.";


            }
            else
            {

                lbThongBao.Text = "Ảnh chưa được upload.";
            }
            string ha = FileUpload1.FileName;
            
            string tbnd= tbTTND.Text;
            string sql = "update Blog set hinhanh=N'"+ha+"',Tieude=N'"+tieude+"',TTND=N'"+tbnd+"',NoiDung=N'"+nd+"',SoLanXem="+slx+",NgayDang='"+ngaycapnhat+"',NguoiDang=N'"+ngdang+"' where MaBlog=" + mblog;
            XLDL.Excute(sql);

            Response.Redirect("DanhSachBlog.Aspx");
        }
        private void loaddata()
        {
            if (Request.QueryString["MaBlog"] != null)
            {

                string MaBlog = Request.QueryString["MaBlog"].ToString();

                string sql = "SELECT [MaBlog], [HinhAnh], [TieuDe], [TTND], [NoiDung], [SoLanXem], [NgayDang], [NguoiDang] FROM [Blog] Where MaBlog=" + MaBlog;

                DataTable dt = XLDL.GetData(sql);
                tbMaBlog.Text = dt.Rows[0]["MaBlog"].ToString();
                tbTieuDe.Text = dt.Rows[0]["TieuDe"].ToString();
                tbND.Text = dt.Rows[0]["NoiDung"].ToString();
                tbNguoiDang.Text = dt.Rows[0]["NguoiDang"].ToString();
                tbSoLanXem.Text = dt.Rows[0]["SoLanXem"].ToString();

                string filename = dt.Rows[0]["HinhAnh"].ToString();

                tbTTND.Text = dt.Rows[0]["TTND"].ToString();


                





            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
                
            }
       
        
    }
}