﻿<%@ Page Title="" Language="C#" MasterPageFile="~/QuanTri.Master" AutoEventWireup="true" CodeBehind="DanhSachBlog.aspx.cs" Inherits="Website.DanhSachBlog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <table style="width:100%">
                <tr>
                    <td class="text-center">
                        <h1><strong>DANH SÁCH BLOG</strong></h1>
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
                        <div class="text-left">
                            <asp:GridView ID="gvBlog" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MaBlog" OnPageIndexChanging="gvBlog_PageIndexChanging" Width="100%" OnRowCommand="gvBlog_RowCommand" CssClass="fixcss">
                                <Columns>
                                    <asp:BoundField DataField="MaBlog" HeaderText="Mã Blog" ReadOnly="True" >
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="20px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="TieuDe" HeaderText="Tiêu Đề" >
                                    <ItemStyle Width="50px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="TTND" HeaderText="Tóm Tắt ND" ><ItemStyle CssClass="gvBlog" Width="50px" />
                                    </asp:BoundField>
                                    <asp:BoundField  DataField="NoiDung" HeaderText="Nội Dung" >
                                        <ItemStyle CssClass="gvBlog" Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="NgayDang" HeaderText="Ngày Đăng" DataFormatString="{0:dd/MM/yyyy}" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="SoLanXem" HeaderText="Sồ Lượt Xem" SortExpression="SoLanXem" >
                                    <ItemStyle HorizontalAlign="Center" Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="NguoiDang" HeaderText="Người Đăng" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="Sửa">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Anh/Icon/Edit.png" NavigateUrl='<%# "~/SuaBlog.aspx?MaBlog="+Eval("MaBlog") %>'>Sửa</asp:HyperLink>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:ButtonField ButtonType="Image" CommandName="Xoa" HeaderText="Xóa" ImageUrl="~/Anh/Icon/Delete.jpg" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:ButtonField>
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                            </asp:GridView>
                        </div>
                    </td>
                </tr>
            </table>
</asp:Content>
