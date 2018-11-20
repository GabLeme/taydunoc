<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="TayduInc.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <meta name="description" content="">
    <meta property="og:type" content="website">
    <meta property="og:title" content="">
    <meta property="og:url" content="">
    <meta property="og:image" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
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
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,700i|Roboto+Mono:300,300i,700" rel="stylesheet">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/normalize.css">
    <link rel="stylesheet" type="text/css" href="css/reset.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/dashboard.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="modal fade bd-example-modal-lg" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
            aria-hidden="true">
            <div class=" modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Perfil do Usuário </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">
                                <p>X</p>
                            </span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container-fluid">
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-lg-12 foto-usuario">
                                        <img src="img/ceos/random.png" alt="Foto do Usuário">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="col-lg-7">
                                            <input class="input-modal" type="text" name="txtNome" placeholder="Nome do Usuário">
                                        </div>
                                        <div class="col-lg-5">
                                            <input class="input-modal" type="date" name="txtNome" placeholder="Data de Nascimento">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="col-lg-5">
                                            <input class="input-modal" type="text" name="txtNome" placeholder="CPF do Usuário">
                                        </div>
                                        <div class="col-lg-5">
                                            <input class="input-modal" id="password" type="password" name="txtNome"
                                                placeholder="Senha do Usuário">
                                        </div>
                                        <div class="col-lg-2">
                                            <input type="button" id="showPassword" value="Revelar" class="input-modal input-modal_show" /></p>
                                   
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-10 col-lg-offset-1">
                                        <input class="input-modal" type="text" name="txtEmail" placeholder="E-mail do Usuário">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="col-lg-3 col-lg-offset-3">
                                        <button type="button" class="btn btn-primary btn-save">Alterar Senha </button>
                                    </div>
                                    <div class="col-lg-3">
                                        <button type="button" class="btn btn-primary btn-save">Alterar E-mail </button>
                                    </div>
                                    <div class="col-lg-3">
                                        <button type="button" class="btn btn-primary btn-save" data-dismiss="modal">
                                            Fechar
                                        Aba
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section class="dashboard">
            <div class="container-fluid">
                <div class="row">
                    <div class=" col-lg-2 menu-vertical_color">
                        <div class="menu-vertical">
                            <div class="menu-vertical_logotipo">
                                <a href="index.html">
                                    <img src="img/reutilizavel/logotipo-p&b.svg" alt="Logotipo Táydu" /></a>
                            </div>
                            <div class="menu-vertical_links">
                                <span>
                                    <img src="img/dashboard/pseudo-information.png">
                                </span>
                                <p class="link-ddl" id="information">Ocultar Informações </p>
                                <div class="ddl">
                                    <div class="ddl_inputs">
                                        <input class="input" type="checkbox" name="usoRAM" checked>
                                        <p class="input_text">Uso de RAM </p>
                                        <br />
                                        <input class="input" type="checkbox" name="usoCPU" checked>
                                        <p class="input_text">Uso de CPU </p>
                                        <br />
                                        <input class="input" type="checkbox" name="atividadeHD" checked>
                                        <p class="input_text">Atividade do HD </p>
                                        <br />
                                        <input class="input" type="checkbox" name="usoHD" checked>
                                        <p class="input_text">Uso do HD </p>
                                        <br />
                                    </div>
                                </div>
                                <ul>
                                    <a href="#"><span>
                                        <img src="img/dashboard/pseudo-report.png">
                                    </span>
                                        <li id="emissao_relatorio">Emitir Relatório </li>
                                    </a>
                                    <a href="#"><span>
                                        <img src="img/dashboard/pseudo-support.png">
                                    </span>
                                        <li id="abrir_chamado">Abrir Chamado </li>
                                    </a>
                                    <a href="#"><span>
                                        <img src="img/dashboard/pseudo-ia.png">
                                    </span>
                                        <li id="assistente_virtual" data-toggle="modal" data-target=".bd-example-modal-sm">Assistente Virtual </li>
                                    </a>
                                    <a href="Logout.aspx"><span>
                                        <img src="img/dashboard/pseudo-exit.png">
                                    </span>
                                        <li id="sair">Sair </li>
                                    </a>
                                </ul>
                            </div>

                        </div>
                    </div>

                    <div class="col-xs-12 col-lg-10 menu-horizontal_color">
                        <div class="menu-horizontal">
                            <div class="row">
                                <div class="col-xs-10 col-lg-3 col-lg-offset-7">
                                    <div class="user-name">
                                        <p class="user-name_text">
                                            <asp:Label Text="" ID="nomeUser" runat="server" />
                                        </p>
                                    </div>
                                </div>
                                <div class="col-xs-2 col-lg-1 col-lg-offset-1">
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                                        <img class="user-photo" src="img/dashboard/pseudo-support.png" alt="Foto do Usuário">
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="graficos-usuario-1" id="graficos-1">
                                    <div class="col-xs-12 col-sm-6 col-lg-3 toggle-1">
                                        <div class="graphs1">
                                            <div class="icone1">
                                                <img src="img/dashboard/icon-ram.png">
                                            </div>
                                            <div class="graphs-gauge" id="ramPercentual" class="200x100"></div>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-6 col-lg-3 toggle-2">
                                        <div class="graphs2">
                                            <div class="icone2">
                                                <img src="img/dashboard/icon-cpu.png">
                                            </div>
                                            <div class="graphs-gauge" id="cpuPercentual" class="200x100"></div>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-6 col-lg-3 toggle-3">
                                        <div class="graphs">
                                            <div class="icone3">
                                                <img src="img/dashboard/icon-atividadeHD.png">
                                            </div>
                                            <div class="graphs-gauge" id="atividadeHdPercentual" class="200x100"></div>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-6 col-lg-3 toggle-4">
                                        <div class="graphs">
                                            <div class="icone4">
                                                <img src="img/dashboard/icon-hd.png">
                                            </div>
                                            <div class="graphs-gauge" id="hdPercentual" class="200x100"></div>
                                        </div>
                                    </div>

                                </div>

                            </div>

                        </div>

                        <div clas="row">
                            <div class="col-xs-12 col-sm-12 col-lg-12">
                                <div class="general_content">
                                    <div class="col-xs-12 col-lg-7">
                                        <div class="analytics">
                                            <div class="tabcontrol">
                                                <div id="tabcontrol-header">
                                                    <ul class="abas">
                                                        <li>
                                                            <div class="aba">
                                                                <span>Analytics 1</span>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="aba">
                                                                <span>Analytics 2</span>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div id="content">
                                                    <div class="conteudo">
                                                        <div class="row">
                                                            <div class="col-xs-12 col-lg-12">
                                                                <div class="col-xs-12 col-sm-6 col-lg-6">
                                                                    <div class="analytics-information">
                                                                        <h3 class="analytics-information_heading">Uso de
                                                                        RAM </h3>
                                                                        <p class="analytics-information_paragraph">
                                                                            Média: <span id="mediaRAM"></span>

                                                                        </p>
                                                                        <p class="analytics-information_paragraph">
                                                                            Mediana: <span id="medianaRam"></span>
                                                                        </p>
                                                                        <p class="analytics-information_paragraph">
                                                                            Mínima: <span id="minRAM"></span>

                                                                        </p>
                                                                        <p class="analytics-information_paragraph">
                                                                            Máxima: <span id="maxRAM"></span>

                                                                        </p>
                                                                        <p class="analytics-information_paragraph">
                                                                            1º
                                                                        Quartil: <span id="1Qram"></span>
                                                                        </p>
                                                                        <p class="analytics-information_paragraph">
                                                                            2º
                                                                        Quartil: <span id="3Qram"></span>
                                                                        </p>
                                                                    </div>
                                                                </div>

                                                                <div class="col-xs-12 col-sm-6 col-lg-6">
                                                                    <div class="analytics-information">
                                                                        <h3 class="analytics-information_heading">CPU </h3>
                                                                        <p class="analytics-information_paragraph">
                                                                            Média: <span id="mediaCPU"></span>

                                                                        </p>
                                                                        <p class="analytics-information_paragraph">
                                                                            Mediana: <span id="medianaCPU"></span>
                                                                        </p>
                                                                        <p class="analytics-information_paragraph">
                                                                            Mínima: <span id="minCPU"></span>

                                                                        </p>
                                                                        <p class="analytics-information_paragraph">
                                                                            Máxima: <span id="maxCPU"></span>

                                                                        </p>
                                                                        <p class="analytics-information_paragraph">
                                                                            1º 
                                                                        Quartil: <span id="1QCPU"></span>
                                                                        </p>
                                                                        <p class="analytics-information_paragraph">
                                                                            3º 
                                                                        Quartil: <span id="3QCPU"></span>
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="conteudo">
                                                        <div class="row">
                                                            <div class="col-xs-12 col-lg-12">
                                                                <div class="col-xs-12 col-sm-6 col-lg-6">
                                                                    <div class="analytics-information">
                                                                        <h3 class="analytics-information_heading">Atividade HD </h3>
                                                                        <p class="analytics-information_paragraph">
                                                                            Média: <span id="mediaHDA"></span>

                                                                        </p>
                                                                        <p class="analytics-information_paragraph">
                                                                            Mediana: <span id="medianaHDA"></span>
                                                                        </p>
                                                                        <p class="analytics-information_paragraph">
                                                                            Mínima: <span id="minHDA"></span>

                                                                        </p>
                                                                        <p class="analytics-information_paragraph">
                                                                            Máxima: <span id="maxHDA"></span>

                                                                        </p>
                                                                        <p class="analytics-information_paragraph">
                                                                            1º
                                                                        Quartil: <span id="1QHDA"></span>
                                                                        </p>
                                                                        <p class="analytics-information_paragraph">
                                                                            3º
                                                                        Quartil: <span id="3QHDA"></span>
                                                                        </p>
                                                                    </div>
                                                                </div>

                                                                <div class="col-xs-12 col-sm-6 col-lg-6">
                                                                    <div class="analytics-information">
                                                                        <h3 class="analytics-information_heading">Uso do
                                                                        HD </h3>
                                                                        <p class="analytics-information_paragraph">
                                                                            Média: <span id="mediaHD"></span>

                                                                        </p>
                                                                        <p class="analytics-information_paragraph">
                                                                            Mediana: <span id="medianaHD"></span>
                                                                        </p>
                                                                        <p class="analytics-information_paragraph">
                                                                            Mínima: <span id="minHD"></span>

                                                                        </p>
                                                                        <p class="analytics-information_paragraph">
                                                                            Máxima: <span id="maxHD"></span>

                                                                        </p>
                                                                        <p class="analytics-information_paragraph">
                                                                            1º
                                                                        Quartil: <span id="1QHD"></span>
                                                                        </p>
                                                                        <p class="analytics-information_paragraph">
                                                                            3º
                                                                        Quartil: <span id="3QHD"></span>
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-lg-4">
                                        <div class="alerts">
                                            <div class="icone9">
                                                <img src="img/dashboard/icon-ram.png">
                                            </div>
                                            <h3 class="alerts_heading">Quadro de Avisos </h3>
                                            <p class="alerts_paragraph"><b id="alertaCpu">{0}</b> Alertas de CPU</p>
                                            <p class="alerts_paragraph"><b id="alertaRam">{0}</b> Alertas de Uso de RAM</p>
                                            <p class="alerts_paragraph"><b id="alertaUsoHd">{0}</b> Alertas de Uso do HD</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </section>

        <div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title chat-title">Táyda</h5>
                        <button type="button" class="close close-chat" data-dismiss="modal" aria-label="Close">
                            X
               
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="chat">
                                        <iframe src="ChatBot.html" height="300"></iframe>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



            <div class="smoothscroll-top">
                <span class="scroll-top-inner">
                    <img src="img/reutilizavel/goTop-arrow-blue.svg" alt="Go Top">
                </span>
            </div>
    </form>
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/app.js"></script>
    <script src="js/raphael-2.1.4.min.js"></script>
    <script src="js/justgage.js"></script>
    <script src="js/Chart.js"></script>
    <script src="js/Chart.min.js"></script>
    <script src="JavaScript/addGraficos.js"></script>
    <script src="JavaScript/enviaNotificacaoTelegram.js"></script>
    <script src="JavaScript/attGraficos.js"></script>
    <script src="JavaScript/Analytics.js"></script>
</body>
</html>
