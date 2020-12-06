<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="ChiTietTinTuc.aspx.cs" Inherits="Website.ChiTietTinTuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <div class="ndtintuc">
    <asp:DataList ID="DataList3" runat="server" DataKeyField="MaBlog" DataSourceID="SqlDataSource1" Width="1023px">
        <ItemTemplate>
            <h1>
                <asp:Label ID="TieuDeLabel" runat="server" style="color: #009933" Text='<%# Eval("TieuDe") %>' />
            </h1>
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:Label ID="NgayDangLabel" runat="server" style="font-size: xx-small; color: #999999" Text='<%# Eval("NgayDang", "{0:dd/MM/yyyy}") %>' />
                        &nbsp;<asp:Label ID="NgayDangLabel0" runat="server" style="font-size: xx-small; color: #999999" Text='<%# Eval("NguoiDang") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center"><a href='<%# Eval("MaBlog","ChiTietTinTuc.aspx?MaBlog={0}") %>'>
                        <asp:Image ID="Image1" runat="server" Height="235px" ImageAlign="Middle" ImageUrl='<%# "~/Anh/Blog/"+"/"+Eval("HinhAnh") %>' style="margin-right: 0" Width="477px" />
                        </a></td>
                </tr>
              </table>  
                    

                        <asp:Label ID="NoiDungLabel" runat="server" Text='<%# Eval("NoiDung").ToString().Replace("\n","<br>") %>' />
                    
            
            
        </ItemTemplate>
    </asp:DataList>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebBanCayCanhConnectionString %>" SelectCommand="SELECT [MaBlog], [HinhAnh], [TieuDe], [NoiDung], [NgayDang], [NguoiDang] FROM [BLOG] Where MaBlog=@MaBlog">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaBlog" QueryStringField="MaBlog" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <div class="Danhsachsp">
    <strong>Bình Luận</strong></div>
    <div class="binhluannoidung">
        <strong>
        <asp:Label ID="Label1" runat="server" Text="Họ Tên"></asp:Label>
        <br />
        </strong>
        <br />
        <asp:TextBox ID="tbTenNgBL" runat="server" Height="27px" Width="183px" style="margin-bottom:10px"></asp:TextBox>
        <br />
        <strong>Nội dung</strong><br />
        &nbsp;<asp:TextBox ID="tbNoiDung" runat="server" Height="130px" TextMode="MultiLine" Width="1000px" style="margin-left: 0"></asp:TextBox>
        
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="btnDat" Text="Bình Luận" style="margin:10px" OnClick="Button1_Click"/>
        <br />
        <strong>
        <asp:Label ID="lbThongBao" runat="server" style="color: #FF0000"></asp:Label>
        </strong>
    </div>
    <br /><asp:DataList ID="DataList4" runat="server">
        <ItemTemplate>
            <div class="ndbl">
                <div >
                    
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:Label ID="NguoiBLLabel" runat="server" CssClass="fa-inverse" style="color: #3333CC" Text='<%# Eval("NguoiBL") %>' />
                        &nbsp;<span style="font-size: xx-small">đã bình luận ngày</span>
                        <asp:Label ID="NgayBLLabel" runat="server" CssClass="fa-inverse" style="font-size: xx-small; color: #000000" Text='<%# Eval("NgayBL","{0:MM/dd/yyyy HH:mm}") %>' />
                    </td>
                </tr>
                </table>
                </div>
                    <br />
                    <asp:Label ID="NoiDungBLLabel" runat="server" Text='<%# Eval("NoiDungBL").ToString().Replace("\n","<br>") %>' />
                <br />
                
                </div>
            
        </ItemTemplate>
    </asp:DataList>
    <div class="phantrang" >
    <asp:Button ID="btnDau" runat="server" OnClick="Button2_Click" Text="Trang Đầu" Height="30px" />
    &nbsp;<asp:Button ID="btnTruoc" runat="server" Text="Trước" Height="30px" OnClick="btnTruoc_Click" Width="50px" />
        <asp:Label ID="tbTrang" runat="server"></asp:Label>
    <asp:Button ID="btnSau" runat="server" Text="Sau" Height="30px" OnClick="btnSau_Click" Width="50px" />
    &nbsp;<asp:Button ID="btnCuoi" runat="server" Text="Trang Cuối" Height="30px" OnClick="btnCuoi_Click" />
        <br />
        <br />
        </div>
</asp:Content>
