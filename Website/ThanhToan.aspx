<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="ThanhToan.aspx.cs" Inherits="Website.ThanhToan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <table style="width:100%;">
        <tr>
            <td style="padding: 25px; height: 80px; background-color: #CCFFCC;">THÔNG TIN GIỎ HÀNG</td>
        </tr>
        <tr>
            <td style="padding: 20px">
                <asp:GridView ID="gvGioHang" runat="server" AutoGenerateColumns="False" CssClass="gvgiohang" DataKeyNames="MaSP" Width="959px" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"  >
                    <Columns>
                        <asp:BoundField DataField="MaSP" HeaderText="Mã SP"  />
                        <asp:BoundField DataField="TenSP" HeaderText="Tên SP" />
                        <asp:BoundField DataField="DonGia" HeaderText="Đơn Giá" />
                        <asp:BoundField DataField="ThanhTien" HeaderText="Đơn Giá" />
                        <asp:TemplateField HeaderText="Số lượng">
                            <ItemTemplate>
              
                                <asp:TextBox ID="tbSoLuong" runat="server" Text='<%# Eval("SoLuong") %>' Width="50px"  ></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:ButtonField ButtonType="Image" CommandName="Xoa" ImageUrl="~/Anh/Icon/Delete.jpg" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:ButtonField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" Height="40px" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="height: 21px; text-align: right">Tổng Tiền: <asp:Label ID="lbTongTien" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <table style="width:100%;">
        <tr>
            <td colspan="2" style="padding: 25px; background-color: #CCFFCC;">THÔNG TIN GIAO HÀNG</td>
        </tr>
        <tr>
            <td class="auto-style6" style="padding: 25px; width: 232px;">Người nhận: </td>
            <td>
                <asp:TextBox ID="txtTenNguoiNhan" runat="server" Width="395px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" style="padding: 25px; width: 232px;">Địa Chỉ: </td>
            <td>
                <asp:TextBox ID="txtDiaChiNhan" runat="server" Width="392px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" style="padding: 25px; width: 232px;">Điện Thoại: </td>
            <td>
                <asp:TextBox ID="txtDienThoaiNhan" runat="server" Width="389px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" style="padding: 25px; width: 232px;">Hình Thức Thanh Toán: </td>
            <td>
                <asp:RadioButtonList ID="rblHinhThucThanhToan" runat="server">
                    <asp:ListItem>Thanh Toán Trực Tiếp</asp:ListItem>
                    <asp:ListItem>Thanh Toán Bằng Thẻ</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" style="padding: 25px; width: 232px;">&nbsp;</td>
            <td style="height: 21px">
                <br />
                <asp:Button ID="btDongY" runat="server" Text="Thanh Toán" OnClick="btDongY_Click" />
            </td>
        </tr>
    </table>
    <asp:Label ID="lbThongBaoLoi" runat="server"></asp:Label>
    <br />

</asp:Content>
