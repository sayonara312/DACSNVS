using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website
{
    public partial class ChiTietSanPham : System.Web.UI.Page
    {
        static PagedDataSource p = new PagedDataSource();
        public static int intSTT;
        public static int trangthu = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                trangthu = 0;

                load_data();
            }
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            if (tbTenNgBL.Text == "" || tbNoiDung.Text == "")
            {
                lbThongBao.Text = "Bạn chưa nhập tên hoặc nội dung!!!";
            }
            else
            {
                string sql = "Select MaBL,MaSP,NguoiBL,NoiDungBL from BinhLuanSP";
                DataTable dt = XLDL.GetData(sql);
                string mablog = Request.QueryString["MaSP"].ToString();
                string ten = tbTenNgBL.Text;
                string nd = tbNoiDung.Text;
                DateTime dateTime = DateTime.Now;
                string ngay = dateTime.ToString("dd/MM/yyyy HH:mm:ss");
                string sql1 = "Insert into BinhLuanSP values ('" + mablog + "',N'" + ten + "','" + ngay + "',N'" + nd + "')";
                XLDL.Excute(sql1);
                Response.Redirect("~/ChiTietSanPham.aspx?MaSP='" + mablog+"'");
            }












        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            trangthu = 0;
            load_data();
        }

        public void load_data()
        {

            
                string mablog = Request.QueryString["MaSP"].ToString();
                string sql = "select  MaBL,MaSP,NguoiBL,NgayBL,NoiDungBL from BinhLuanSP where MaSP='" + mablog + "' order by NgayBL desc";


                p.DataSource = XLDL.GetData(sql).DefaultView;

                p.PageSize = 5;

                p.CurrentPageIndex = trangthu;

                p.AllowPaging = true;


                btnDau.Enabled = true;
                btnTruoc.Enabled = true;
                btnSau.Enabled = true;
                btnCuoi.Enabled = true;


                if (p.IsFirstPage == true)

                {

                    btnDau.Enabled = false;
                    btnTruoc.Enabled = false;
                    btnSau.Enabled = true;
                    btnCuoi.Enabled = true;

                }


                if (p.IsLastPage == true)

                {

                    btnDau.Enabled = true;
                    btnTruoc.Enabled = true;
                    btnSau.Enabled = false;
                    btnCuoi.Enabled = false;



                }
                if (p.PageCount == 1)
                {
                    btnDau.Visible = false;
                    btnTruoc.Visible = false;
                    btnSau.Visible = false;
                    btnCuoi.Visible = false;
                    tbTrang.Visible = false;
                }

                tbTrang.Text = (trangthu + 1) + " / " + p.PageCount;


                DataList4.DataSource = p;

                DataList4.DataBind();
            
            





        }

        protected void btnTruoc_Click(object sender, EventArgs e)
        {
            if (p.CurrentPageIndex > 0)
            {
                trangthu--;
                load_data();
            }

        }

        protected void btnSau_Click(object sender, EventArgs e)
        {
            trangthu++;
            load_data();

        }

        protected void btnCuoi_Click(object sender, EventArgs e)
        {
            if (p.CurrentPageIndex >= 0)
            {
                trangthu = p.PageCount - 1;
                load_data();
            }



        }
    }
}