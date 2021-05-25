<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="API.aspx.cs" Inherits="HealthyDiet.front.fatSecretAPI.API" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<script src="FatSecretAPI.js"></script>
	<script type="text/javascript">
		fatsecret.setContainer("my_container");
		fatsecret.setCanvas("home");
    </script>
</head>
<body>
	<div id="my_container" class="fatsecret_container"></div>
	<form runat="server">
		<asp:TextBox ID="idFood" runat="server"></asp:TextBox>
        <asp:Button ID="btnAgregar" runat="server" Text="Agregar alimento" OnClick="btnAgregar_Click" />
	</form>
</body>
</html>
