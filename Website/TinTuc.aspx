<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="TinTuc.aspx.cs" Inherits="Website.TinTuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" Width="367px">
        
        <ItemTemplate>
            <div class="blognd">
                <div>
                    <a href='<%# Eval("MaBlog","ChiTietTinTuc.aspx?MaBlog={0}") %>'>
                    <asp:Image ID="Image1" runat="server" Height="151px" ImageAlign="Middle" ImageUrl='<%# "~/Anh/Blog/"+"/"+Eval("HinhAnh") %>' style="margin-right: 0" Width="235px"  CssClass="anh"/>
                    </a>
                </div>
                <div class="kc">
                    <strong>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="Link" NavigateUrl='<%# Eval("MaBlog","ChiTietTinTuc.aspx?MaBlog={0}") %>' style="color: #009900" Text='<%# Eval("TieuDe") %>'></asp:HyperLink>
                    </strong>
                </div>
                <div class="kc">
                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="Link" NavigateUrl='<%# Eval("MaBlog","ChiTietTinTuc.aspx?MaBlog={0}") %>' style="color: #999999; font-size: small" Text='<%# Eval("TTND") %>'></asp:HyperLink>
                </div>
                <table style="width:100%;">
                    <tr>
                        <td>
                            <asp:Label ID="NgayDangLabel" runat="server" style="font-size: xx-small" Text='<%# Eval("NgayDang","{0:dd/MM/yyyy}") %>' />
                        </td>
                        <td style="text-align: right">
                            <asp:Label ID="NguoiDangLabel" runat="server" style="font-size: xx-small" Text='<%# Eval("NguoiDang") %>' />
                        </td>
                    </tr>
                </table>
                <br />
                
            </div>
        </ItemTemplate>
        
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebBanCayCanhConnectionString %>" SelectCommand="SELECT [HinhAnh], [TieuDe], [TTND], [NgayDang], [NguoiDang], [MaBlog], [NoiDung] FROM [BLOG]"></asp:SqlDataSource>
</asp:Content>
