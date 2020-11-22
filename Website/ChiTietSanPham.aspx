<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="Website.ChiTietSanPham" %>
<%@ Register src="ChiTietSanPham.ascx" tagname="ChiTietSanPham" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <uc1:ChiTietSanPham ID="ChiTietSanPham1" runat="server" />
</asp:Content>
