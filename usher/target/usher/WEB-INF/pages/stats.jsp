<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Bauer mecanica integral</title>
<meta name="ROBOTS" content="NOINDEX, NOFOLLOW">
<link href="css/font-awesome.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/animate.css" rel="stylesheet" type="text/css">
<link href="css/admin.css" rel="stylesheet" type="text/css">
<link href="plugins/data-tables/DT_bootstrap.css" rel="stylesheet">
<link rel="shortcut icon" href="images/BauerMecanicaLogo2.png" />

<script src="js/jquery-1.12.js"></script>
<!-- <script src="js/bootstrap.min.js"></script> -->
 <!-- <script src="js/jquery.slimscroll.min.js"></script> -->
<!-- <script src="plugins/data-tables/DT_bootstrap.js"></script> -->
	<link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
	  <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
	  <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
	
	  <script>
	  $(function() {
		  
	    $( "#datepicker" ).datepicker({ 
	    	
	    	onSelect: function(selected){$( "#datepicker1" ).datepicker("option","minDate",selected)},
	    	
	    	dateFormat: 'yy-mm-dd',
	    	closeText: "Cerrar",
	    	prevText: "&#x3C;Ant",
	    	nextText: "Sig&#x3E;",
	    	currentText: "Hoy",
	    	monthNames: [ "enero","febrero","marzo","abril","mayo","junio",
	    	"julio","agosto","septiembre","octubre","noviembre","diciembre" ],
	    	monthNamesShort: [ "ene","feb","mar","abr","may","jun",
	    	"jul","ago","sep","oct","nov","dic" ],
	    	dayNames: [ "domingo","lunes","martes","miércoles","jueves","viernes","sábado" ],
	    	dayNamesShort: [ "dom","lun","mar","mié","jue","vie","sáb" ],
	    	dayNamesMin: [ "D","L","M","X","J","V","S" ]});
	    
	    $( "#datepicker1" ).datepicker({
	    	
	    	onSelect: function(selected){$( "#datepicker" ).datepicker("option","maxDate",selected)},
	
	    	
	    	dateFormat: 'yy-mm-dd',    	
	    	closeText: "Cerrar",
	    	prevText: "&#x3C;Ant",
	    	nextText: "Sig&#x3E;",
	    	currentText: "Hoy",
	    	monthNames: [ "enero","febrero","marzo","abril","mayo","junio",
	    	"julio","agosto","septiembre","octubre","noviembre","diciembre" ],
	    	monthNamesShort: [ "ene","feb","mar","abr","may","jun",
	    	"jul","ago","sep","oct","nov","dic" ],
	    	dayNames: [ "domingo","lunes","martes","miércoles","jueves","viernes","sábado" ],
	    	dayNamesShort: [ "dom","lun","mar","mié","jue","vie","sáb" ],
	    	dayNamesMin: [ "D","L","M","X","J","V","S" ]    	   	
	    	 });   
	    });
	
	  </script>
 
 <script src="js/jPushMenu.js"></script> 
<script src="js/side-chats.js"></script>

</head>
<body class="light_theme left_nav_fixed atm-spmenu-push" style="">
<div class="wrapper">
  <!--\\\\\\\ wrapper Start \\\\\\-->
  <div class="header_bar">
  
    <!--\\\\\\\ header Start \\\\\\-->
    <div class="brand">
      <!--\\\\\\\ brand Start \\\\\\-->
      <div class="logo" style="display:block">Mecanica <span class="theme_color">BAUER</span></div></div>
    
    </div>
    <!--\\\\\\\ brand end \\\\\\-->
    <div class="header_top_bar" style="background-image: url(images/BauerBannerDefinitivo.png)">
      <!--\\\\\\\ header top bar start \\\\\\-->
      <a href="javascript:void(0);" class="menutoggle"> <i class="fa fa-bars"></i> </a>
      
    </div>
    <!--\\\\\\\ header top bar end \\\\\\-->
  </div>
  <!--\\\\\\\ header end \\\\\\-->
  <div class="inner">
    <!--\\\\\\\ inner start \\\\\\-->
    <div class="left_nav">
      <!--\\\\\\\left_nav start \\\\\\-->
      <div class="search_bar"> <i class="fa fa-home"></i>
        <a type="text" class="search" href="index.jsp">INICIO</a>
      </div>
      <div class="slimScrollDiv" style="position: relative; width: auto; height: 70px;"><div class="left_nav_slidebar" >
        <ul>
<li><a href="client2">CLIENTES</a></li><li><a href="car2">AUTOS</a></li>
<li><a href="sale">VENTA</a></li>
<li><a href="sale2">HISTORIAL DE VENTAS</a></li>
<li><a href="provider2">PROVEEDORES</a></li>
<li><a href="purchase">COMPRA</a></li>
<li><a href="purchase2">HISTORIAL DE COMPRAS</a></li>
<li><a href="product2">PRODUCTOS</a></li>
<li><a href="manualJob2">SERVICIOS</a></li>
<li><a href="listStockUnderMin">REPORTE DE STOCK</a></li>
<li><a href="trip2">VIAJES</a></li>
<li><a href="stats1">INFORMES</a></li>  
      </ul>
      </div><div class="slimScrollBar" style="background: rgb(161, 178, 189); width: 5px; position: absolute; top: 0px; border-radius: 7px; z-index: 99; right: 1px; height: 30px; display: none; opacity: 0.4;"></div><div class="slimScrollRail" style="width: 5px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
    </div>
    <!--\\\\\\\left_nav end \\\\\\-->
    <div class="contentpanel" style="background-image: url('images/MECANICABAUER2.jpg')">
      <!--\\\\\\\ contentpanel start\\\\\\-->
      <div class="pull-left breadcrumb_admin clear_both">
        <div class="pull-left page_title theme_color">
          <h1>GENERAR INFORME</h1>
          
          </div>
        <div class="pull-right">
          <ol class="breadcrumb">
            <li><a href="#">Principal</a></li>
            <li><a href="#">GENERACION DE INFORME</a></li>
            
          </ol>
        </div>
      </div>
      <div class="container clear_both padding_fix">
        <!--\\\\\\\ container  start \\\\\\-->
      
       <div id="main-content">
    <div class="page-content">
		
			<p>
				<b>SELECCIONAR FECHAS</b>
			</p>
		
		<hr />
		<div class="block-web">
		<form:form method="post" commandName="statForm" action="showStats">
		<p>DESDE: <form:input type="text" id="datepicker" path="sinceDate"/> </p>
		
		<p>HASTA:  <form:input type="text" id="datepicker1"  path="untilDate" /> </p>
		 
		 <input class="btn btn-primary btn-sm"  type="submit" value="GENERAR">
		 </form:form>
		
		</div>
		
		<hr />
		
		</div>
		</div>
</div>
</div>
		</div>

	</body>
</html>
