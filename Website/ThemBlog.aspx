<%@ Page Title="" Language="C#" MasterPageFile="~/QuanTri.Master" AutoEventWireup="true" CodeBehind="ThemBlog.aspx.cs" Inherits="Website.ThemBlog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <table style="height: 598px;" class="nav-justified" ">
        <tr>
            <td class="text-center" colspan="2">
                <h1><strong>THÊM MỚI SẢN PHẨM</strong></h1>
            </td>
        </tr>
        <tr>
            <td class="text-left" style="height: 34px; width: 124px"><strong>&nbsp;&nbsp;&nbsp; </strong><b>T</b><span style="font-weight: bold">iêu Đề</span></td>
            <td style="height: 34px">
                <asp:TextBox ID="tbTieuDe" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 124px; text-align: left; height: 58px;"><strong>&nbsp;&nbsp;&nbsp; T</strong><span style="font-weight: bold">T ND</span>&nbsp;&nbsp;&nbsp; </td>
            <td style="height: 58px">
                <asp:TextBox ID="tbTTND" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 124px; text-align: left; height: 105px;"><strong>&nbsp;&nbsp;&nbsp; Nội Dung</strong></td>
            <td style="height: 105px">
                &nbsp;<script>
                    CKEDITOR.replace('editor1');

                    function setvalue() {
                        var data = CKEDITOR.instances.editor1.getData();
                    }
                    
                    
                </script><asp:TextBox ID="tbND" runat="server" Height="252px" TextMode="MultiLine" Width="506px"></asp:TextBox>
   
                
                
   
                
            </td>
            
        </tr>
        <tr>
            <td class="modal-sm" style="width: 124px; text-align: left; height: 36px;"><strong>&nbsp;&nbsp;&nbsp; Hình Minh Họa</strong></td>
            <td style="height: 36px">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="348px" Height="27px" />
&nbsp;
        <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Chưa chọn ảnh!!!" style="color: #FF0000"></asp:RequiredFieldValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 124px; text-align: left; height: 38px;"><strong>&nbsp;&nbsp;&nbsp; Người Đăng</strong></td>
            <td style="height: 38px">
                <asp:TextBox ID="tbNguoiDang" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 124px; text-align: left; height: 6px;"></td>
            <td style="height: 6px">
                <asp:Button ID="btnLuu" runat="server" CssClass="btnDat" OnClick="btnLuu_Click" Text="Lưu" />
            </td>
        </tr>
    </table>
    
</asp:Content>
