<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Control_de_Migracion.CapaVistas.Login" %>

<!DOCTYPE html>
<script runat="server">

    protected void btn_login_Click(object sender, EventArgs e)
    {
     validar_usuario(txt_email.Text, txt_password.Text);
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../Css/css_Login.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 300px;
            margin: 0 auto;
            height: 231px;
        }
    </style>
</head>
    <body>
    <div class="loading">
  <div class="circle light"></div>
  <div class="circle dark"></div>
  <div class="branding"></div>
</div>

<div class="login">
  <form method="post" runat="server">
    <asp:Label ID="lbl_email" runat="server" Text="Email:"></asp:Label> 
    <asp:TextBox ID="txt_email" type="text" placeholder="Completa este campo" runat="server"></asp:TextBox>
    <asp:Label ID="lbl_password" Text="Contraseña" runat="server" ></asp:Label>
    <asp:TextBox ID="txt_password" type="Password" placeholder="Completa este campo" runat="server"></asp:TextBox>
    <asp:Button ID="btn_login"  runat="server" type="submit" Text="Login" OnClick="btn_login_Click" />
    <asp:Label ID="lbl_mensaje" runat="server" Text=" " ForeColor="#CC0000"></asp:Label>
  </form>
</div>
</body>
</html>
