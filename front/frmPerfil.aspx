<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmPerfil.aspx.cs" Inherits="HealthyDiet.front.frmPerfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mi perfil | Healthy Diet</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../Content/HealthyDiet.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/bootstrap.js"></script>
    <script src="../Scripts/jquery-3.0.0.js"></script>
</head>
<body class="image-fondo-perfil">
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
                            <li class="nav-item"><a class="nav-link" href="frmLog.aspx">Cerrar sesión</a></li>
                        </ul>
                    </div>
                </nav>
            </header>
        </div>
        <!--
        <div class="nav bg-white m-0 p-0 justify-content-center">
            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                <li class="nav-item p-1">
                    <a class="nav-link active btn-outline-success" id="pills-home-tab" data-toggle="pill" href="#pills-resumen" role="tab" aria-controls="pills-resumen" aria-selected="true">Resumen</a>
                </li>
                <li class="nav-item p-1">
                    <a class="nav-link btn-outline-success" id="pills-profile-tab" data-toggle="pill" href="#pills-edicion" role="tab" aria-controls="pills-edicion" aria-selected="false">Editar información</a>
                </li>
            </ul>
        </div>
        -->
        <div class="container bg-transparent tab-content" id="pills-tabContent">
            <div class="row justify-content-md-center p-1 tab-pane fade show active h-75" id="pills-resumen" role="tabpanel" aria-labelledby="pills-resumen-tab">
                <div class="col bg-white text-center rounded shadow p-3 m-1">
                    <h3>Tu información personal</h3>
                    <hr />
                    <div class="row p-1 justify-content-center">
                        <div class="col col-3">
                            Nombre: 
                        </div>
                        <div class="col col-4">
                            <asp:Label ID="lblNombre" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                    <div class="row p-1 justify-content-center">
                        <div class="col col-3">
                            Apellido Paterno: 
                        </div>
                        <div class="col col-4">
                            <asp:Label ID="lblApP" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                    <div class="row p-1 justify-content-center">
                        <div class="col col-3">
                            Apellido Materno: 
                        </div>
                        <div class="col col-4">
                            <asp:Label ID="lblApM" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                    <div class="row p-1 justify-content-center">
                        <div class="col col-3">
                            Edad: 
                        </div>
                        <div class="col col-4">
                            <asp:Label ID="lblEdad" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                    <div class="row p-1 justify-content-center">
                        <div class="col col-3">
                            Altura: 
                        </div>
                        <div class="col col-4">
                            <asp:Label ID="lblAltura" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                    <div class="row p-1 justify-content-center">
                        <div class="col col-3">
                            Peso: 
                        </div>
                        <div class="col col-4">
                            <asp:Label ID="lblPeso" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                    <div class="alert alert-info">
                        Información registrada el: <asp:Label ID="lblFecha" runat="server" Text="Fecha"></asp:Label>
                    </div>
                </div>
                <div class="col bg-white text-center rounded shadow p-3 m-1">
                    <h3>Resumen del día</h3>
                    <hr />
                    <h5><span class="badge badge-secondary">Consumo basal: <asp:Label ID="lblCBasal" runat="server" Text="Label"></asp:Label></span></h5><br />
                    <div class="row justify-content-center">
                        <div class="col col-3">
                            Calorias:
                        </div>
                        <div class="col col-4">
                            <asp:Label ID="lblCalorias" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col col-3">

                        </div>
                        <div class="col col-4">

                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col col-3">

                        </div>
                        <div class="col col-4">

                        </div>
                    </div>
                </div>
            </div>
            <!--
            <div class="row justify-content-md-center p-1 tab-pane fade h-75" id="pills-edicion" role="tabpanel" aria-labelledby="pills-edicion-tab">
                <div class="col bg-white text-center rounded shadow p-3 m-1">
                    <h3>Editar mi información</h3>
                    <hr />
                    <div class="row p-1 justify-content-center">
                        <div class="col col-3">
                            Nombre: 
                        </div>
                        <div class="col col-4">
                            <asp:TextBox ID="txtNombreEdit" runat="server" CssClass="form-control badge-pill w-100 border-success"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row p-1 justify-content-center">
                        <div class="col col-3">
                            Apellido Paterno: 
                        </div>
                        <div class="col col-4">
                            <asp:TextBox ID="txtApPEdit" runat="server" CssClass="form-control badge-pill w-100 border-success"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row p-1 justify-content-center">
                        <div class="col col-3">
                            Apellido Materno: 
                        </div>
                        <div class="col col-4">
                            <asp:TextBox ID="txtApMEdit" runat="server" CssClass="form-control badge-pill w-100 border-success"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row p-1 justify-content-center">
                        <div class="col col-3">
                            Edad: 
                        </div>
                        <div class="col col-4">
                            <asp:TextBox ID="txtEdadEdit" runat="server" CssClass="form-control badge-pill w-100 border-success"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row p-1 justify-content-center">
                        <div class="col col-3">
                            Altura: 
                        </div>
                        <div class="col col-4">
                            <asp:TextBox ID="txtAlturaEdit" runat="server" CssClass="form-control badge-pill w-100 border-success"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row p-1 justify-content-center">
                        <div class="col col-3">
                            Peso: 
                        </div>
                        <div class="col col-4">
                            <asp:TextBox ID="txtPesoEdit" runat="server" CssClass="form-control badge-pill w-100 border-success"></asp:TextBox>
                        </div>
                    </div>
                    <hr />
                    <div class="row p-1 justify-content-center">
                        <div class="col col-2">
                            Contraseña: 
                        </div>
                        <div class="col col-3">
                            <asp:TextBox ID="txtPass" runat="server" CssClass="form-control badge-pill w-100 border-success"></asp:TextBox>
                        </div>
                    </div>
                    <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" CssClass="btn btn-success align-self-center badge-pill w-25" />
                </div>
            </div>
            -->
        </div>
        
        <asp:ScriptManager ID="smPageManager" ScriptMode="Release" runat="server">
            <Scripts>
                <asp:ScriptReference Path="../Scripts/bootstrap.js" />
                <asp:ScriptReference Path="../Scripts/jquery-3.0.0.js" />
                <asp:ScriptReference Path="../Scripts/popper.js" />
            </Scripts>
        </asp:ScriptManager>
    </form>
</body>
</html>
