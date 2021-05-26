<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmPrincipal.aspx.cs" Inherits="HealthyDiet.front.frmPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Index | Healthy Diet</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/bootstrap.js"></script>
    <script src="../Scripts/jquery-3.0.0.js"></script>
</head>
<body>
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
                            <li class="nav-item active"><a class="nav-link" href="frmPrincipal.aspx">Inicio <span class="sr-only">(current)</span></a></li>
                            <li class="nav-item"><a class="nav-link" href="frmLog.aspx">Cerrar sesión</a></li>
                        </ul>
                    </div>
                </nav>
            </header>
        </div>
        <div class="container-fluid bg-transparent">
            <div class="row justify-content-center">
                <h1>Pagina Principal</h1>
            </div>
            <div class="row justify-content-center">
                <div class="col-4 bg-white text-center rounded shadow p-3 m-1">
                    <h5>Información personal</h5>
                    <asp:ImageButton ID="imgInfo" runat="server" ImageUrl="~/images/inf-personal-ico.png" CssClass="img-fluid" OnClick="imgInfo_Click" />
                </div>
                <div class="col-4 bg-white text-center rounded shadow p-3 m-1">
                    <h5>Mi dieta</h5>
                    <asp:ImageButton ID="imgDieta" runat="server" ImageUrl="~/images/inf-dieta-ico.png" CssClass="img-fluid" OnClick="imgDieta_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
