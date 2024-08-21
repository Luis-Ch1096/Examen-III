<%@ Page Title="" Language="C#" MasterPageFile="~/CapaVistas/Site1.Master" AutoEventWireup="true" CodeBehind="Viajeros.aspx.cs" Inherits="Control_de_Migracion.CapaVistas.Viajeros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
         <style type="text/css">
    h2{
        text-align:center;
    }
    h3{
        text-align:center;
    }
    
             .auto-style1 {
                 margin-left: 67px;
             }
             .auto-style2 {
                 margin-left: 42px;
             }
    
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h2>****Gestionar Viajeros****</h2>
        <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <p>&nbsp;</p>
    Id Viajero:<asp:TextBox ID="Text_id" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    Nombre:<asp:TextBox ID="Text_nombre" runat="server"></asp:TextBox>
    <br />
    Primer Apellido:<asp:TextBox ID="Text_apellido" runat="server"></asp:TextBox>
    <br />
    Apellido<asp:TextBox ID="Text_apellido2" runat="server"></asp:TextBox>
    <br />
    Nacionalidad:<asp:TextBox ID="Text_nacionalidad" runat="server"></asp:TextBox>
        <p>&nbsp;</p>
    <asp:Button ID="btn_agregar" runat="server" Text="Agregar" Width="80px" OnClick="btn_agregar_Click" /> 
    <asp:Button ID="btn_eliminar" runat="server" Text="Eliminar" CssClass="auto-style1" Width="85px" OnClick="btn_eliminar_Click" />    
    <asp:Button ID="btn_actualizar" runat="server" Text="Actualizar" CssClass="auto-style2" Width="97px" />
    <br />
    <br />
    </asp:Content>
