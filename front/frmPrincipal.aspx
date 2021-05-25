<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmPrincipal.aspx.cs" Inherits="HealthyDiet.front.frmPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
          <h1>Pagina Principal</h1>
           <asp:Button ID="btnInfo" runat="server" OnClick="btnInfo_Click" Text="Info" />
          <asp:Button ID="btnResumen" runat="server" OnClick="Button1_Click" Text="Resumen del dia" />
        
    </form>
</body>
</html>
