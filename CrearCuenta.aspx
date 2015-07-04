<%@ Page Title="" Language="C#" MasterPageFile="~/Matricula.master" AutoEventWireup="true" CodeFile="CrearCuenta.aspx.cs" Inherits="CrearCuenta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Height="144px" Width="311px">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:WizardStep runat="server" Title="Escoja su Rol" OnActivate="ActivateStep"
                                                            OnDeactivate="DeactiveStep">
                Seleccione<br />
                <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
                <br />
            </asp:WizardStep>
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>

