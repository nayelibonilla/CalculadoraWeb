<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="Calculadora.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 452px;
            width: 693px;
        }
    </style>
         
</head>
<body style="height: 18px; width: 1414px">
    <form id="form1" runat="server">
        <div>
              Calculadora web
        </div>
        <asp:Label ID="Label1" runat="server" Text="Numero 1:"></asp:Label>
        <asp:TextBox ID="tnum1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Numero 2:"></asp:Label>
        <asp:TextBox ID="tnum2" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Resultado:"></asp:Label>
&nbsp;<asp:Label ID="lresultado" runat="server" Text="0"></asp:Label>
        <br />
        <br />
        <asp:Button ID="bsuma" runat="server" OnClick="Button2_Click" Text="Suma" />
&nbsp;<asp:Button ID="bresta" runat="server" Height="29px" OnClick="Button2_Click" Text="Resta" />
&nbsp;<asp:Button ID="bmultiplicacion" runat="server" OnClick="Button2_Click" Text="Multiplicacion" />
&nbsp;<asp:Button ID="bdivision" runat="server" OnClick="Button2_Click" Text="Division" />
&nbsp;<asp:Button ID="bpotencia" runat="server" OnClick="Button2_Click" Text="Potencia 2" />
&nbsp;<asp:Button ID="bexp" runat="server" OnClick="Button2_Click" Text="Exp" />
&nbsp;<asp:Button ID="bdiez" runat="server" OnClick="Button2_Click" Text="10x" />
    </form>
</body>
</html>
