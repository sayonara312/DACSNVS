using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website
{
    public partial class ThemSP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataTable dt = XLDL.GetData("Select MaLoaiSP,TenLoaiSP from LOAISANPHAM");
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        rdLSP.Items.Add("i");
                        rdLSP.Items[i].Text = dt.Rows[i][1].ToString();
                        rdLSP.Items[i].Value = dt.Rows[i][0].ToString();
                    }
                }
            }
            
        }

        protected void rdLSP_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            try
            {
                string MaSP = tbMaSP.Text;
                string TenSP = tbTenSP.Text;
                string LoaiSP = rdLSP.SelectedValue.ToString();
                int TienSP = int.Parse(tbDonGia.Text);
                string NCC = tbNCC.Text;
                
                string mota;
                mota = MoTa.Value;
                string HinhAnh = fuAnh.ToString();
                
                string Ngay = NgayCapNhat.SelectedDate.ToString();
                int SL = int.Parse(tbSoLuong.Text);
                int SLX = int.Parse(tbSoLanXem.Text);
                string str = "insert into SanPham values ("+"'" +MaSP +"','" + LoaiSP + "',N'" + TenSP + "',"+SL + ",'"+HinhAnh + "',N'"+NCC+ "',"+TienSP+ ",'"+Ngay+ "',1,"+SLX+ ",N'"+mota+"'"+")";
                XLDL.Excute(str);
                Response.Write("<script>alert('Them thanh cong !!!');</script>");
                Response.Redirect("QuanTri.aspx");
            }
            catch
            {
                Response.Write("<script>alert('Them That Bai !!!');</script>");
            }


        }

        protected void NgayCapNhat_SelectionChanged(object sender, EventArgs e)
        {
            
            
        }
    }
    }
