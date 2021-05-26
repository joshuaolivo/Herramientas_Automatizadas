<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmPlanMensual.aspx.cs" Inherits="HealthyDiet.front.frmPlanMensual" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Plan mensual | Healthy Diet</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../Content/HealthyDiet.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/bootstrap.js"></script>
    <script src="../Scripts/jquery-3.0.0.js"></script>
</head>
<body class="image-fondo-plan">
    <form id="form1" runat="server">
        <div class ="cabecera">
            <header>
                <nav class="navbar navbar-expand-lg navbar-dark bg-success ">
                    <a class="navbar-brand" href="index.aspx">
                        <img src="../images/Icon.png" alt="" width="33" height="30" class="d-inline-block align-text-top" />
                        Healthy Diet</a>
                    <button class="navbar-toggler btn-success" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
                        <ul class="nav navbar-nav">
                            <li class="nav-item"><a class="nav-link" href="frmPrincipal.aspx">Inicio</a></li>
                        </ul>
                    </div>
                </nav>
            </header>
        </div>
        <div class="container bg-transparent">
            <div class="row justify-content-md-center p-3">
                <div class="col-lg-6 bg-white text-center rounded shadow">
                    <asp:Label ID="Label1" runat="server" Text="Plan mensual" CssClass="h1"></asp:Label>
                    <hr />
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="¿Cuántos meses has hecho dieta anteriormente?" CssClass="h6 w-75"></asp:Label>
                        <asp:TextBox ID="txtMeses" runat="server" CssClass="form-control badge-pill w-100 border-success" TextMode="Number" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label8" runat="server" Text="Edad en años" CssClass="h6 w-75"></asp:Label>
                        <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control badge-pill w-100 border-success" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Estatura en cm." CssClass="h6 w-75"></asp:Label>
                        <asp:TextBox ID="txtAltura" runat="server" CssClass="form-control badge-pill w-100 border-success" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="Peso en Kg." CssClass="h6 w-75"></asp:Label>
                        <asp:TextBox ID="txtPeso" runat="server" CssClass="form-control badge-pill w-100 border-success" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="¿Cuántos días a la semana realizas actividad física?" CssClass="h6 w-75"></asp:Label>
                        <asp:DropDownList ID="ddlActividad" runat="server" CssClass="form-control badge-pill w-100 border-success">
                            <asp:ListItem Value="0"></asp:ListItem>
                            <asp:ListItem Value="1"></asp:ListItem>
                            <asp:ListItem Value="2"></asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem Value="5"></asp:ListItem>
                            <asp:ListItem Value="6"></asp:ListItem>
                            <asp:ListItem Value="7"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="¿Cuál es tu objetivo?" CssClass="h6 w-75"></asp:Label>
                        <asp:DropDownList ID="ddlObjetivo" runat="server" CssClass="form-control badge-pill w-100 border-success" >
                            <asp:ListItem Value="Perder Grasa"></asp:ListItem>
                            <asp:ListItem Value="Ganar Peso"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <asp:Button ID="btnPlan" runat="server" OnClick="btnPlan_Click" Text="Crear Plan" CssClass="btn badge-pill btn-success w-25"/>
                </div>
            </div>
            <div class="row justify-content-md-center p-3">
                <div class="col-lg-6 bg-white text-center rounded shadow">
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Objetivo" CssClass="h6 w-75"></asp:Label>
                        <asp:Label ID="lblObjetivo" runat="server" Text="-" CssClass="form-control badge-pill w-100 border-success" ></asp:Label>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label9" runat="server" Text="Gasto Calórico Basal" CssClass="h6 w-75"></asp:Label>
                        <asp:Label ID="lblBAsal" runat="server" Text="-" CssClass="form-control badge-pill w-100 border-success" ></asp:Label>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label10" runat="server" Text="Gasto Calórico Objetivo" CssClass="h6 w-75"></asp:Label>
                        <asp:Label ID="lblObje" runat="server" Text="-" CssClass="form-control badge-pill w-100 border-success" ></asp:Label>
                        <br />
                    <asp:Button ID="btnContinuar" runat="server" OnClick="btnContinuar_Click" Text="Continuar" CssClass="btn badge-pill btn-success w-25"/>
                        <br />
                    </div>
                </div>
            </div>
        </div>

        
        <asp:ScriptManager ID="smPageManager" ScriptMode="Release" runat="server">
            <Scripts>
                <asp:ScriptReference Path="../Scripts/bootstrap.js" />
                <asp:ScriptReference Path="../Scripts/jquery-3.0.0.js" />
            </Scripts>
        </asp:ScriptManager>
    </form>
</body>
</html>
