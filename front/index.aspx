<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="HealthyDiet.front.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>HealthyDiet</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/bootstrap.js"></script>
    <script src="../Scripts/jquery-3.0.0.js"></script>
</head>
<body>
    <form id="frmIndex" runat="server">
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
                            <li class="nav-item active"><a class="nav-link" href="index.aspx">Inicio <span class="sr-only">(current)</span></a></li>
                            <li class="nav-item"><a class="nav-link" href="frmLog.aspx">Inicar sesión</a></li>
                        </ul>
                    </div>
                </nav>
            </header>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-12 col-lg-8 h-auto">
                    <div class="bd-example">
                      <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                          <div class="carousel-item active">
                            <img src="../images/carrusel-1.jpg" class="d-block w-100" alt="Manten todo tu organismo con total salud, para una vida mejor."/>
                            <div class="carousel-caption d-none d-md-block">
                              <p></p>
                            </div>
                          </div>
                          <div class="carousel-item">
                            <img src="../images/carrusel-2.jpg" class="d-block w-100" alt="La alimentación es la clave, es importante que la cuides desde ya."/>
                            <div class="carousel-caption d-none d-md-block">
                              <p></p>
                            </div>
                          </div>
                          <div class="carousel-item">
                            <img src="../images/carrusel-3.jpg" class="d-block w-100" alt="Una buena alimentación regula el peso de tu cuerpo."/>
                            <div class="carousel-caption d-none d-md-block">
                              <p></p>
                            </div>
                          </div>
                          <div class="carousel-item">
                            <img src="../images/carrusel-4.jpg" class="d-block w-100" alt="Una buena alimentación regula el peso de tu cuerpo."/>
                            <div class="carousel-caption d-none d-md-block">
                              <p></p>
                            </div>
                          </div>
                          <div class="carousel-item">
                            <img src="../images/carrusel-5.jpg" class="d-block w-100" alt="Una buena alimentación regula el peso de tu cuerpo."/>
                            <div class="carousel-caption d-none d-md-block">
                              <p></p>
                            </div>
                          </div>
                          <div class="carousel-item">
                            <img src="../images/carrusel-6.jpg" class="d-block w-100" alt="Una buena alimentación regula el peso de tu cuerpo."/>
                            <div class="carousel-caption d-none d-md-block">
                              <p></p>
                            </div>
                          </div>
                          <div class="carousel-item">
                            <img src="../images/carrusel-7.jpg" class="d-block w-100" alt="Una buena alimentación regula el peso de tu cuerpo."/>
                            <div class="carousel-caption d-none d-md-block">
                              <p></p>
                            </div>
                          </div>
                          <div class="carousel-item">
                            <img src="../images/carrusel-8.jpg" class="d-block w-100" alt="Una buena alimentación regula el peso de tu cuerpo."/>
                            <div class="carousel-caption d-none d-md-block">
                              <p></p>
                            </div>
                          </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                          <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                          <span class="carousel-control-next-icon" aria-hidden="true"></span>
                          <span class="sr-only">Next</span>
                        </a>
                      </div>
                    </div>
                </div>
                <div class="col-12 col-lg-4 h-auto align-items-center">
                    <br />
                    <div class="form-row align-items-center">
                        <div class="form-group col-auto">
                            <label for="exampleInputEmail1">Correo electrónico</label>
                            <input type="email" class="form-control badge-pill border-success" id="txtEmail" aria-describedby="emailHelp" placeholder="Ingrese su email" />
                        </div>
                        <div class="form-group col-auto">
                            <label for="exampleInputPassword1">Contraseña</label>
                            <input type="password" class="form-control badge-pill border-success" id="txtPass" placeholder="Contraseña" />
                        </div>
                        <div class="form-group col-auto">
                            <button type="submit" class="btn badge-pill btn-outline-success">Iniciar sesión</button>
                        </div>
                    </div>
                    <br />
                    <h1 class="display-4">Nutrición al alcance de la mano</h1>
                    <br />
                    <div>
                        <a class="btn badge-pill btn-success w-100" href="frmRegistro.aspx">REGISTRARME</a>
                        <br />
                        <asp:HyperLink ID="lblLinkLabel" runat="server" CssClass="btn btn-link w-100">Contáctanos</asp:HyperLink>
                    </div>
                </div>
            </div>
            <!--Formulario de registro-->
            <div class="modal fade bd-example-modal-lg" id="modalRegistro" tabindex="-1" role="dialog" aria-labelledby="modalRegistro" aria-hidden="true" aria-describedby="a">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title text" id="exampleModalLabel">CREA TU CUENTA</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body text-center">
                            <form>
                                <div class="form-group row">
                                    <div class="col-md-4">
                                        <label for="staticName" class="col-md-2 col-form-label">Nombre(s)</label>
                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control badge-pill w-75 border-success"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-4">
                                        <label for="staticAPP" class="col-md-2 col-form-label">Apellido paterno</label>
                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control badge-pill w-75 border-success"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-4">
                                        <label for="staticAPM" class="col-md-2 col-form-label">Apellido materno</label>
                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox3" runat="server" class="form-control badge-pill w-75 border-success"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-4">
                                        <label for="staticAPM" class="col-md-2 col-form-label">Correo electrónico</label>
                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox4" runat="server" class="form-control badge-pill w-75 border-success"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-4">
                                        <label for="inputPassword" class="col-md-2 col-form-label">Contraseña</label>
                                    </div>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="TextBox5" runat="server" class="form-control badge-pill w-75 border-success"></asp:TextBox>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer align-self-center">
                            <button type="button" data-toggle="modal" data-target="#modalRegistro" class="btn badge-pill btn-success" runat="server" id="btnInicio">REGISTRARME</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--Formulario de registro-->
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
