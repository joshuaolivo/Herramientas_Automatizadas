<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmRegistro.aspx.cs" Inherits="HealthyDiet.front.frmRegistro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro | Healthy Diet</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../Content/HealthyDiet.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/bootstrap.js"></script>
    <script src="../Scripts/jquery-3.0.0.js"></script>
</head>
<body class="image-fondo-registro">
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
                            <li class="nav-item"><a class="nav-link" href="frmLog.aspx">Inicar sesión</a></li>
                        </ul>
                    </div>
                </nav>
            </header>
        </div>
        <div class="container bg-transparent">
            <div class="row justify-content-md-center p-3">
                <div class="col-lg-6 bg-white text-center rounded shadow">
                    <h1 class="align-self-center">CREAR CUENTA</h1>
                    <hr />
                    <div class="form-group">
                        <label class="h6 w-75" for="inputName">Nombre</label>
                        <input class="form-control badge-pill w-100 border-success" ID="txtNombre" runat="server" />
                    </div>
                    <div class="form-group">
                        <label class="h6 w-75" for="inputAPP">Apellido Paterno</label>
                        <input class="form-control badge-pill w-100 border-success" ID="txtApPaterno" runat="server" />
                    </div>
                    <div class="form-group">
                        <label class="h6 w-75" for="inputAPM">Apellido Paterno</label>
                        <input class="form-control badge-pill w-100 border-success" type ="text" id="txtApMaterno" runat ="server" />
                    </div>
                    <div class="form-group">
                        <label class="h6 w-75" for="inputSex">Sexo</label>
                        <asp:DropDownList ID="ddlSexo" runat="server" class="form-control dropdown-toggle badge-pill w-100 border-success">
                            <asp:ListItem Value="0">Selecciona una opción</asp:ListItem>
                            <asp:ListItem Value="H">Masculino</asp:ListItem>
                            <asp:ListItem Value="M">Femenino</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label class="h6 w-75" for="inputEdad">Edad</label>
                        <input class="form-control badge-pill w-100 border-success" type="number" id ="txtEdad" runat ="server" />
                    </div>
                    <div class="form-group">
                        <label class="h6 w-75" for="inputCorreo">Correo electrónico</label>
                        <input class="form-control badge-pill w-100 border-success" type ="email" id ="txtCorreo" runat ="server" />
                    </div>
                    <div class="form-group">
                        <label class="h6 w-75" for="inputCorreoConfirm">Confirme su correo electrónico</label>
                        <input class="form-control badge-pill w-100 border-success" type ="email" id ="txtCorreo2" runat ="server" />
                    </div>
                    <div class="form-group">
                        <label class="h6 w-75" for="inputPass">Contraseña</label>
                        <input class="form-control badge-pill w-100 border-success" type="password" id ="txtContraseña" runat ="server" />
                    </div>
                    <div class="form-group">
                        <label class="h6 w-75" for="inputPassConfirm">Confirme su contraseña</label>
                        <input class="form-control badge-pill w-100 border-success" type="password" id ="txtContraseña2" runat ="server" />
                    </div>
                    <div class="form-group">
                        <div class="align-self-center w-100">
                            <asp:Button CssClass="btn badge-pill btn-success w-25" OnClick="btnRegistrar_Click" ID="btnRegistrar" runat="server" Text="Registrar" />
                        </div>
                        <div>
                            <asp:Label ID="lblRespuesta" runat="server" Text=""></asp:Label>
                        </div>
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
