<%@ Page Title="" Language="C#" MasterPageFile="~/QuanTri.Master" AutoEventWireup="true" CodeBehind="ThemSP.aspx.cs" Inherits="Website.ThemSP" ValidateRequest="false"%>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server" >

    <table style="height: 598px;" class="nav-justified" ">
        <tr>
            <td class="text-center" colspan="2">
                <h1><strong>THÊM MỚI SẢN PHẨM</strong></h1>
            </td>
        </tr>
        <tr>
            <td class="text-left" style="height: 40px; width: 124px"><strong>&nbsp;&nbsp;&nbsp; Mã Sản Phẩm</strong></td>
            <td style="height: 40px">
                <asp:TextBox ID="tbMaSP" runat="server" AutoCompleteType="None"></asp:TextBox >
            </td>
        </tr>
        <tr>
            <td class="text-left" style="height: 40px; width: 124px"><strong>&nbsp;&nbsp;&nbsp; Tên Sản Phẩm</strong></td>
            <td style="height: 40px">
                <asp:TextBox ID="tbTenSP" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 124px; text-align: left; height: 36px;"><strong>&nbsp;&nbsp;&nbsp; Đơn Giá</strong></td>
            <td style="height: 36px">
                <asp:TextBox ID="tbDonGia" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 124px; text-align: left; height: 36px;">&nbsp;&nbsp;&nbsp; <strong>Nhà Cung Cấp&nbsp;</strong></td>
            <td style="height: 36px">
                <asp:TextBox ID="tbNCC" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 124px; text-align: left; height: 51px;"><strong>&nbsp;&nbsp;&nbsp; Mô Tả:</strong></td>
            <td style="height: 51px">
                <textarea id="MoTa" name="editor1" style="width: 526px; height: 149px" runat="server" ></textarea>
            
                
            
                <script>
                    CKEDITOR.replace('editor1');

                    function setvalue() {
                        var data = CKEDITOR.instances.editor1.getData();
                    }
                    
                    
                </script>
   
                
                
   
                
            </td>
            
        </tr>
        <tr>
            <td class="modal-sm" style="width: 124px; text-align: left; height: 36px;"><strong>&nbsp;&nbsp;&nbsp; Hình Minh Họa</strong></td>
            <td style="height: 36px">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="348px" Height="27px" />
&nbsp;
        <asp:Button ID="btnUpload" runat="server" Text="Upload" Height="27px" OnClick="btnUpload_Click" />
    &nbsp;<br />
        <br />
      
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload1" Display="None" ErrorMessage="Bạn cần chọn một tệp ảnh trước khi ấn nút &quot;Upload&quot;"></asp:RequiredFieldValidator>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    <asp:Image ID="Image1" runat="server" Width="150px" />
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 124px; text-align: left; height: 34px;"><strong>&nbsp;&nbsp;&nbsp; Loại Sản Phẩm:</strong></td>
            <td style="height: 34px">
                <asp:DropDownList ID="rdLSP" runat="server" OnSelectedIndexChanged="rdLSP_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 124px; text-align: left; height: 36px;"><strong>&nbsp;&nbsp;&nbsp; Ngày Cập Nhật</strong></td>
            <td style="height: 36px">
                <asp:Calendar ID="NgayCapNhat" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" OnSelectionChanged="NgayCapNhat_SelectionChanged">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 124px; text-align: left; height: 33px;"><strong>&nbsp;&nbsp;&nbsp; Số Lượng</strong></td>
            <td style="height: 33px">
                <asp:TextBox ID="tbSoLuong" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 124px; text-align: left; height: 34px;"><strong>&nbsp;&nbsp;&nbsp; Số Lần Xem</strong></td>
            <td style="height: 34px">
                <asp:TextBox ID="tbSoLanXem" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 124px; text-align: left">&nbsp;</td>
            <td>
                <asp:Button ID="btnLuu" runat="server" CssClass="btnDat" OnClick="btnLuu_Click" Text="Lưu" />
            </td>
        </tr>
    </table>
    

</asp:Content>
