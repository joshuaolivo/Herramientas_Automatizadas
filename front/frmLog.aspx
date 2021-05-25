﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLog.aspx.cs" Inherits="HealthyDiet.front.frmLog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>LogIn</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../Content/HealthyDiet.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/bootstrap.js"></script>
    <script src="../Scripts/jquery-3.0.0.js"></script>
</head>
<body class="image-fondo-login">
    <form id="form1" runat="server">
        <div class ="cabecera">
            <header>
                <nav class="navbar navbar-expand-lg navbar-dark bg-success ">
                    <a class="navbar-brand" href="index.aspx">Healthy Diet</a>
                    <button class="navbar-toggler btn-success" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
                        <ul class="nav navbar-nav">
                            <li class="nav-item active"><a class="nav-link" href="index.aspx">Inicio <span class="sr-only">(current)</span></a></li>
                            <li class="nav-item"><a class="nav-link" href="index.aspx">¿Quienes somos?</a></li>
                            <li class="nav-item"><a class="nav-link" href="frmLog.aspx">Inicar sesión</a></li>
                        </ul>
                    </div>
                </nav>
            </header>
        </div>
        <div class="container bg-transparent p-3">
            <div class="row justify-content-md-center">
                <div class="col-lg-6 text-center rounded shadow-lg bg-light">
                    <img src="../images/Icon.png" class="img-fluid h-auto w-75" alt="HealthyDiet"/><br />
                    <asp:Label ID="lblEmpresa" runat="server" Text="Label" CssClass="h5">HealthyDiet</asp:Label><br />
                    <asp:Label ID="lblSesion" runat="server" Text="Label" CssClass="h3">Iniciar Sesion</asp:Label><br />
                    <hr />
                    <div class="form-group">
                        <asp:Label ID="lblCorreo" runat="server" > Correo</asp:Label>
                        <input class="form-control badge-pill border-success" type="email" runat="server" ID="txtCorreo" required/>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblContraseña" runat="server" type="">Contaraseña</asp:Label>
                        <input class="form-control badge-pill border-success" type ="password" runat="server" id="txtContraseña" required/>
                    </div>
                    <asp:Button ID="btnEnviar" runat="server" Text="Iniciar Sesión" OnClick="btnEnviar_Click" CssClass="btn btn-success"></asp:Button><br /> 
                    <asp:Label ID="lblRespuesta" runat="server" Text="Label">HealthyDiet</asp:Label>
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
