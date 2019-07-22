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
<body class="light_theme left_nav_fixed atm-spmenu-push" style="">
	<div class="wrapper">
		<!--\\\\\\\ wrapper Start \\\\\\-->
		<div class="header_bar">

			<!--\\\\\\\ header Start \\\\\\-->
			<div class="brand">
				<!--\\\\\\\ brand Start \\\\\\-->
				<div class="logo" style="display: block">
					Mecanica <span class="theme_color">BAUER</span>
				</div>
			</div>

		</div>
		<!--\\\\\\\ brand end \\\\\\-->
		<div class="header_top_bar"
			style="background-image: url(images/BauerBannerDefinitivo.png)">
			<!--\\\\\\\ header top bar start \\\\\\-->
			<a href="javascript:void(0);" class="menutoggle"> <i
				class="fa fa-bars"></i>
			</a>

		</div>
		<!--\\\\\\\ header top bar end \\\\\\-->
	</div>
	<!--\\\\\\\ header end \\\\\\-->


	<div class="left_nav">
		<!--\\\\\\\left_nav start \\\\\\-->
		<div class="search_bar">
			<i class="fa fa-home"></i> <a type="text" class="search"
				href="index.jsp">INICIO</a>
		</div>
		<div class="slimScrollDiv"
			style="position: relative; width: auto; height: 70px;">
			<div class="left_nav_slidebar">
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
			</div>
			<div class="slimScrollBar"
				style="background: rgb(161, 178, 189); width: 5px; position: absolute; top: 0px; border-radius: 7px; z-index: 99; right: 1px; height: 30px; display: none; opacity: 0.4;"></div>
			<div class="slimScrollRail"
				style="width: 5px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
		</div>
	</div>
	<!--\\\\\\\left_nav end \\\\\\-->
	<div class="contentpanel"
		style="background-image: url('images/MECANICABAUER2.jpg')">
		<!--\\\\\\\ contentpanel start\\\\\\-->
		<div class="pull-left breadcrumb_admin clear_both">
			<div class="pull-left page_title theme_color">
				<h1>Productos</h1>
			</div>
			<div class="pull-right">
				<ol class="breadcrumb">
					<li><a href="#">Principal</a></li>
					<li><a href="#">PRODUCTOS</a></li>

				</ol>
			</div>
		</div>
		<div class="container clear_both padding_fix">
			<!--\\\\\\\ container  start \\\\\\-->

			<div id="main-content">
				<div class="page-content">

					<p>
						<b>REGISTRAR PRODUCTO</b>
					</p>

					<hr />

					<div class="row">
						<div class="col-md-6">
							<div class="block-web">
							<div class="porlets-content">
								<form:form class="form-horizontal row-border" id="formulario"
									method="post" commandName="productForm" action="addProduct">

									
										<div class="form-group">
											<label class="col-sm-3 control-label">NOMBRE</label>
											<div class="col-sm-9">
												<form:input path="name" class="form-control" type="text"
													pattern="^([a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ'\.\_\-]{1,100}[\s]*)+"
													required="required"
													oninvalid="setCustomValidity('Ingresa uno o dos nombres con letras o numeros (no usar / y ,)')"
													oninput="setCustomValidity('')" />
											</div>
										</div>
										<!--/form-group-->
										<div class="form-group">
											<label class="col-sm-3 control-label">MARCA</label>
											<div class="col-sm-9">
												<form:input path="mark" class="form-control" type="text"
													pattern="^([a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ'\.\_\-]{1,100}[\s]*)+"
													required="required"
													oninvalid="setCustomValidity('Ingresa uno o dos nombres con solo letras (no usar / y ,)')"
													oninput="setCustomValidity('')" />
											</div>
										</div>
										<!--/form-group-->
										<div class="form-group">
											<label class="col-sm-3 control-label">DESCRIPCION</label>
											<div class="col-sm-9">
												<form:input path="description" class="form-control"
													type="text"
													pattern="^([a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ'\.\-\_]{1,200}[\s]*)+"
													required="required"
													oninvalid="setCustomValidity('Ingresa una descripción de no mas de 200 caracteres (no usar / y ,)')"
													oninput="setCustomValidity('')" />
											</div>
										</div>
										<!--/form-group-->
										<div class="form-group">
											<label class="col-sm-3 control-label">PRECIO BASE</label>
											<div class="col-sm-9">
												<form:input path="initPrice" class="form-control"
													type="number" step="any" required="required"
													oninvalid="setCustomValidity('Ingresa un precio con el siguiente formato: 750.25')"
													oninput="setCustomValidity('')" />
											</div>
										</div>
										<!--/form-group-->
										<div class="form-group">
											<label class="col-sm-3 control-label">PRECIO FINAL</label>
											<div class="col-sm-9">
												<form:input path="finalPrice" class="form-control"
													type="number" step="any" required="required"
													oninvalid="setCustomValidity('Ingresa un precio con el siguiente formato: 750.25')"
													oninput="setCustomValidity('')" />
											</div>
										</div>
										<!--/form-group-->
										<div class="form-group">
											<label class="col-sm-3 control-label">STOCK MINIMO</label>
											<div class="col-sm-9">
												<form:input path="minStock" class="form-control"
													type="number" step="1" required="required"
													oninvalid="setCustomValidity('Ingresa una cantidad superior o igual a 0')"
													oninput="setCustomValidity('')" />
											</div>
										</div>
										<!--/form-group-->


										<div class="form-group">
											<!--/form-group-->
											<div style="align: right" class="bottom">
												<button style="align: right" type="submit"
													class="btn btn-primary">GUARDAR</button>
												<button style="align: right" type="button"
													class="btn btn-default">CANCELAR</button>

											</div>
											<!--/form-group-->
										</div>
										<!--/porlets-content-->
								</form:form>
							</div>
							<!--/block-web-->
						</div>
						<!--/col-md-6-->
					</div>

				</div>
				<hr />

			</div>

		</div>
</div>

	</div>
</html>