<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Usher</title>
<meta name="ROBOTS" content="NOINDEX, NOFOLLOW">
<link href="css/font-awesome.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/animate.css" rel="stylesheet" type="text/css">
<link href="css/admin.css" rel="stylesheet" type="text/css">
<link href="plugins/data-tables/DT_bootstrap.css" rel="stylesheet">
<!-- <link rel="shortcut icon" href="images/BauerMecanicaLogo2.png" /> -->

<script src="js/jquery-1.12.js"></script>
 <script src="js/jPushMenu.js"></script> 
<script src="js/side-chats.js"></script>

<style>
i.fas {
    font-family: "FontAwesome";
    font-style: unset;
    color: gray
}
div.info-server {
  min-height: 88px;
}
div.info-server>div {
  margin-top: 0.5em;
}
#sessionField,
div.info-server span {
  text-transform: uppercase;
  text-align: center;
}
.sem-off i.fas,
.sem-suspended i.fas {
  color: red;
}
.sem-starting i.fas,
.sem-suspending i.fas,
.sem-restarting i.fas {
  color: orange;
}
.sem-working i.fas {
  color: greenyellow;
}
</style>

<script type="application/javascript"> 
var statusMap = {
    "off" : "detenido", 
    "starting" : "iniciando",
    "working" : "activo",
    "suspending" : "deteniendo",
    "suspended" : "detenido",
    "restarting" : "reiniciando"
};

function beginSession() {
    var action = "starting";
		var comentario = "Sesion nueva";
    setSessionStatus(action);
    setCronServerStatus(action);
	  /* INICIA SESSION */  
    $.post(
        'https://usher.sytes.net/usher-api/session_mgmt?token=48370255gBrgdlpl050588',
        {
          action: "start", 
          comment: comentario,
        })
        .done(function(data) {
          console.log(data);
          if (data.succes == true){
            console.log("SESION INICIADA");
            /* INICIA CAMSERVER */
            $.ajax({
                Type: 'GET', 
                url: 'https://usher.sytes.net/usher-api/cnnmanage?id=SVR1&status='+action+'&token=48370255gBrgdlpl050588',
                dataType: "text", 		
                success: function (data) {
                  if(data == 'Succesfull'){
                    console.log("RN INICIADA");
                    /* INICIA CRONSERVER */
                    $.ajax({
                        Type: 'GET', 
                        url: 'https://usher.sytes.net/usher-api/cronmanage?id=SYNC1&status='+action+'&token=48370255gBrgdlpl050588',
                        dataType: "text", 		
                        success: function (data) {
                          if(data == 'Succesfull'){
                            console.log("CRON SYNC INICIADO");
                          }
                        }
                    });
                    // Informamos a pesar que el CronServer no inicie
                    alert("SESION INICIADA"); 
                    $('#sessionField').val("SESION INICIADA");
                  }
                }
            });
          }
        }
    );
} 

function endSession() {
    var action = "suspending";
    setSessionStatus(action);
    setCronServerStatus(action);
    $.post(
        'https://usher.sytes.net/usher-api/session_mgmt?token=48370255gBrgdlpl050588',
        {action: "end",})
        .done(function(data) {
          console.log(data);
          if (data.succes == true){
            console.log("SESION FINALIZADA");
            /* GENERA ESTADISTICAS MIEMBROS */
            $.post('https://usher.sytes.net/usher-api/fill_member_hist?token=48370255gBrgdlpl050588')
              .done(function(data) {
                console.log(data);
                if (data.succes == true){
                    console.log("ESTADISTICAS DE MIEMBRO CARGADAS");
                }
              });
            
            /* FINALIZA CAMSERVER */
            $.ajax({
                Type: 'GET', 
                url: 'https://usher.sytes.net/usher-api/cnnmanage?id=SVR1&status='+action+'&token=48370255gBrgdlpl050588',
                dataType: "text", 		
                success: function (data) {
                  if(data == 'Succesfull'){
                    console.log("RN DETENIDA");
                    /* FINALIZA CRONSERVER */
                    $.ajax({
                        Type: 'GET', 
                        url: 'https://usher.sytes.net/usher-api/cronmanage?id=SYNC1&status='+action+'&token=48370255gBrgdlpl050588',
                        dataType: "text", 		
                        success: function (data) {
                          if(data == 'Succesfull'){
                            console.log("CRON SYNC DETENIDO");
                          }
                        }
                    });
                    // Informamos a pesar que el CronServer no finalice
                    alert("SESION FINALIZADA"); 
                    $('#sessionField').val("SESION FINALIZADA");
                  }
                }
            });
          }
        }
    );
    statusSession();
}

function restartServices() {
  var action = "restarting";
  /* REINICIA CAMSERVER */
  setCamServerStatus(action);
  $.ajax({
      Type: 'GET', 
      url: 'https://usher.sytes.net/usher-api/cnnmanage?id=SVR1&status='+action+'&token=48370255gBrgdlpl050588',
      dataType: "text", 		
      success: function (data) {
        if(data == 'Succesfull'){
          console.log("RN REINICIADA");
        }
      }
  });

  /* REINICIA CRONSERVER */
  setCronServerStatus("restarting");
  $.ajax({
      Type: 'GET', 
      url: 'https://usher.sytes.net/usher-api/cronmanage?id=SYNC1&status='+action+'&token=48370255gBrgdlpl050588',
      dataType: "text", 		
      success: function (data) {
        if(data == 'Succesfull'){
          console.log("CRON SYNC REINICIADO");
        }
      }
  });
  statusServices();
} 
function statusSession() {
    $.ajax({
        Type: 'POST', 
        url: 'https://usher.sytes.net/usher-api/cnnmanage?id=SVR1&status=getstatus&token=48370255gBrgdlpl050588',
        dataType: "text", 		
        success: setSessionStatus
    });
    statusServices();
}

function statusServices() {
    $.ajax({
        Type: 'POST', 
        url: 'https://usher.sytes.net/usher-api/cnnmanage?id=SVR1&status=getstatus&token=48370255gBrgdlpl050588',
        dataType: "text", 		
        success: setCamServerStatus
    });
    $.ajax({
        Type: 'POST', 
        url: 'https://usher.sytes.net/usher-api/cronmanage?id=SYNC1&status=getstatus&token=48370255gBrgdlpl050588',
        dataType: "text", 		
        success: setCronServerStatus
    });
}

function setSessionStatus(data) {
  var txtdata = statusMap[data];
  if (['starting','working'].includes(data)) {
    $('#startSessionButton').prop("disabled",true);
    $('#endSessionButton').prop("disabled",false);
  }else{
    $('#startSessionButton').prop("disabled",false);
    $('#endSessionButton').prop("disabled",true);
  }
  $('#sessionField').val(txtdata);
  $('#session-st').removeClass().addClass('sem-'+data)
  .children('span').text(txtdata);
  // setea session con estado de camserver
  setCamServerStatus(data);
}
function setCamServerStatus(data) {
  var txtdata = statusMap[data];
  $('#camserver-st').removeClass().addClass('sem-'+data)
  .children('span').text(txtdata);
}
function setCronServerStatus(data) {		        	
  var txtdata = statusMap[data];
  $('#cronserver-st').removeClass().addClass('sem-'+data)
  .children('span').text(txtdata);
}

$(document).ready(function() {
$("#startSessionButton").on("click", beginSession);
$("#endSessionButton").on("click", endSession); 
$("#restartServerButton").on("click", restartServices); 
 

statusSession(); 

});  
</script>
</head>
  <body onload="setInterval('statusSession()',5000);" class="light_theme left_nav_fixed atm-spmenu-push" >
    <div class="wrapper">
      <!--\\\\\\\ wrapper Start \\\\\\-->
      <div class="header_bar">

          <!--\\\\\\\ header Start \\\\\\-->
          <div class="brand">
              <!--\\\\\\\ brand Start \\\\\\-->
              <div class="logo" style="display:block">admin <span class="theme_color">USHER</span></div>
          </div>

      </div>
      <!--\\\\\\\ brand end \\\\\\-->
      <div class="header_top_bar" style="background-image: url(images/usherBanner.jpg)">
          <!--\\\\\\\ header top bar start \\\\\\-->
      </div>
      <!--\\\\\\\ header top bar end \\\\\\-->
  </div>
  <!--\\\\\\\ header end \\\\\\-->

  <div class="left_nav">
      <!--\\\\\\\left_nav start \\\\\\-->
      <div class="search_bar"> <i class="fa fa-home"></i>
          <a type="text" class="search" href="index.jsp">INICIO</a>
      </div>
      <div class="slimScrollDiv" style="position: relative; width: auto; height: 70px;">
          <div class="left_nav_slidebar">
              <ul>
                  <li><a href="user2">USUARIOS</a>
                      <li><a href="member2">DIPUTADOS</a></li>
                      <li><a href="bench2">BANCAS</a></li>
                      <li><a href="block2">BLOQUES</a></li>
                      <li><a href="quorumPanel">QUORUM</a></li>
                      <li><a href="benchAssociation1">ASOCIAR DIPUTADO</a></li>
                      <li><a href="benchAssociation2">DESASOCIAR DIPUTADO</a></li>
                      <li><a href="blockAssociation1">ASOCIAR BLOQUE POLITICO</a></li>
                      <li><a href="blockAssociation2">DESASOCIAR BLOQUE POLITICO</a></li>
              </ul>
          </div>
          <div class="slimScrollBar" style="background: rgb(161, 178, 189); width: 5px; position: absolute; top: 0px; border-radius: 7px; z-index: 99; right: 1px; height: 30px; display: none; opacity: 0.4;"></div>
          <div class="slimScrollRail" style="width: 5px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
      </div>
  </div>
  <!--\\\\\\\left_nav end \\\\\\-->
  <div class="contentpanel" style="background-color:#F6F6F6">
      <!--\\\\\\\ contentpanel start\\\\\\-->
      <div class="pull-left breadcrumb_admin clear_both">
          <div class="pull-left page_title theme_color">
              <h1>MENU PRINCIPAL</h1>
          </div>
          <div class="pull-right">
              <ol class="breadcrumb">
                  <li><a href="#">Principal</a></li>
                  <li><a href="#">SESIÓN PLEANARIA</a></li>

              </ol>
          </div>
      </div>
      <div class="container clear_both padding_fix">
          <!--\\\\\\\ container  start \\\\\\-->

          <div id="main-content">
              <div class="page-content">

                  <p><b>SESIÓN PLENARIA</b></p>

                  <hr />

                  <div class="row">
                      <div class="col-md-6">
                          <div class="block-web">

                              <div class="porlets-content">

                                  <div class="form-group">
                                      <label class="col-sm-3 control-label" style="margin-top: 4px;">ESTADO: </label>
                                      <div class="col-sm-9">
                                          <input id=sessionField placeholder="Estado de la sesion" readonly/>
                                      </div>
                                  </div>
                                  <!--/form-group-->

                                  <br>
                                  <br>
                                  <button class="btn btn-primary" id="startSessionButton">INICIAR</button>
                                  <button class="btn btn-primary" id="endSessionButton">FINALIZAR</button>
                                  <button class="btn btn-primary" id="restartServerButton">REINICIAR SERVIDORES</button>
                              </div>
                              <!--/porlets-content-->
                          </div>
                          <!--/block-web-->
                      </div>
                      <div class="col-md-6">
                          <div class="block-web">
                              <div class="porlets-content info-server">
                                <div id="session-st" class="sem-off"><i class="fas fa-circle"></i>&nbsp;&nbsp;Sesión Parlamentaria: <span>...</span></div>
                                <div id="camserver-st" class="sem-off"><i class="fas fa-circle"></i>&nbsp;&nbsp;Servidor de Cámaras: <span>...</span></div>
                                <div id="cronserver-st" class="sem-off"><i class="fas fa-circle"></i>&nbsp;&nbsp;Servidor de Estadísticas: <span>...</span></div>
                              </div>
                              <!--/porlets-content-->
                          </div>
                          <!--/block-web-->
                      </div>
                  </div>
                  <hr />
              </div>

          </div>

      </div>

  </div>
</body>
</html>