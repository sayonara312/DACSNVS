<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChiTietSanPham.ascx.cs" Inherits="Website.ChiTietSanPham1" %>
<style type="text/css">


    .auto-style1 {
        width: 143px;
    }
    .auto-style2 {
        height: 23px;
    }
</style>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebBanCayCanhConnectionString %>" SelectCommand="SELECT SANPHAM.MaSP, SANPHAM.MaLoaiSP, SANPHAM.TenSP, SANPHAM.SoLuongSP, SANPHAM.HinhAnh, SANPHAM.NhaCC, SANPHAM.TienSP, SANPHAM.Mota, LOAISANPHAM.TenLoaiSP FROM SANPHAM INNER JOIN LOAISANPHAM ON SANPHAM.MaLoaiSP = LOAISANPHAM.MaLoaiSP WHERE (SANPHAM.MaSP = @MaSP)">
    <SelectParameters>
        <asp:QueryStringParameter Name="MaSP" QueryStringField="MaSP" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" DataKeyField="MaSP">
    <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <ItemTemplate>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1" rowspan="3">&nbsp;<asp:Image ID="Image1" runat="server" Height="168px" ImageUrl='<%# "~/Anh/CayCanh/"+Eval("TenLoaiSP")+"/"+Eval("HinhAnh") %>' Width="116px" />
                </td>
                <td>MaSP:
                    <asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' />
                    <br />
                </td>
            </tr>
            <tr>
                <td>TenSP:
                    <asp:Label ID="TenSPLabel" runat="server" Text='<%# Eval("TenSP") %>' />
                    <br />
                </td>
            </tr>
            <tr>
                <td>TienSP:
                    <asp:Label ID="TienSPLabel" runat="server" Text='<%# Eval("TienSP") %>' />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/GioHang.aspx?MSP="+Eval("MaSP") %>'>Đặt Mua</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">Mô tả</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Label ID="MotaLabel" runat="server" Text='<%# Eval("Mota").ToString().Replace("\n","<br>") %>' />
                </td>
            </tr>
        </table>
        <br />
        <br />
    </ItemTemplate>
    <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
</asp:DataList>


