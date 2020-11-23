<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="TheLoaiSanPham.aspx.cs" Inherits="Website.TheLoaiSanPham" %>
<%@ Register src="SanPham.ascx" tagname="SanPham" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <div class="Danhsachsp">
            <asp:DataList ID="DataList2" runat="server" DataKeyField="MaLoaiSP" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    &nbsp;<asp:Label ID="TenLoaiSPLabel" runat="server" Text='<%# Eval("TenLoaiSP") %>' />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebBanCayCanhConnectionString %>" SelectCommand="SELECT * FROM [LOAISANPHAM] WHERE ([MaLoaiSP] = @MaLoaiSP)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="MaLoaiSP" QueryStringField="MaLoaiSP" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="4" Width="332px">
        
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <ItemStyle BackColor="White" ForeColor="#330099" />
        <ItemTemplate>
            <table style="width:255px; height: 166px;">
                <tr>
                    <td rowspan="3">
                        <asp:Image ID="Image1" runat="server" Height="139px" ImageUrl='<%# "~/Anh/CayCanh/"+Eval("TenLoaiSP") +"/"+Eval("HinhAnh") %>' Width="100px" CssClass="anh" />
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="tenSP" NavigateUrl='<%# Eval("MaSP","ChiTietSanPham.aspx?MaSP={0}") %>' Text='<%# Eval("TenSP") %>'></asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td><strong>Giá:</strong><asp:Label ID="TienSPLabel" runat="server" Text='<%# Eval("TienSP") %>' style="color: #FF0000" />
                        <span style="color: #FF0000">VNĐ</span></td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btnDat" Font-Underline="false" NavigateUrl='<%# "~/GioHang.aspx?MSP="+Eval("MaSP") %>'>Đặt Mua</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    </asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebBanCayCanhConnectionString %>" SelectCommand="SELECT LOAISANPHAM.TenLoaiSP, SANPHAM.TenSP, SANPHAM.HinhAnh, SANPHAM.TienSP, SANPHAM.MaSP, LOAISANPHAM.MaLoaiSP FROM LOAISANPHAM INNER JOIN SANPHAM ON LOAISANPHAM.MaLoaiSP = SANPHAM.MaLoaiSP WHERE (LOAISANPHAM.MaLoaiSP = @MaLoaiSP)">
    <SelectParameters>
        <asp:QueryStringParameter Name="MaLoaiSP" QueryStringField="MaLoaiSP" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
