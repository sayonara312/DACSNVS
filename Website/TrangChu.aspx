<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="Website.TrangChu" %>
<%@ Register src="SanPham.ascx" tagname="SanPham" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
        <div class="Danhsachsp">
            Danh sách sản phẩm</div>
    
    <uc1:SanPham ID="SanPham1" runat="server" />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebBanCayCanhConnectionString %>" SelectCommand="SELECT LOAISANPHAM.TenLoaiSP, SANPHAM.TenSP, LOAISANPHAM.MaLoaiSP, SANPHAM.MaSP, SANPHAM.HinhAnh, SANPHAM.TienSP FROM LOAISANPHAM INNER JOIN SANPHAM ON LOAISANPHAM.MaLoaiSP = SANPHAM.MaLoaiSP"></asp:SqlDataSource>
    </asp:Content>
