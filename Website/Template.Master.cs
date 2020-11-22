using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Website
{
    public partial class Template : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Giohang"] != null)
            {
                DataTable dt = new DataTable();
                dt = (DataTable)Session["GioHang"];
                System.Decimal tongThanhTien = 0;
                foreach (DataRow r in dt.Rows)
                {
                    r["Thanhtien"] = Convert.ToInt32(r["SoLuong"])
                   * Convert.ToDecimal(r["Dongia"]);
                    tongThanhTien +=
                   Convert.ToDecimal(r["Thanhtien"]);
                    lbTongThanhTien.Text = " | " +tongThanhTien.ToString();
                }
            }
        }
       
    }
}