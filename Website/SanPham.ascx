<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SanPham.ascx.cs" Inherits="Website.SanPham" %>

<style type="text/css">
    .auto-style3 {
        width: 100%;
        height: 166px;
        margin-right: 10px;
    }
    .auto-style5 {
        color: #000000;
        
    }
    
    
    .auto-style7 {
        width: 67px;
    }
    .auto-style10 {
        text-align: center;
    }
    
    
    </style>

<asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Both" Width="240px" RepeatColumns="4" OnItemCommand="DataList1_ItemCommand">
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <ItemStyle ForeColor="#000066" />
    <ItemTemplate>
        <table class="auto-style3">
            <tr>
                <td class="auto-style7" rowspan="3">
                    <asp:Image ID="Image1" runat="server" Height="136px" ImageUrl='<%# "~/Anh/CayCanh/"+Eval("TenLoaiSP") +"/"+Eval("HinhAnh") %>' Width="100px" />
                </td>
                <td>&nbsp;<strong><asp:HyperLink ID="MaSP" runat="server" NavigateUrl='<%# "~/GioHang.aspx?MaSP="+Eval("MaSP") %>' Text='<%# Eval("MaSP") %>' Visible="False"></asp:HyperLink>
&nbsp;</strong><asp:HyperLink ID="TenSP" runat="server" Text='<%# Eval("TenSP") %>' NavigateUrl='<%# Eval("MaSP", "ChiTietSanPham.aspx?MaSP={0}") %>' CssClass="tenSP" Width="139px"></asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>&nbsp; <span class="auto-style5"><strong>Giá:</strong></span>
                    <asp:Label ID="GiaSP" runat="server" Text='<%# Eval("TienSP") %>' CssClass="auto-style5"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="btnDatMua" runat="server" CssClass="btnDat" Text="Đặt Mua" CommandName="DatMua"/>
                </td>
            </tr>
        </table>
        <br />
    </ItemTemplate>
    <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebBanCayCanhConnectionString %>" SelectCommand="SELECT LOAISANPHAM.TenLoaiSP, SANPHAM.TenSP, SANPHAM.HinhAnh, SANPHAM.TienSP, SANPHAM.MaSP, LOAISANPHAM.MaLoaiSP FROM LOAISANPHAM INNER JOIN SANPHAM ON LOAISANPHAM.MaLoaiSP = SANPHAM.MaLoaiSP"></asp:SqlDataSource>

