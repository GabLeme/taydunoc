<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Maquinas.aspx.cs" Inherits="TayduInc.Maquinas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <meta name="description" content="" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="" />
    <meta property="og:url" content="" />
    <meta property="og:image" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="apple-touch-icon" sizes="57x57" href="img/favicons/apple-icon-57x57.png" />
    <link rel="apple-touch-icon" sizes="60x60" href="img/favicons/apple-icon-60x60.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="img/favicons/apple-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="img/favicons/apple-icon-76x76.png" />
    <link
        rel="apple-touch-icon"
        sizes="114x114"
        href="img/favicons/apple-icon-114x114.png" />
    <link
        rel="apple-touch-icon"
        sizes="120x120"
        href="img/favicons/apple-icon-120x120.png" />
    <link
        rel="apple-touch-icon"
        sizes="144x144"
        href="img/favicons/apple-icon-144x144.png" />
    <link
        rel="apple-touch-icon"
        sizes="152x152"
        href="img/favicons/apple-icon-152x152.png" />
    <link
        rel="apple-touch-icon"
        sizes="180x180"
        href="img/favicons/apple-icon-180x180.png" />
    <link
        rel="icon"
        type="image/png"
        sizes="192x192"
        href="img/favicons/android-icon-192x192.png" />
    <link
        rel="icon"
        type="image/png"
        sizes="32x32"
        href="img/favicons/favicon-32x32.png" />
    <link
        rel="icon"
        type="image/png"
        sizes="96x96"
        href="img/favicons/favicon-96x96.png" />
    <link
        rel="icon"
        type="image/png"
        sizes="16x16"
        href="img/favicons/favicon-16x16.png" />
    <link
        href="https://fonts.googleapis.com/css?family=Montserrat:300,700i|Roboto+Mono:300,300i,700"
        rel="stylesheet" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <link
        rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous" />
    <link
        rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/reset.css" />
    <link rel="stylesheet" type="text/css" href="css/animate.css" />
    <link rel="stylesheet" type="text/css" href="css/computers-dashboard.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Adicionar Computadores</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            X
         
                        </button>
                    </div>
                    <div class="modal-body">
                        <asp:TextBox runat="server" class="input-modal" type="text" ID="txtNomeMaquina" placeholder="Nome da Máquina" />
                    </div>
                    <div class="modal-footer">
                        <asp:Button Text="Adicionar Maquina" runat="server" OnClick="btnAddMaquina_Click" ID="btnAddMaquina" class="btn btn-primary btn-save" />
                    </div>
                </div>
            </div>
        </div>
        <header>
            <div class="container-fluid">
                <div
                    class="navbar navbar-inverse navbar-fixed-top header-menu-mobile"
                    role="navigation"
                    style="display: none;">
                    <div class="container">
                        <div class="navbar-header">
                            <button
                                type="button"
                                class="navbar-toggle navbar-btn"
                                data-toggle="collapse"
                                data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation </span>
                                <span class="icon-bar"></span><span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="#">
                                <p class="logotipo-mobile"></p>
                            </a>
                        </div>

                        <div class="collapse navbar-collapse navbar-style">
                            <ul class="nav navbar-nav">
                                <li>
                                    <a
                                        href="Logout.aspx"
                                        class="visible-xs"
                                        data-toggle="collapse"
                                        data-target=".navbar-collapse">Retornar ao Login</a>
                                </li>
                                <li>
                                    <a
                                        href="#"
                                        class="visible-xs"
                                        data-toggle="collapse"
                                        data-target=".navbar-collapse"
                                        data-toggle="modal"
                                        data-target=".bd-example-modal-sm">Adicionar Computador</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div
                        class="col-lg-12 col-xs-12 header-menu"
                        class="fixar"
                        id="header-menu">
                        <nav>
                            <div class="col-lg-2 col-xs-1 logotipo">
                                <a href="index.html">
                                    <img
                                        src="img/reutilizavel/logotipo-p&b.svg"
                                        alt="Táydu Logotipo" /></a>
                            </div>

                            <div class="col-md-5 col-lg-6 col-xs-6 col-lg-offset-4 ">
                                <ul>
                                    <a href="Logout.aspx">
                                        <li class="link-effect">Retornar ao Login</li>
                                    </a>
                                    <a href="#">
                                        <li data-toggle="modal" data-target=".bd-example-modal-sm" class="link-effect">Adicionar Computador</li>
                                    </a>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </header>

        <section class="general-content">

            <div class="maquinas-usuario">
                <div class="container">
                    <div class="row">
                        <!-- Conteúdo do For -->
                        <asp:Repeater runat="server" ID="listRepeater">
                            <ItemTemplate>
                                <div class="col-lg-3 maquina">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="col-lg-12">
                                                <div class="box-decoration">
                                                    <img src="img/dashboard/dashboard-monitor.png">
                                                </div>
                                                <a href="Dashboard.aspx?COD_MAQUINA=<%#Eval("COD_MAQUINA") %>" class="anchor">
                                                    <p class="box-info"><%#Eval("NOME_MAQUINA") %></p>
                                                    <p class="box-info">Status: <%#Eval("ATIVA") %></p>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="box-identify">
                                                <p class="box-info"><%#Eval("COD_MAQUINA") %></p>
                                                <div class="remove-box"><span>X</span></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <!-- Fim do Conteúdo do For -->
                    </div>
                </div>
            </div>

        </section>

        <div class="smoothscroll-top">
            <span class="scroll-top-inner">
                <img src="img/reutilizavel/goTop-arrow-blue.svg" alt="Go Top" />
            </span>
        </div>

        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/app.js"></script>
    </form>
</body>
</html>
