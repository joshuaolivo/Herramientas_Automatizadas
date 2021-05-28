<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmDieta.aspx.cs" Inherits="HealthyDiet.front.frmDieta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Dieta | Healthy Diet</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../Content/HealthyDiet.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/bootstrap.js"></script>
    <script src="../Scripts/jquery-3.0.0.js"></script>
</head>
<body class="image-fondo-dieta">
    <form id="form1" runat="server">
        <div class ="cabecera">
            <header>
                <nav class="navbar navbar-expand-lg navbar-dark bg-success ">
                    <a class="navbar-brand" href="frmPrincipal.aspx">
                        <img src="../images/Icon.png" alt="" width="33" height="30" class="d-inline-block align-text-top" />
                        Healthy Diet</a>
                    <button class="navbar-toggler btn-success" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
                        <ul class="nav navbar-nav">
                            <li class="nav-item"><a class="nav-link" href="frmPrincipal.aspx">Inicio</a></li>
                            <li class="nav-item"><a class="nav-link" runat="server" onserverclick="btnCerrarSesion_Click">Cerrar sesión</a></li>
                        </ul>
                    </div>
                </nav>
            </header>
        </div>
        
        <div class="container-fluid bg-transparent">
            <div class="row justify-content-md-center p-1">
                <div class="col-5 bg-white text-center rounded shadow p-3 m-1">
                    <h4>AGREGAR ALIMENTO</h4>
                    <hr />
                    <div class ="row m-1">
                        <div class="col col-8">
                            <asp:TextBox ID="txtAlimento" runat="server" CssClass="form-control border-dark bg-white btn-outline-dark text-black-50 form-control-sm badge-pill"></asp:TextBox>
                        </div>
                        <div class="col col-4">
                            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" CssClass="btn btn-dark badge-pill w-100" /><br />
                        </div>
                    </div>
                    <div class="bg-success text-white">
                        <div class="col p-1">
                            <image src="../images/powered_by_fatsecret.jpg" style="height:20px; width:auto;" />
                        </div>
                    </div>
                    <div>
                        <asp:GridView ID="gridAlimentos" runat="server" CssClass="table table-hover table-borderless table-sm rounded-lg Small shadow" PageSize="3" AllowPaging="True" GridLines="Horizontal" ShowHeader="False" BorderColor="White" BorderStyle="None" OnPageIndexChanging="gridAlimentos_PageIndexChanging" OnRowCommand="gridAlimentos_RowCommand">
                        <Columns>
                            <asp:ButtonField ButtonType="Button" Text="Seleccionar alimento" ControlStyle-CssClass="btn badge-pill btn-outline-success" CommandName="seleccion">
<ControlStyle CssClass="btn badge-pill btn-outline-success"></ControlStyle>
                            </asp:ButtonField>
                        </Columns>
                        <PagerStyle CssClass="Page navigation example" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:GridView>
                    </div>
                </div>
                <div class="col-5 bg-white text-center rounded shadow p-3 m-1">
                    <h3>RESUMEN DEL DIA</h3>
                    <hr />
                    <h5>CALORIAS A CONSUMIR</h5>
                    <div class="row">
                        <div class="col">
                            <p>CALORIAS</p>
                            <asp:Label ID="lblCaloriasAC" runat="server" Text="-"></asp:Label>
                        </div>
                        <div class="col">
                            <p>PROTEINA</p>
                            <asp:Label ID="lblProteinaAC" runat="server" Text="-"></asp:Label>
                        </div>
                        <div class="col">
                            <p>CARBOHIDRATOS</p>
                            <asp:Label ID="lblCarboAC" runat="server" Text="-"></asp:Label>
                        </div>
                        <div class="col">
                            <p>GRASAS</p>
                            <asp:Label ID="lblGrasasAC" runat="server" Text="-"></asp:Label>
                        </div>
                    </div>
                    <h5>CALORIAS CONSUMIDAS</h5>
                    <div class="row">
                        <div class="col">
                            <p>CALORIAS</p>
                            <asp:Label ID="lblCaloriasC" runat="server" Text="-"></asp:Label>
                        </div>
                        <div class="col">
                            <p>PROTEINA</p>
                            <asp:Label ID="lblProteinaC" runat="server" Text="-"></asp:Label>
                        </div>
                        <div class="col">
                            <p>CARBOHIDRATOS</p>
                            <asp:Label ID="lblCarboC" runat="server" Text="-"></asp:Label>
                        </div>
                        <div class="col">
                            <p>GRASAS</p>
                            <asp:Label ID="lblGrasasC" runat="server" Text="-"></asp:Label>
                        </div>
                    </div>
                    <h5>CALORIAS FALTANTES</h5>
                    <div class="row">
                        <div class="col">
                            <p>CALORIAS</p>
                            <asp:Label ID="lblCaloriasF" runat="server" Text="-"></asp:Label>
                        </div>
                        <div class="col">
                            <p>PROTEINA</p>
                            <asp:Label ID="lblProteinaF" runat="server" Text="-"></asp:Label>
                        </div>
                        <div class="col">
                            <p>CARBOHIDRATOS</p>
                            <asp:Label ID="lblCarboF" runat="server" Text="-"></asp:Label>
                        </div>
                        <div class="col">
                            <p>GRASAS</p>
                            <asp:Label ID="lblGrasasF" runat="server" Text="-"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-md-center">
                <div class="col-lg-10 bg-white text-center rounded shadow p-3">
                    <h2>MENU DEL DIA</h2>
                    <hr />
                    <div class="row justify-content-md-center">
                        <div class="col-md-auto">
                            Por cada<br />
                            <asp:Label ID="lblMedida" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="col-md-auto">
                            Comida<br />
                            <asp:TextBox ID="txtComida" runat="server" CssClass="form-control border-dark bg-white btn-outline-dark text-black-50 form-control-sm badge-pill"></asp:TextBox>
                        </div>
                        <div class="col-md-auto">
                            Calorias<br />
                            <asp:TextBox ID="txtCal" runat="server" CssClass="form-control border-dark bg-white btn-outline-dark text-black-50 form-control-sm badge-pill"></asp:TextBox>
                        </div>
                        <div class="col-md-auto">
                            Carbohidratos<br />
                            <asp:TextBox ID="txtCarbos" runat="server" CssClass="form-control border-dark bg-white btn-outline-dark text-black-50 form-control-sm badge-pill"></asp:TextBox>
                        </div>
                        <div class="col-md-auto">
                            Proteinas<br />
                            <asp:TextBox ID="txtProte" runat="server" CssClass="form-control border-dark bg-white btn-outline-dark text-black-50 form-control-sm badge-pill"></asp:TextBox>
                        </div>
                        <div class="col-md-auto">
                            Grasas<br />
                            <asp:TextBox ID="txtGrasas" runat="server" CssClass="form-control border-dark bg-white btn-outline-dark text-black-50 form-control-sm badge-pill"></asp:TextBox>
                        </div>
                        <br />
                    </div>
                    <div class="row justify-content-center p-4">
                        <asp:Button ID="btnAdd" runat="server" Text="AGREGAR" CssClass="btn badge-pill btn-outline-success" OnClick="btnAdd_Click"/>
                    </div>
                    <div>
                        <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-sm table-borderless rounded-lg" HeaderStyle-CssClass="table-active">
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>   
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
