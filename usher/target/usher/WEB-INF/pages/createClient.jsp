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
 <script src="js/jPushMenu.js"></script> 
<script src="js/side-chats.js"></script>

</head>
<body class="light_theme left_nav_fixed atm-spmenu-push" >
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
 
 
    <div class="left_nav">
      <!--\\\\\\\left_nav start \\\\\\-->
      <div class="search_bar"> <i class="fa fa-home"></i>
        <a type="text" class="search" href="index.jsp">INICIO</a>
      </div>
      <div class="slimScrollDiv" style="position: relative; width: auto; height: 70px;"><div class="left_nav_slidebar" >
        <ul>
<li><a href="client2">CLIENTES</a></li><li>
<li><a href="car2">AUTOS</a></li>
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
          <h1>clientes</h1>
          </div>
        <div class="pull-right">
          <ol class="breadcrumb">
            <li><a href="#">Principal</a></li>
            <li><a href="#">CLIENTES</a></li>
            
          </ol>
        </div>
      </div>
      <div class="container clear_both padding_fix">
        <!--\\\\\\\ container  start \\\\\\-->
      
       <div id="main-content">
    <div class="page-content">
	
		<p><b>REGISTRAR CLIENTE</b></p>
		
		<hr />
		
		<div class="row">
        <div class="col-md-6">
          <div class="block-web">

            <div class="porlets-content">
            <form:form class="form-horizontal row-border" id="formulario" method="post" commandName="clientForm" action="addClient">
                <div class="form-group">
                  <label class="col-sm-3 control-label">NOMBRE</label>
                  <div class="col-sm-9">
                    <form:input type="text" path="name" class="form-control"
                      	pattern="^([a-zA-ZñÑáéíóúÁÉÍÓÚ'\.\,]{1,45}[\s]*)+"
						required="required" 
						oninvalid="setCustomValidity('Ingresa uno o dos nombres con solo letras')" 
                   		oninput="setCustomValidity('')" />
                  </div>
                </div><!--/form-group-->      
                  <div class="form-group">
                  <label class="col-sm-3 control-label">APELLIDO</label>
                  <div class="col-sm-9">
                    <form:input path="surName" class="form-control"
					 	type="text" 
						pattern="^([a-zA-ZñÑáéíóúÁÉÍÓÚ'\.\,]{1,45}[\s]*)+"
						required="required" 
						oninvalid="setCustomValidity('Ingresa uno o dos apellidos con solo letras')" 
                   		oninput="setCustomValidity('')"/>
                  </div>
                </div><!--/form-group-->
                                  <div class="form-group">
                  <label class="col-sm-3 control-label">EMPRESA</label>
                  <div class="col-sm-9">
						<form:input path="company" class="form-control"
						type="text"  
						pattern="^([a-zA-ZñÑáéíóúÁÉÍÓÚ'0-9-_\.\,\/]{1,45}[\s]*)+"
						required="required" 
						oninvalid="setCustomValidity('Ingresa una o dos palabras con con solo letras o numeros')" 
                   		oninput="setCustomValidity('')"/>
                  </div>
                </div><!--/form-group-->
                 <div class="form-group">
                  <label class="col-sm-3 control-label">CUIT</label>
                  <div class="col-sm-9">
						<form:input path="cuit" class="form-control"
						type="text"
						pattern="[0-9]{8,11}"
						required="required" 
						oninvalid="setCustomValidity('Ingresa por lo menos 8 dígitos, con un máximo de 11')" 
                   		oninput="setCustomValidity('')"/>
                  </div>
                </div><!--/form-group-->
                  <div class="form-group">       
                  <label class="col-sm-3 control-label">TIPO DE FACTURA</label>
                  <div class="col-sm-9">
						<form:input path="invoiceType" class="form-control"
						type="text"
						pattern="[A-D]{1}"
						required="required" 
						oninvalid="setCustomValidity('Ingresa un tipo de factura correcto (A, B, C o D) utilizando letra MAYUSCULA')" 
                   		oninput="setCustomValidity('')"/>
                  </div>
                </div><!--/form-group-->
				<div class="form-group">       
                  <label class="col-sm-3 control-label">DIRECCION</label>
                  <div class="col-sm-9">
						<form:input path="adress" class="form-control"
						type="text" 
						pattern="^([a-zA-ZñÑáéíóúÁÉÍÓÚ'0-9-_\.\/\-\_\,]{1,45}[\s]*)+"
						required="required" 
						oninvalid="setCustomValidity('Ingresa una dirección que contenga letras y numeros')" 
                   		oninput="setCustomValidity('')"/>
                  </div>
                </div><!--/form-group-->
				<div class="form-group">       
                  <label class="col-sm-3 control-label">LOCALIDAD</label>
                  <div class="col-sm-9">
						<form:input path="locality" class="form-control"
						type="text" 
						pattern="^([a-zA-ZñÑáéíóúÁÉÍÓÚ'\.]{1,45}[\s]*)+"
						required="required" 
						oninvalid="setCustomValidity('Ingresa una localidad que contenga letras')" 
                   		oninput="setCustomValidity('')" />
                  </div>
                </div><!--/form-group-->
				<div class="form-group">       
                  <label class="col-sm-3 control-label">PROVINCIA</label>
                  <div class="col-sm-9">
						<form:input path="province" class="form-control"
						type="text" 
						pattern="^([a-zA-ZñÑáéíóúÁÉÍÓÚ'\.]{1,45}[\s]*)+"
						required="required" 
						oninvalid="setCustomValidity('Ingresa solo letras')" 
                   		oninput="setCustomValidity('')" />
                  </div>
                </div><!--/form-group-->  
                  <div class="form-group">       
                  <label class="col-sm-3 control-label">TELEFONO</label>
                  <div class="col-sm-9">
						<form:input path="phoneNumber1" class="form-control"
						type="text" 
						pattern="[0-9]{1,15}"
						oninvalid="setCustomValidity('Ingresa solo numeros')" 
                   		oninput="setCustomValidity('')" />
                  </div>
                </div><!--/form-group-->
                <div class="form-group">       
                  <label class="col-sm-3 control-label">CELULAR</label>
                  <div class="col-sm-9">
						<form:input path="phoneNumber2" class="form-control"
						type="text" 
						pattern="[0-9]{1,15}"
						oninvalid="setCustomValidity('Ingresa solo numeros')" 
                   		oninput="setCustomValidity('')" />
                  </div>
                </div><!--/form-group-->
                <div class="form-group">       
                  <label class="col-sm-3 control-label">EMAIL</label>
                  <div class="col-sm-9">
						<form:input path="eMail" class="form-control"
						type="text" 
						pattern="^([a-zA-ZñÑáéíóúÁÉÍÓÚ'0-9-_\.]{1,}[@][[a-zA-ZñÑáéíóúÁÉÍÓÚ'0-9-_\.]{1,45})"
						oninvalid="setCustomValidity('Ingresa una direccion que contenga @')" 
                   		oninput="setCustomValidity('')"/>
                  </div>               
                </div><!--/form-group-->                                            
	              <div style="align:right" class="bottom">
                  <button style="align:right" type="submit" class="btn btn-primary">GUARDAR</button>
                  <button style="align:right" type="button" class="btn btn-default">CANCELAR</button>                  
                </div><!--/form-group-->                
            </form:form>
            </div><!--/porlets-content-->
          </div><!--/block-web--> 
        </div><!--/col-md-6-->		</div>
		<hr />
		</div>
		
		
		</div>
		
		</div>

		</div>

</html>