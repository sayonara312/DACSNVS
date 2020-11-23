<%@ Page Title="" Language="C#" MasterPageFile="~/QuanTri.Master" AutoEventWireup="true" CodeBehind="QuanTri.aspx.cs" Inherits="Website.QuanTri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <table style="width:100%;">
                <tr>
                    <td class="text-center">
                        <h1><strong>DANH SÁCH SẢN PHẨM</strong></h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnThem" runat="server" CssClass="btnDat" Text="Thêm mới" OnClick="btnThem_Click" />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="text-center">
                            <asp:GridView ID="gvSP" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MaSP" DataSourceID="SqlDataSource1" OnPageIndexChanging="gvSP_PageIndexChanging" Width="910px" OnRowCommand="gvSP_RowCommand">
                                <Columns>
                                    <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                                    <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                                    <asp:BoundField DataField="TienSP" HeaderText="TienSP" SortExpression="TienSP" />
                                    <asp:BoundField DataField="NgayCapNhat" DataFormatString="{0:dd/MM/yyyy}" HeaderText="NgayCapNhat" SortExpression="NgayCapNhat" />
                                    <asp:BoundField DataField="SoLuongBan" HeaderText="SoLuongBan" SortExpression="SoLuongBan" />
                                    <asp:BoundField DataField="SoLanXem" HeaderText="SoLanXem" SortExpression="SoLanXem" />
                                    <asp:ButtonField ButtonType="Image" CommandName="Xoa" HeaderText="Xóa" ImageUrl="~/Anh/Icon/Delete.jpg" />
                                    <asp:TemplateField HeaderText="Sửa">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Anh/Icon/Edit.png" NavigateUrl='<%# "~/Admin/SuaSach.aspx?Ma="+Eval("MaSP") %>'>Sửa</asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                            </asp:GridView>
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebBanCayCanhConnectionString %>" SelectCommand="SELECT [MaSP], [TenSP], [TienSP], [NgayCapNhat], [SoLuongBan], [SoLanXem] FROM [SANPHAM]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
</asp:Content>
