<%@ Page Title="" Language="C#" MasterPageFile="~/Matricula.master" AutoEventWireup="true" CodeFile="matricula.aspx.cs" Inherits="matricula" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Label ID="Label58" runat="server" Text="Usuario y contraseña  deben ser iguales"></asp:Label>
    <br />
    <asp:Label ID="lblCodigo" runat="server" Text="Codigo:"></asp:Label>
&nbsp;<asp:TextBox ID="tbCodigo" runat="server" OnTextChanged="tbCodigo_TextChanged"></asp:TextBox>
&nbsp;<asp:RangeValidator ID="Validator_codigo" runat="server" ControlToValidate="tbCodigo" ErrorMessage="Codigo invalido ingrese 8 digitos" ForeColor="Red" MaximumValue="99999999" MinimumValue="10000000"></asp:RangeValidator>
    <br />
<br />
<asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
&nbsp;<asp:TextBox ID="tbPassword" runat="server" TextMode="Password" OnTextChanged="tbPassword_TextChanged"></asp:TextBox>
    <br />
    <asp:Label ID="Label59" runat="server"></asp:Label>
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnEntrar" runat="server" OnClick="btnEntrar_Click" Text="Entrar" />
<br />
<br />
<asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Visible="False">
    <asp:ListItem Value="0">Ciencias de la Salud</asp:ListItem>
    <asp:ListItem Value="1">Ciencias e Ingenierías</asp:ListItem>
    <asp:ListItem Value="2">Ciencias Jurídicas y Empresariales</asp:ListItem>
    <asp:ListItem Value="3">Ciencias Sociales</asp:ListItem>
</asp:RadioButtonList>
<br />
<asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
        <br />
        <asp:Label ID="Label1" runat="server" Text="Nombres:"></asp:Label>
        &nbsp;<asp:TextBox ID="Nombre" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="Validacion_nombre" runat="server" ControlToValidate="Nombre" Display="None" ErrorMessage="Debe de ingresar el nombre del alumno" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:Label ID="Label2" runat="server" Text="Apellidos:"></asp:Label>
        &nbsp;<asp:TextBox ID="Apellido" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="Validacion_apellido" runat="server" ControlToValidate="Apellido" Display="None" ErrorMessage="Debe de ingresar el apellido del alumno" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="DNI:"></asp:Label>
        &nbsp;<asp:TextBox ID="DNI" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="Validacion_dni" runat="server" ControlToValidate="DNI" Display="None" ErrorMessage="Debe de ingresar el DNI del alumno" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:Label ID="Label4" runat="server" Text="Fecha de Nacimiento:"></asp:Label>
&nbsp;<asp:DropDownList ID="Dias" runat="server">
            <asp:ListItem Selected="True">01</asp:ListItem>
            <asp:ListItem>02</asp:ListItem>
            <asp:ListItem>03</asp:ListItem>
            <asp:ListItem>04</asp:ListItem>
            <asp:ListItem>05</asp:ListItem>
            <asp:ListItem>06</asp:ListItem>
            <asp:ListItem>07</asp:ListItem>
            <asp:ListItem>08</asp:ListItem>
            <asp:ListItem>09</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>13</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
            <asp:ListItem>16</asp:ListItem>
            <asp:ListItem>17</asp:ListItem>
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>19</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>21</asp:ListItem>
            <asp:ListItem>22</asp:ListItem>
            <asp:ListItem>23</asp:ListItem>
            <asp:ListItem>24</asp:ListItem>
            <asp:ListItem>25</asp:ListItem>
            <asp:ListItem>26</asp:ListItem>
            <asp:ListItem>27</asp:ListItem>
            <asp:ListItem>28</asp:ListItem>
            <asp:ListItem>29</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>31</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:DropDownList ID="Meses" runat="server">
            <asp:ListItem Selected="True">01</asp:ListItem>
            <asp:ListItem>02</asp:ListItem>
            <asp:ListItem>03</asp:ListItem>
            <asp:ListItem>04</asp:ListItem>
            <asp:ListItem>05</asp:ListItem>
            <asp:ListItem>06</asp:ListItem>
            <asp:ListItem>08</asp:ListItem>
            <asp:ListItem>09</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:DropDownList ID="Años" runat="server">
            <asp:ListItem>1990</asp:ListItem>
            <asp:ListItem>1991</asp:ListItem>
            <asp:ListItem>1992</asp:ListItem>
            <asp:ListItem>1993</asp:ListItem>
            <asp:ListItem>1994</asp:ListItem>
            <asp:ListItem>1995</asp:ListItem>
            <asp:ListItem>1996</asp:ListItem>
            <asp:ListItem>1997</asp:ListItem>
            <asp:ListItem Selected="True">1998</asp:ListItem>
            <asp:ListItem>1999</asp:ListItem>
            <asp:ListItem>2000</asp:ListItem>
            <asp:ListItem>2001</asp:ListItem>
            <asp:ListItem>2002</asp:ListItem>
            <asp:ListItem>2003</asp:ListItem>
            <asp:ListItem>2004</asp:ListItem>
            <asp:ListItem>2005</asp:ListItem>
            <asp:ListItem Value="2006"></asp:ListItem>
            <asp:ListItem Value="2007"></asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:Label ID="Label42" runat="server" Text="dd/mm/aaaa"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Genero:"></asp:Label>
        &nbsp;<asp:DropDownList ID="genero" runat="server">
            <asp:ListItem Selected="True">Femenino</asp:ListItem>
            <asp:ListItem>Masculino</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Semestre:&nbsp;<asp:DropDownList ID="Grado1" runat="server">
            <asp:ListItem Selected="True">1to</asp:ListItem>
            <asp:ListItem>2to</asp:ListItem>
            <asp:ListItem>3to</asp:ListItem>
            <asp:ListItem>4to</asp:ListItem>
            <asp:ListItem>5to</asp:ListItem>
            <asp:ListItem>6to</asp:ListItem>
            <asp:ListItem>7to</asp:ListItem>
            <asp:ListItem>8to</asp:ListItem>
            <asp:ListItem>9to</asp:ListItem>
            <asp:ListItem>10to</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Seccion:<asp:DropDownList ID="Seccion1" runat="server" Height="18px" Width="34px">
            <asp:ListItem>A</asp:ListItem>
            <asp:ListItem>B</asp:ListItem>
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>D</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Escuela:&nbsp;<asp:DropDownList ID="Escuela1" runat="server">
            <asp:ListItem>Facultad de Emfermeria</asp:ListItem>
            <asp:ListItem>Facultad de Medicina Humana</asp:ListItem>
            <asp:ListItem>Facultad de Odontologia</asp:ListItem>
            <asp:ListItem>Facultad de Ciencias Farmaceuticas</asp:ListItem>
            <asp:ListItem>Facultad de Obstetricia y Puericultura</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Region:"></asp:Label>
        &nbsp;<asp:DropDownList ID="Region" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Region_SelectedIndexChanged">
            <asp:ListItem Selected="True">Arequipa</asp:ListItem>
            <asp:ListItem>Camana</asp:ListItem>
            <asp:ListItem>Caraveli</asp:ListItem>
            <asp:ListItem>Castilla</asp:ListItem>
            <asp:ListItem>Caylloma</asp:ListItem>
            <asp:ListItem>Condesuyos</asp:ListItem>
            <asp:ListItem>Islay</asp:ListItem>
            <asp:ListItem>La Union</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Distrito:"></asp:Label>
        &nbsp;<asp:DropDownList ID="Distrito" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Text="Direccion:"></asp:Label>
        &nbsp;<asp:TextBox ID="Direccion" runat="server" Width="350px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="Validacion_direccion" runat="server" ControlToValidate="Direccion" Display="None" ErrorMessage="Debe de ingresar la direccion del alumno" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label10" runat="server" Text="Telefono:"></asp:Label>
        &nbsp;<asp:TextBox ID="Telefono" runat="server"></asp:TextBox>
        &nbsp;<asp:RangeValidator ID="Validacion_telefono" runat="server" ControlToValidate="Telefono" Display="None" ErrorMessage="El numero telefonico es invalido" ForeColor="Red" MaximumValue="1000000" MinimumValue="100000" Type="Integer"></asp:RangeValidator>
        &nbsp;<asp:Label ID="Label11" runat="server" Text="Celular:"></asp:Label>
        &nbsp;<asp:TextBox ID="Celular" runat="server"></asp:TextBox>
        &nbsp;<asp:RangeValidator ID="Validacion_celular" runat="server" ControlToValidate="Celular" Display="None" ErrorMessage="El numero del celular es invalido" ForeColor="Red" MaximumValue="1000000000" MinimumValue="100000000" Type="Integer"></asp:RangeValidator>
        <br />
        <br />
        <asp:Label ID="Label12" runat="server" Text="Correo Electronico:"></asp:Label>
        &nbsp;<asp:TextBox ID="Correo_electronico" runat="server" Width="160px"></asp:TextBox>
        &nbsp;<asp:RegularExpressionValidator ID="Validacion_correo" runat="server" ControlToValidate="Correo_electronico" Display="None" ErrorMessage="El correo electronico no es valido" ForeColor="Red" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;<br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Matricularse" runat="server" OnClick="Matricularse_Click" Text="Matricularse" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Limpiar" runat="server" OnClick="Limpiar_Click" Text="Limpiar" />
        &nbsp;&nbsp;<asp:ValidationSummary ID="Validacion_todo" runat="server" ForeColor="Red" />
        <br />
        <br />
        <asp:Label ID="registro" runat="server" Font-Size="XX-Large"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Cursos1" runat="server" OnClick="Lista_de_utiles_Click" Text="Cursos" />
        <br />
        &nbsp;<asp:GridView ID="Utiles" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <br />
        <br />
    </asp:View>
    <asp:View ID="View2" runat="server">
        <br />
        <asp:Label ID="Label14" runat="server" Text="Nombres:"></asp:Label>
        &nbsp;<asp:TextBox ID="Nombre0" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="Validacion_nombre0" runat="server" ControlToValidate="Nombre0" Display="None" ErrorMessage="Debe de ingresar el nombre del alumno" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:Label ID="Label15" runat="server" Text="Apellidos:"></asp:Label>
        &nbsp;<asp:TextBox ID="Apellido0" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="Validacion_apellido0" runat="server" ControlToValidate="Apellido0" Display="None" ErrorMessage="Debe de ingresar el apellido del alumno" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label16" runat="server" Text="DNI:"></asp:Label>
        &nbsp;<asp:TextBox ID="DNI0" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="Validacion_dni0" runat="server" ControlToValidate="DNI0" Display="None" ErrorMessage="Debe de ingresar el DNI del alumno" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:Label ID="Label17" runat="server" Text="Fecha de Nacimiento:"></asp:Label>
        &nbsp;<asp:DropDownList ID="Dias0" runat="server">
            <asp:ListItem Selected="True">01</asp:ListItem>
            <asp:ListItem>02</asp:ListItem>
            <asp:ListItem>03</asp:ListItem>
            <asp:ListItem>04</asp:ListItem>
            <asp:ListItem>05</asp:ListItem>
            <asp:ListItem>06</asp:ListItem>
            <asp:ListItem>07</asp:ListItem>
            <asp:ListItem>08</asp:ListItem>
            <asp:ListItem>09</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>13</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
            <asp:ListItem>16</asp:ListItem>
            <asp:ListItem>17</asp:ListItem>
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>19</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>21</asp:ListItem>
            <asp:ListItem>22</asp:ListItem>
            <asp:ListItem>23</asp:ListItem>
            <asp:ListItem>24</asp:ListItem>
            <asp:ListItem>25</asp:ListItem>
            <asp:ListItem>26</asp:ListItem>
            <asp:ListItem>27</asp:ListItem>
            <asp:ListItem>28</asp:ListItem>
            <asp:ListItem>29</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>31</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:DropDownList ID="Meses0" runat="server">
            <asp:ListItem Selected="True">01</asp:ListItem>
            <asp:ListItem>02</asp:ListItem>
            <asp:ListItem>03</asp:ListItem>
            <asp:ListItem>04</asp:ListItem>
            <asp:ListItem>05</asp:ListItem>
            <asp:ListItem>06</asp:ListItem>
            <asp:ListItem>07</asp:ListItem>
            <asp:ListItem>08</asp:ListItem>
            <asp:ListItem>09</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:DropDownList ID="Años0" runat="server">
            <asp:ListItem>1990</asp:ListItem>
            <asp:ListItem>1991</asp:ListItem>
            <asp:ListItem>1992</asp:ListItem>
            <asp:ListItem>1993</asp:ListItem>
            <asp:ListItem>1994</asp:ListItem>
            <asp:ListItem>1995</asp:ListItem>
            <asp:ListItem>1996</asp:ListItem>
            <asp:ListItem>1997</asp:ListItem>
            <asp:ListItem Selected="True">1998</asp:ListItem>
            <asp:ListItem>1999</asp:ListItem>
            <asp:ListItem>2000</asp:ListItem>
            <asp:ListItem>2001</asp:ListItem>
            <asp:ListItem>2002</asp:ListItem>
            <asp:ListItem>2003</asp:ListItem>
            <asp:ListItem>2004</asp:ListItem>
            <asp:ListItem>2005</asp:ListItem>
            <asp:ListItem Value="2006"></asp:ListItem>
            <asp:ListItem Value="2007"></asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;<asp:Label ID="Label43" runat="server" Text="dd/mm/aaaa"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label18" runat="server" Text="Genero:"></asp:Label>
        &nbsp;<asp:DropDownList ID="genero0" runat="server">
            <asp:ListItem Selected="True">Femenino</asp:ListItem>
            <asp:ListItem>Masculino</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Semestre:&nbsp;<asp:DropDownList ID="Grado" runat="server" OnSelectedIndexChanged="Grado_SelectedIndexChanged">
            <asp:ListItem Selected="True">1ro</asp:ListItem>
            <asp:ListItem>2do</asp:ListItem>
            <asp:ListItem>3ro</asp:ListItem>
            <asp:ListItem>4to</asp:ListItem>
            <asp:ListItem>5to</asp:ListItem>
            <asp:ListItem>6to</asp:ListItem>
            <asp:ListItem>7to</asp:ListItem>
            <asp:ListItem>8to</asp:ListItem>
            <asp:ListItem>9to</asp:ListItem>
            <asp:ListItem>10to</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label21" runat="server" Text="Seccion:"></asp:Label>
        &nbsp;<asp:DropDownList ID="Seccion" runat="server">
            <asp:ListItem Selected="True">A</asp:ListItem>
            <asp:ListItem>B</asp:ListItem>
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>D</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Escuela:&nbsp;<asp:DropDownList ID="Escuela" runat="server">
            <asp:ListItem>Facultad de Ciencias e Ingenierias Biologicas y Quimicas</asp:ListItem>
            <asp:ListItem>Facultad de Ciencias e Ingenierias Fisicas y Formales</asp:ListItem>
            <asp:ListItem>Facultad de Arquitectura e Ingenieria Civil y del Ambiente</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label20" runat="server" Text="Region:"></asp:Label>
        &nbsp;<asp:DropDownList ID="Region0" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Region0_SelectedIndexChanged">
            <asp:ListItem Selected="True">Arequipa</asp:ListItem>
            <asp:ListItem>Camana</asp:ListItem>
            <asp:ListItem>Caraveli</asp:ListItem>
            <asp:ListItem>Castilla</asp:ListItem>
            <asp:ListItem>Caylloma</asp:ListItem>
            <asp:ListItem>Condesuyos</asp:ListItem>
            <asp:ListItem>Islay</asp:ListItem>
            <asp:ListItem>La Union</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label22" runat="server" Text="Distrito:"></asp:Label>
        &nbsp;<asp:DropDownList ID="Distrito0" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label23" runat="server" Text="Direccion:"></asp:Label>
        &nbsp;<asp:TextBox ID="Direccion0" runat="server" Width="350px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="Validacion_direccion0" runat="server" ControlToValidate="Direccion0" Display="None" ErrorMessage="Debe de ingresar la direccion del alumno" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label24" runat="server" Text="Telefono:"></asp:Label>
        &nbsp;<asp:TextBox ID="Telefono0" runat="server"></asp:TextBox>
        &nbsp;<asp:RangeValidator ID="Validacion_telefono0" runat="server" ControlToValidate="Telefono0" Display="None" ErrorMessage="El numero telefonico es invalido" ForeColor="Red" MaximumValue="1000000" MinimumValue="100000" Type="Integer"></asp:RangeValidator>
&nbsp;<asp:Label ID="Label25" runat="server" Text="Celular:"></asp:Label>
        &nbsp;<asp:TextBox ID="Celular0" runat="server"></asp:TextBox>
        &nbsp;<asp:RangeValidator ID="Validacion_celular0" runat="server" ControlToValidate="Celular0" Display="None" ErrorMessage="El numero del celular es invalido" ForeColor="Red" MaximumValue="1000000000" MinimumValue="100000000" Type="Integer"></asp:RangeValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <asp:Label ID="Label26" runat="server" Text="Correo Electronico:"></asp:Label>
        &nbsp;<asp:TextBox ID="Correo_electronico0" runat="server" Width="160px"></asp:TextBox>
        &nbsp;<asp:RegularExpressionValidator ID="Validacion_correo0" runat="server" ControlToValidate="Correo_electronico0" Display="None" ErrorMessage="El correo electronico no es valido" ForeColor="Red" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Matricularse0" runat="server" OnClick="Matricularse0_Click" Text="Matricularse" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Limpiar0" runat="server" OnClick="Limpiar0_Click" Text="Limpiar" />
        <br />
        <asp:ValidationSummary ID="Validacion_todo0" runat="server" ForeColor="Red" />
        <br />
        <br />
        <asp:Label ID="registro0" runat="server" Font-Size="XX-Large"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Cursos" runat="server" Text="Cursos" OnClick="Lista_de_utiles0_Click" />
        <br />
        <asp:GridView ID="Utiles0" runat="server">
        </asp:GridView>
        <br />
    </asp:View>
    <asp:View ID="View3" runat="server">
        <br />
        <asp:Label ID="Label28" runat="server" Text="Nombres:"></asp:Label>
        &nbsp;<asp:TextBox ID="Nombre1" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="Validacion_nombre1" runat="server" ControlToValidate="Nombre1" Display="None" ErrorMessage="Debe de ingresar el nombre del alumno" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:Label ID="Label29" runat="server" Text="Apellidos:"></asp:Label>
&nbsp;<asp:TextBox ID="Apellido1" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="Validacion_apellido1" runat="server" ControlToValidate="Apellido1" Display="None" ErrorMessage="Debe de ingresar el apellido del alumno" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label30" runat="server" Text="DNI:"></asp:Label>
        &nbsp;<asp:TextBox ID="DNI1" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="Validacion_dni1" runat="server" ControlToValidate="DNI1" Display="None" ErrorMessage="Debe de ingresar el DNI del alumno" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:Label ID="Label31" runat="server" Text="Fecha de Nacimiento:"></asp:Label>
        &nbsp;<asp:DropDownList ID="Dias1" runat="server">
            <asp:ListItem Selected="True">01</asp:ListItem>
            <asp:ListItem>02</asp:ListItem>
            <asp:ListItem>03</asp:ListItem>
            <asp:ListItem>04</asp:ListItem>
            <asp:ListItem>05</asp:ListItem>
            <asp:ListItem>06</asp:ListItem>
            <asp:ListItem>07</asp:ListItem>
            <asp:ListItem>08</asp:ListItem>
            <asp:ListItem>09</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>13</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
            <asp:ListItem>16</asp:ListItem>
            <asp:ListItem>17</asp:ListItem>
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>19</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>21</asp:ListItem>
            <asp:ListItem>22</asp:ListItem>
            <asp:ListItem>23</asp:ListItem>
            <asp:ListItem>24</asp:ListItem>
            <asp:ListItem>25</asp:ListItem>
            <asp:ListItem>26</asp:ListItem>
            <asp:ListItem>27</asp:ListItem>
            <asp:ListItem>28</asp:ListItem>
            <asp:ListItem>29</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>31</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:DropDownList ID="Meses1" runat="server">
            <asp:ListItem Selected="True">01</asp:ListItem>
            <asp:ListItem>02</asp:ListItem>
            <asp:ListItem>03</asp:ListItem>
            <asp:ListItem>04</asp:ListItem>
            <asp:ListItem>05</asp:ListItem>
            <asp:ListItem>06</asp:ListItem>
            <asp:ListItem>07</asp:ListItem>
            <asp:ListItem>08</asp:ListItem>
            <asp:ListItem>09</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:DropDownList ID="Años1" runat="server">
            <asp:ListItem>1990</asp:ListItem>
            <asp:ListItem>1991</asp:ListItem>
            <asp:ListItem>1992</asp:ListItem>
            <asp:ListItem>1993</asp:ListItem>
            <asp:ListItem>1994</asp:ListItem>
            <asp:ListItem>1995</asp:ListItem>
            <asp:ListItem>1996</asp:ListItem>
            <asp:ListItem>1997</asp:ListItem>
            <asp:ListItem Selected="True">1998</asp:ListItem>
            <asp:ListItem>1999</asp:ListItem>
            <asp:ListItem>2000</asp:ListItem>
            <asp:ListItem>2001</asp:ListItem>
            <asp:ListItem>2002</asp:ListItem>
            <asp:ListItem>2003</asp:ListItem>
            <asp:ListItem>2004</asp:ListItem>
            <asp:ListItem>2005</asp:ListItem>
            <asp:ListItem Value="2006"></asp:ListItem>
            <asp:ListItem Value="2007"></asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:Label ID="Label44" runat="server" Text="dd/mm/aaaa"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label32" runat="server" Text="Genero:"></asp:Label>
        &nbsp;<asp:DropDownList ID="genero1" runat="server">
            <asp:ListItem Selected="True">Femenino</asp:ListItem>
            <asp:ListItem>Masculino</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Semestre&nbsp;<asp:DropDownList ID="Grado0" runat="server">
            <asp:ListItem Selected="True">1ro</asp:ListItem>
            <asp:ListItem>2do</asp:ListItem>
            <asp:ListItem>3ro</asp:ListItem>
            <asp:ListItem>4to</asp:ListItem>
            <asp:ListItem>5to</asp:ListItem>
            <asp:ListItem>6to</asp:ListItem>
            <asp:ListItem>7to</asp:ListItem>
            <asp:ListItem>8to</asp:ListItem>
            <asp:ListItem>9to</asp:ListItem>
            <asp:ListItem>10to</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label34" runat="server" Text="Seccion:"></asp:Label>
        &nbsp;<asp:DropDownList ID="Seccion0" runat="server">
            <asp:ListItem Selected="True">A</asp:ListItem>
            <asp:ListItem>B</asp:ListItem>
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>D</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Escula:&nbsp;<asp:DropDownList ID="Escuela0" runat="server">
            <asp:ListItem>Facultad de Ciencias Contables y Financieras</asp:ListItem>
            <asp:ListItem>Facultad de Ciencias Economico Administrativas</asp:ListItem>
            <asp:ListItem>Facultad de Ciencias Juridicas y Politicas</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label35" runat="server" Text="Region:"></asp:Label>
        &nbsp;<asp:DropDownList ID="Region1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Region1_SelectedIndexChanged">
            <asp:ListItem Selected="True">Arequipa</asp:ListItem>
            <asp:ListItem>Camana</asp:ListItem>
            <asp:ListItem>Caraveli</asp:ListItem>
            <asp:ListItem>Castilla</asp:ListItem>
            <asp:ListItem>Caylloma</asp:ListItem>
            <asp:ListItem>Condesuyos</asp:ListItem>
            <asp:ListItem>Islay</asp:ListItem>
            <asp:ListItem>La Union</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label36" runat="server" Text="Distrito:"></asp:Label>
        &nbsp;<asp:DropDownList ID="Distrito1" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label37" runat="server" Text="Direccion:"></asp:Label>
        &nbsp;<asp:TextBox ID="Direccion1" runat="server" Width="350px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="Validacion_direccion1" runat="server" ControlToValidate="Direccion1" Display="None" ErrorMessage="Debe de ingresar la direccion del alumno" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label38" runat="server" Text="Telefono:"></asp:Label>
        &nbsp;<asp:TextBox ID="Telefono1" runat="server"></asp:TextBox>
        &nbsp;<asp:RangeValidator ID="Validacion_telefono1" runat="server" ControlToValidate="Telefono1" Display="None" ErrorMessage="El numero telefonico es invalido" ForeColor="Red" MaximumValue="1000000" MinimumValue="100000" Type="Integer"></asp:RangeValidator>
&nbsp;<asp:Label ID="Label39" runat="server" Text="Celular:"></asp:Label>
        &nbsp;<asp:TextBox ID="Celular1" runat="server"></asp:TextBox>
        &nbsp;<asp:RangeValidator ID="Validacion_celular1" runat="server" ControlToValidate="Celular1" Display="None" ErrorMessage="El numero del celular es invalido" ForeColor="Red" MaximumValue="1000000000" MinimumValue="100000000" Type="Integer"></asp:RangeValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label40" runat="server" Text="Correo Electronico:"></asp:Label>
        &nbsp;<asp:TextBox ID="Correo_electronico1" runat="server" Width="160px"></asp:TextBox>
&nbsp;<asp:RegularExpressionValidator ID="Validacion_correo1" runat="server" ControlToValidate="Correo_electronico1" Display="None" ErrorMessage="El correo electronico no es valido" ForeColor="Red" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Matricularse1" runat="server" OnClick="Matricularse1_Click" Text="Matricularse" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Limpiar1" runat="server" OnClick="Limpiar1_Click" Text="Limpiar" />
        <br />
        <asp:ValidationSummary ID="Validacion_todo1" runat="server" ForeColor="Red" />
        <br />
        <br />
        <asp:Label ID="registro1" runat="server" Font-Size="XX-Large"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Cursos0" runat="server" Text="Cursos" OnClick="Lista_de_utiles1_Click" />
        <br />
        <asp:GridView ID="Utiles1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
    </asp:View>
    <asp:View ID="View4" runat="server">
        <br />
        <asp:Label ID="Label45" runat="server" Text="Nombres:"></asp:Label>
        &nbsp;<asp:TextBox ID="Nombre2" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="Validacion_nombre2" runat="server" ControlToValidate="Nombre2" Display="None" ErrorMessage="Debe de ingresar el nombre del alumno" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:Label ID="Label46" runat="server" Text="Apellidos:"></asp:Label>
        &nbsp;<asp:TextBox ID="Apellido2" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="Validacion_apellido2" runat="server" ControlToValidate="Apellido2" Display="None" ErrorMessage="Debe de ingresar el apellido del alumno" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label47" runat="server" Text="DNI:"></asp:Label>
        &nbsp;<asp:TextBox ID="DNI2" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="Validacion_dni2" runat="server" ControlToValidate="DNI2" Display="None" ErrorMessage="Debe de ingresar el DNI del alumno" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:Label ID="Label48" runat="server" Text="Fecha de Nacimiento:"></asp:Label>
        &nbsp;<asp:DropDownList ID="Dias2" runat="server">
            <asp:ListItem Selected="True">01</asp:ListItem>
            <asp:ListItem>02</asp:ListItem>
            <asp:ListItem>03</asp:ListItem>
            <asp:ListItem>04</asp:ListItem>
            <asp:ListItem>05</asp:ListItem>
            <asp:ListItem>06</asp:ListItem>
            <asp:ListItem>07</asp:ListItem>
            <asp:ListItem>08</asp:ListItem>
            <asp:ListItem>09</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>13</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
            <asp:ListItem>16</asp:ListItem>
            <asp:ListItem>17</asp:ListItem>
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>19</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>21</asp:ListItem>
            <asp:ListItem>22</asp:ListItem>
            <asp:ListItem>23</asp:ListItem>
            <asp:ListItem>24</asp:ListItem>
            <asp:ListItem>25</asp:ListItem>
            <asp:ListItem>26</asp:ListItem>
            <asp:ListItem>27</asp:ListItem>
            <asp:ListItem>28</asp:ListItem>
            <asp:ListItem>29</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>31</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:DropDownList ID="Meses2" runat="server">
            <asp:ListItem Selected="True">01</asp:ListItem>
            <asp:ListItem>02</asp:ListItem>
            <asp:ListItem>03</asp:ListItem>
            <asp:ListItem>04</asp:ListItem>
            <asp:ListItem>05</asp:ListItem>
            <asp:ListItem>06</asp:ListItem>
            <asp:ListItem>07</asp:ListItem>
            <asp:ListItem>08</asp:ListItem>
            <asp:ListItem>09</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:DropDownList ID="Años2" runat="server">
            <asp:ListItem>1990</asp:ListItem>
            <asp:ListItem>1991</asp:ListItem>
            <asp:ListItem>1992</asp:ListItem>
            <asp:ListItem>1993</asp:ListItem>
            <asp:ListItem>1994</asp:ListItem>
            <asp:ListItem>1995</asp:ListItem>
            <asp:ListItem>1996</asp:ListItem>
            <asp:ListItem>1997</asp:ListItem>
            <asp:ListItem Selected="True">1998</asp:ListItem>
            <asp:ListItem>1999</asp:ListItem>
            <asp:ListItem>2000</asp:ListItem>
            <asp:ListItem>2001</asp:ListItem>
            <asp:ListItem>2002</asp:ListItem>
            <asp:ListItem>2003</asp:ListItem>
            <asp:ListItem>2004</asp:ListItem>
            <asp:ListItem>2005</asp:ListItem>
            <asp:ListItem Value="2006"></asp:ListItem>
            <asp:ListItem Value="2007"></asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:Label ID="Label49" runat="server" Text="dd/mm/aaaa"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label50" runat="server" Text="Genero:"></asp:Label>
        &nbsp;<asp:DropDownList ID="genero2" runat="server">
            <asp:ListItem Selected="True">Femenino</asp:ListItem>
            <asp:ListItem>Masculino</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Semestre&nbsp;<asp:DropDownList ID="Grado2" runat="server">
            <asp:ListItem Selected="True">1ro</asp:ListItem>
            <asp:ListItem>2do</asp:ListItem>
            <asp:ListItem>3ro</asp:ListItem>
            <asp:ListItem>4to</asp:ListItem>
            <asp:ListItem>5to</asp:ListItem>
            <asp:ListItem>6to</asp:ListItem>
            <asp:ListItem>7to</asp:ListItem>
            <asp:ListItem>8to</asp:ListItem>
            <asp:ListItem>9to</asp:ListItem>
            <asp:ListItem>10to</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label51" runat="server" Text="Seccion:"></asp:Label>
        &nbsp;<asp:DropDownList ID="Seccion2" runat="server">
            <asp:ListItem Selected="True">A</asp:ListItem>
            <asp:ListItem>B</asp:ListItem>
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>D</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Escula:&nbsp;<asp:DropDownList ID="Escuela2" runat="server">
            <asp:ListItem>Comunicaion Social</asp:ListItem>
            <asp:ListItem>Psicologia</asp:ListItem>
            <asp:ListItem>Turismo y Hoteleria</asp:ListItem>
            <asp:ListItem>Educacion</asp:ListItem>
            <asp:ListItem>Publicidad y Multimedia</asp:ListItem>
            <asp:ListItem>Teologia</asp:ListItem>
            <asp:ListItem>Trabajo</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label52" runat="server" Text="Region:"></asp:Label>
        &nbsp;<asp:DropDownList ID="Region2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Region1_SelectedIndexChanged">
            <asp:ListItem Selected="True">Arequipa</asp:ListItem>
            <asp:ListItem>Camana</asp:ListItem>
            <asp:ListItem>Caraveli</asp:ListItem>
            <asp:ListItem>Castilla</asp:ListItem>
            <asp:ListItem>Caylloma</asp:ListItem>
            <asp:ListItem>Condesuyos</asp:ListItem>
            <asp:ListItem>Islay</asp:ListItem>
            <asp:ListItem>La Union</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label53" runat="server" Text="Distrito:"></asp:Label>
        &nbsp;<asp:DropDownList ID="Distrito2" runat="server" Height="16px" Width="100px">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label54" runat="server" Text="Direccion:"></asp:Label>
        &nbsp;<asp:TextBox ID="Direccion2" runat="server" Width="350px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="Validacion_direccion2" runat="server" ControlToValidate="Direccion2" Display="None" ErrorMessage="Debe de ingresar la direccion del alumno" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label55" runat="server" Text="Telefono:"></asp:Label>
        &nbsp;<asp:TextBox ID="Telefono2" runat="server"></asp:TextBox>
        &nbsp;<asp:RangeValidator ID="Validacion_telefono2" runat="server" ControlToValidate="Telefono2" Display="None" ErrorMessage="El numero telefonico es invalido" ForeColor="Red" MaximumValue="1000000" MinimumValue="100000" Type="Integer"></asp:RangeValidator>
        &nbsp;<asp:Label ID="Label56" runat="server" Text="Celular:"></asp:Label>
        &nbsp;<asp:TextBox ID="Celular2" runat="server"></asp:TextBox>
        &nbsp;<asp:RangeValidator ID="Validacion_celular2" runat="server" ControlToValidate="Celular2" Display="None" ErrorMessage="El numero del celular es invalido" ForeColor="Red" MaximumValue="1000000000" MinimumValue="100000000" Type="Integer"></asp:RangeValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label57" runat="server" Text="Correo Electronico:"></asp:Label>
        &nbsp;<asp:TextBox ID="Correo_electronico2" runat="server" Width="160px"></asp:TextBox>
        &nbsp;<asp:RegularExpressionValidator ID="Validacion_correo2" runat="server" ControlToValidate="Correo_electronico2" Display="None" ErrorMessage="El correo electronico no es valido" ForeColor="Red" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Matricularse2" runat="server" OnClick="Matricularse2_Click" Text="Matricularse" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Limpiar2" runat="server" OnClick="Limpiar2_Click" Text="Limpiar" />
        <br />
        <asp:ValidationSummary ID="Validacion_todo2" runat="server" ForeColor="Red" />
        <br />
        <br />
        <asp:Label ID="registro2" runat="server" Font-Size="XX-Large"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Cursos2" runat="server" OnClick="Lista_de_utiles1_Click" Text="Cursos" />
        <br />
        <asp:GridView ID="Utiles2" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
    </asp:View>
</asp:MultiView>
<br />
</asp:Content>

