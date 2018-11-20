<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TayduInc.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta property="og:type" content="website">
    <meta property="og:title" content="">
    <meta property="og:url" content="">
    <meta property="og:image" content="">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="apple-touch-icon" sizes="57x57" href="img/favicons/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="img/favicons/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="img/favicons/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="img/favicons/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="img/favicons/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="img/favicons/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="img/favicons/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="img/favicons/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="img/favicons/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="img/favicons/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="img/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="img/favicons/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="img/favicons/favicon-16x16.png">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Mono" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Kodchasan" rel="stylesheet">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/app.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/normalize.css">
    <link rel="stylesheet" type="text/css" href="css/reset.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/RegisterPage.css">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div class="container-fluid">

                <div class="navbar navbar-inverse navbar-fixed-top header-menu-mobile" role="navigation" style="display: none;">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle navbar-btn" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation </span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="#">
                                <p class="logotipo-mobile"></p>
                            </a>
                        </div>

                        <div class="collapse navbar-collapse navbar-style">
                            <ul class="nav navbar-nav">
                                <li class="active">
                                    <a href="index.html" class="visible-xs active-style" data-toggle="collapse" data-target=".navbar-collapse">Home</a>
                                </li>

                                <li>
                                    <a href="about-us.html" class="visible-xs" data-toggle="collapse" data-target=".navbar-collapse">sobre nós</a>
                                </li>

                                <li>
                                    <a href="index.html/#contate-nos" class="visible-xs" data-toggle="collapse" data-target=".navbar-collapse">contate-nos</a>
                                </li>

                                <li>
                                    <a href="our-solution.html" class="visible-xs" data-toggle="collapse" data-target=".navbar-collapse">ferramenta</a>
                                </li>

                                <li>
                                    <a href="RegisterPage.html" class="visible-xs" data-toggle="collapse" data-target=".navbar-collapse">login</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12 col-xs-12 header-menu" class="fixar" id="header-menu">
                        <nav>
                            <div class="col-lg-2 col-xs-1 logotipo">
                                <a href="index.html">
                                    <img src="img/reutilizavel/logotipo-p&b.svg" alt="Táydu Logotipo"></a>
                            </div>

                            <div class="col-md-5 col-lg-3 col-xs-5 col-md-offset-0 col-lg-offset-3 ">
                                <ul>
                                    <li><a href="about-us.html">sobre nós </a></li>
                                    <li><a href="index.html">contate-nos </a></li>
                                </ul>
                            </div>

                            <div class="col-md-5 col-lg-4 col-xs-6 ">
                                <ul>
                                    <a href="our-solution.html">
                                        <li class="link-effect">ferramenta </li>
                                    </a>
                                    <a href="Login.aspx">
                                        <li class="link-effect">login </li>
                                    </a>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </header>

        <section class="section-register">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="col-lg-4 col-lg-offset-1 col-sm-6 col-xs-12 sign-in">
                            <form action="#" method="post">
                                <p>SIGN IN! </p>
                                <label for="email">
                                    E-MAIL:
                           
                                </label>
                                <asp:TextBox runat="server" ID="txtEmail" />

                                <br>
                                <label for="senha">
                                    SENHA:
                           
                                </label>
                                <asp:TextBox runat="server" ID="txtSenha"/>
                                <br>
                                <asp:Button Text="Login" runat="server" ID="btnLogin" OnClick="btnLogin_Click" />
                                <a href="dashboard.html">.</a>
                            </form>
                        </div>

                        <div class="col-lg-7 col-sm-6 col-xs-12 sign-up">
                                <p>OR SIGN UP! </p>
                                <asp:TextBox runat="server" id="txtEmailCad" placeholder="Email"/>
                                <br/>
                                <asp:TextBox runat="server" id="txtSenhaCad" TextMode="Password" placeholder="Senha"/>
                                <br/>
                                <asp:TextBox runat="server" id="txtSenhaCad1" TextMode="Password" placeholder="Confirmar senha"/>
                                <br/>
                                <asp:Button Text="Cadastrar" ID="btnCadastrar" runat="server" OnClick="btnCadastrar_Click"/>
                                <br />
                                <asp:Label Text="" ID="lblCadastrar" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
