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

<script type="application/javascript"> 
$(document).ready(function() {
$("#startSessionButton").on("click", beginSession);
$("#endSessionButton").on("click", endSession); 
 
function beginSession() {
		var comentario = "Sesion nueva";
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
                url: 'https://usher.sytes.net/usher-api/cnnmanage?id=SVR1&status=starting&token=48370255gBrgdlpl050588',
                dataType: "text", 		
                success: function (data) {
                  console.log("RN INICIADA");
                  if(data == 'Succesfull'){
                    /* INICIA CRONSERVER */
                    $.ajax({
                        Type: 'GET', 
                        url: 'https://usher.sytes.net/usher-api/cronmanage?id=SYNC1&status=starting&token=48370255gBrgdlpl050588',
                        dataType: "text", 		
                        success: function (data) {
                          console.log("CRON SYNC INICIADO");
                          if(data == 'Succesfull'){
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
	              
    $.post(
        'https://usher.sytes.net/usher-api/session_mgmt?token=48370255gBrgdlpl050588',
        {action: "end",})
        .done(function(data) {
          console.log(data);
          if (data.succes == true){
            console.log("SESION FINALIZADA");
            $.ajax({
                Type: 'GET', 
                url: 'https://usher.sytes.net/usher-api/cnnmanage?id=SVR1&status=suspending&token=48370255gBrgdlpl050588',
                dataType: "text", 		
                success: function (data) {
                  console.log("RN DETENIDA");
                  if(data == 'Succesfull'){
                    /* FINALIZA CRONSERVER */
                    $.ajax({
                        Type: 'GET', 
                        url: 'https://usher.sytes.net/usher-api/cronmanage?id=SYNC1&status=suspending&token=48370255gBrgdlpl050588',
                        dataType: "text", 		
                        success: function (data) {
                          console.log("CRON SYNC DETENIDO");
                          if(data == 'Succesfull'){
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
}

function statusSession() {
    
    $.ajax({
        Type: 'POST', 
        url: 'https://usher.sytes.net/usher-api/cnnmanage?id=SVR1&status=getstatus&token=48370255gBrgdlpl050588',
        dataType: "text", 		
        success: function (data) {		        	
			        		   
			        		$('#sessionField').val(data);                   
			        	
        		}
    });
}

statusSession(); 

});  
</script>
</head>
<body class="light_theme left_nav_fixed atm-spmenu-push" >
<div class="wrapper">
  <!--\\\\\\\ wrapper Start \\\\\\-->
  <div class="header_bar">
  
    <!--\\\\\\\ header Start \\\\\\-->
    <div class="brand">
      <!--\\\\\\\ brand Start \\\\\\-->
      <div class="logo" style="display:block">admin <span class="theme_color">USHER</span></div></div>
    
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
      <div class="slimScrollDiv" style="position: relative; width: auto; height: 70px;"><div class="left_nav_slidebar" >
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
      </div><div class="slimScrollBar" style="background: rgb(161, 178, 189); width: 5px; position: absolute; top: 0px; border-radius: 7px; z-index: 99; right: 1px; height: 30px; display: none; opacity: 0.4;"></div><div class="slimScrollRail" style="width: 5px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
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
 
 				<div class="form-group" > 
                  <label class="col-sm-3 control-label">ESTADO: </label> 
                  <div class="col-sm-9">
                    <input id=sessionField placeholder="Estado de la session" readonly/>
                  </div>
                </div><!--/form-group-->
 
 <br><br> 
             <button class="btn btn-primary" id="startSessionButton">INICIAR</button>
            <button class="btn btn-primary" id="endSessionButton">FINALIZAR</button>
 			</div><!--/porlets-content-->
          </div><!--/block-web--> 
        </div><!--/col-md-6-->		</div>
		<hr />
		</div>
		
		
		</div>
		
		</div>

		</div>

</html>