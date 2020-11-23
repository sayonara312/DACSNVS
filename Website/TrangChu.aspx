<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="Website.TrangChu" %>
<%@ Register src="SanPham.ascx" tagname="SanPham" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <div class="sphot">
        <div class="Danhsachsp">
            Sản phẩm bán chạy</div>

        
        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="6">
            
            <ItemTemplate>
                <table class="auto-style3">
                    <tr>
                        <td style="text-align: center">
                            <a href="<%# Eval("MaSP", "ChiTietSanPham.aspx?MaSP={0}") %>"><asp:Image ID="Image1" runat="server" Height="267px" ImageUrl='<%# "~/Anh/CayCanh/"+Eval("TenLoaiSP") +"/"+Eval("HinhAnh") %>' Width="244px" CssClass="anh" /></a>
                            &nbsp;<br /><strong>
                            <asp:HyperLink ID="MaSP" runat="server" NavigateUrl='<%# "~/GioHang.aspx?MaSP="+Eval("MaSP") %>' Text='<%# Eval("MaSP") %>' Visible="False"></asp:HyperLink>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center"><strong>
                            <asp:HyperLink ID="TenSP" runat="server" CssClass="tenSP" NavigateUrl='<%# Eval("MaSP", "ChiTietSanPham.aspx?MaSP={0}") %>' Text='<%# Eval("TenSP") %>' Width="139px"></asp:HyperLink>
                            </strong></td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="Label1" runat="server" style="color: #FF0000" Text='<%# Eval("TienSP") %> '> </asp:Label>
                            <span style="color: #FF0000">VNĐ</span><br /></td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
            
        </asp:DataList>
            
            
    </div>
        <div class="Danhsachsp">
            Danh sách sản phẩm</div>
    
    <uc1:SanPham ID="SanPham1" runat="server" />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebBanCayCanhConnectionString %>" SelectCommand="SELECT LOAISANPHAM.TenLoaiSP, SANPHAM.TenSP, LOAISANPHAM.MaLoaiSP, SANPHAM.MaSP, SANPHAM.HinhAnh, SANPHAM.TienSP FROM LOAISANPHAM INNER JOIN SANPHAM ON LOAISANPHAM.MaLoaiSP = SANPHAM.MaLoaiSP"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebBanCayCanhConnectionString %>" SelectCommand="SELECT TOP (4) LOAISANPHAM.TenLoaiSP, SANPHAM.TenSP, SANPHAM.HinhAnh, SANPHAM.TienSP, SANPHAM.MaSP, LOAISANPHAM.MaLoaiSP, SANPHAM.SoLuongBan FROM LOAISANPHAM INNER JOIN SANPHAM ON LOAISANPHAM.MaLoaiSP = SANPHAM.MaLoaiSP ORDER BY SANPHAM.SoLuongBan desc"></asp:SqlDataSource>
        </asp:Content>
