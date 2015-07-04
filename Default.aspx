<%@ Page Title="" Language="C#" MasterPageFile="~/Matricula.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:LoginView ID="LoginView1" runat="server">
    <AnonymousTemplate>
        Tu no estas Logeado....<br /> <a href="Login.aspx">Login.aspx</a><br /> <a href="CrearCuenta.aspx">CrearCuenta.aspx</a>
    </AnonymousTemplate>
    <LoggedInTemplate>
        &quot;Bienvenido... &quot;<br />
        <asp:LoginName ID="LoginName1" runat="server" />
        <br />
        <a href="CambiarContraseña.aspx">CambiarContraseña.aspx</a><br />
    </LoggedInTemplate>
</asp:LoginView>
</asp:Content>

