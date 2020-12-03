using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website
{
    public partial class SuaSP : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loaddata();
            }
        
        
            




        }
        private void loaddata()
        {
            if (Request.QueryString["Ma"] != null)
            {

                string MaSP = Request.QueryString["Ma"].ToString();

                string sql = "SELECT [MaSP], [TenSP], [TienSP], [NhaCC], [Mota], [NgayCapNhat], [HinhAnh], [MaLoaiSP], [SoLuongSP], [SoLuongBan], [SoLanXem] FROM [SANPHAM] Where MaSP='" + MaSP + "'";

                DataTable dt = XLDL.GetData(sql);
                tbMaSP.Text = dt.Rows[0]["MaSP"].ToString();
                tbTenSP.Text = dt.Rows[0]["TenSP"].ToString();
                tbDonGia.Text = dt.Rows[0]["TienSP"].ToString();
                tbNCC.Text = dt.Rows[0]["NhaCC"].ToString();
                tbMoTa.Text = dt.Rows[0]["MoTa"].ToString();



                string filename = dt.Rows[0]["HinhAnh"].ToString();




                lbNgayCapNhat.Text = dt.Rows[0]["NgayCapNhat"].ToString();

                tbSoLuong.Text = dt.Rows[0]["SoLuongSP"].ToString();
                tbSoLuongBan.Text = dt.Rows[0]["SoLuongBan"].ToString();
                tbSoLanXem.Text = dt.Rows[0]["SoLanXem"].ToString();

                string maloaisp = dt.Rows[0]["MaLoaiSP"].ToString();


                DataTable dt2 = XLDL.GetData("Select MaLoaiSP,TenLoaiSP from LOAISANPHAM");
                if (dt2.Rows.Count > 0)
                {


                    for (int i = 0; i < dt2.Rows.Count; i++)
                    {
                        rdlMaLoaiSP.Items.Add("i");

                        rdlMaLoaiSP.Items[i].Text = dt2.Rows[i][0] + " : " + dt2.Rows[i][1].ToString();
                        rdlMaLoaiSP.Items[i].Value = dt2.Rows[i][0].ToString();



                    }
                    rdlMaLoaiSP.SelectedValue = maloaisp;

                }





            }
        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    string filename = Path.GetFileName(FileUpload1.FileName);
                    FileUpload1.SaveAs(Server.MapPath("~/") + filename);
                   
                    lbUpload.Text = "Đã Upload File!!!";
                    
                }
                catch (Exception ex)
                {
                    lbUpload.Text = "File Chưa được upload!!! " + ex.Message;
                }
            }
        }

        protected void btnCapNhat_Click(object sender, EventArgs e)
        {

            try
            {
                string malsp = rdlMaLoaiSP.SelectedValue.ToString();
                string msp = Request.QueryString["Ma"].ToString();
                string ngaycapnhat = Calendar1.SelectedDate.ToShortDateString();
                string slb = tbSoLuongBan.Text;
                string slx = tbSoLanXem.Text;
                string tensp = tbTenSP.Text;
                string ncc = tbNCC.Text;
                string sl = tbSoLuong.Text;
                string mt = tbMoTa.Text;
                int dg = int.Parse(tbDonGia.Text);
                string sql = "update SanPham set MaLoaiSP='" + malsp + "',TenSP=N'" + tensp + "',SoLuongSP=" +sl + ",NhaCC=N'" + ncc + "',TienSP=" + dg + ",SoLuongBan=" +slb + ",SoLanXem=" + slx + ",Mota=N'" + mt + "' where MaSP='"+msp+"'";
                XLDL.Excute(sql);
                
                Response.Redirect("QuanTri.Aspx");
            }
              catch
            {
                Response.Write("<script>alert('Cập Nhật Thất Bai !!!');</script>");
            }
               
            
            
           
            
        }
    }
}