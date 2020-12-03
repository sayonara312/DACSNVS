<%@ Page Title="" Language="C#" MasterPageFile="~/QuanTri.Master" AutoEventWireup="true" CodeBehind="SuaSP.aspx.cs" Inherits="Website.SuaSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <table  style="height: 598px; width: 100%;" class="nav-justified" ">
        <tr>
            <td class="text-center" colspan="2">
                <h1><strong>SỬA SẢN PHẨM</strong></h1>
            </td>
        </tr>
        <tr>
            <td class="text-left" style="height: 40px; width: 233px"><strong>&nbsp;&nbsp;&nbsp; Mã Sản Phẩm</strong></td>
            <td style="height: 40px">
                <asp:TextBox ID="tbMaSP" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-left" style="height: 40px; width: 233px"><strong>&nbsp;&nbsp;&nbsp; Tên Sản Phẩm</strong></td>
            <td style="height: 40px">
                <asp:TextBox ID="tbTenSP" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 233px; text-align: left; height: 36px;"><strong>&nbsp;&nbsp;&nbsp; Đơn Giá</strong></td>
            <td style="height: 36px">
                <asp:TextBox ID="tbDonGia" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 233px; text-align: left; height: 36px;">&nbsp;&nbsp;&nbsp; <strong>Nhà Cung Cấp&nbsp;</strong></td>
            <td style="height: 36px">
                <asp:TextBox ID="tbNCC" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 233px; text-align: left; height: 51px;"><strong>&nbsp;&nbsp;&nbsp; Mô Tả:</strong></td>
            <td style="height: 51px">
                &nbsp;<script>
                    CKEDITOR.replace('editor1');

                    function setvalue() {
                        var data = CKEDITOR.instances.editor1.getData();
                    }
                    
                    
                </script><asp:TextBox ID="tbMoTa" runat="server" Height="210px" style="margin-right: 2" TextMode="MultiLine" Width="100%"></asp:TextBox>
   
                
                
   
                
            </td>
            
        </tr>
        <tr>
            <td class="modal-sm" style="width: 233px; text-align: left; height: 36px;"><strong>&nbsp;&nbsp;&nbsp; Ngày Cập Nhật</strong></td>
            <td style="height: 36px">
                <asp:Label ID="lbNgayCapNhat" runat="server"></asp:Label>
                <br />
                <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="289px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
&nbsp;
        &nbsp;<br />
      
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 233px; text-align: left; height: 34px;"><strong>&nbsp;&nbsp;&nbsp; Mã Loại Sản Phẩm:</strong></td>
            <td style="height: 34px">
                <asp:DropDownList ID="rdlMaLoaiSP" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 233px; text-align: left; height: 36px;"><strong>&nbsp;&nbsp;&nbsp;Hình Minh Họa </strong></td>
            <td style="height: 36px">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="348px" Height="27px" />
                <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload" />
                <br />
                <asp:Label ID="lbUpload" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 233px; text-align: left; height: 33px;"><strong>&nbsp;&nbsp;&nbsp; Số Lượng</strong></td>
            <td style="height: 33px">
                <asp:TextBox ID="tbSoLuong" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 233px; text-align: left; height: 34px;"><strong>&nbsp;&nbsp;&nbsp; Số Lượt Bán</strong></td>
            <td style="height: 34px">
                <asp:TextBox ID="tbSoLuongBan" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 233px; text-align: left"><strong>&nbsp;&nbsp;&nbsp; Số Lượng Xem</strong></td>
            <td>
                <asp:TextBox ID="tbSoLanXem" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 233px; text-align: center">&nbsp;</td>
            <td>
                <asp:Button ID="btnCapNhat" runat="server" CssClass="btnDat" OnClick="btnCapNhat_Click" Text="Cập Nhật" />
            </td>
        </tr>
    </table>
</asp:Content>
