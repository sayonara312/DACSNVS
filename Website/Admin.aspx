<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Website.Admin" %>

<!DOCTYPE html>
<link href="Admin.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server" autocomplete="off">
        
        <div class="login">
	<h1>Đăng Nhập</h1>
    
	   
		<div class="dangnhap">Tài khoản</div>
        <div class="input-box">
            <div class="btn">
           		&nbsp;<asp:TextBox CssClass="user"  placeholder="Nhập tài khoản..." ID="tbTK" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="dangnhap">Mật khẩu</div>
        <div class="input-box">
            <div class="btn">
            	&nbsp;<asp:TextBox CssClass="pass"  placeholder="Nhập mật khẩu..." ID="tbMK" runat="server" TextMode="Password"></asp:TextBox>
            </div>
        </div>
        
		<div class="dn">
            <asp:Button ID="btnDangNhap" runat="server" Text="Đăng Nhập" OnClick="btnDangNhap_Click" />
        </div>

         </div>
  
   
    </form>
</body>
</html>
