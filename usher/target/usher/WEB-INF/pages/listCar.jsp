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
	<link rel="stylesheet" type="text/css" href="css/jquery.dataTables.css" />

	<script src="js/jquery.dataTables.js"></script> 
	<script>
		$(document).ready(function() {
		    $('#dynamic-table').DataTable( {
		    	"scrollX": true,		    	
		    	"order": [[ 0, "desc" ]]
		    } );
} );
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
          <h1>Listado de autos</h1>
          </div>
        <div class="pull-right">
          <ol class="breadcrumb">
            <li><a href="#">Principal</a></li>
            <li><a href="#">AUTOS</a></li>
            
          </ol>
        </div>
      </div>
      <div class="container clear_both padding_fix">
        <!--\\\\\\\ container  start \\\\\\-->
      
       <div id="main-content">
    <div class="page-content">
      
      
      <div class="row">
        <div class="col-md-12">
          <div class="block-web">

         <div class="porlets-content">
            <div class="table-responsive">
                <div id="dynamic-table_wrapper" class="dataTables_wrapper form-inline" role="grid"><table class="display table table-bordered table-striped dataTable" id="dynamic-table" aria-describedby="dynamic-table_info">

 			<thead>
				<tr>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">ID</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Propietario</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Cuit del propietario</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Auto</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Linea</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Modelo</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Bomba</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Inyectores</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Rampa</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Valvula</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Sensor de presion</th>
				</tr>
			</thead>
			<tbody role="alert" aria-live="polite" aria-relevant="all">
				<c:forEach var="car" items="${cars}">
					<tr>
						<td>${car.carId}</td>
						<td>${car.ownerName}</td>
						<td>${car.ownerCuit}</td>
						<td>${car.carMark}</td>
						<td>${car.carLine}</td>
						<td>${car.model}</td>
						<td>${car.bomb}</td>
						<td>${car.inyectors}</td>
						<td>${car.ramp}</td>
						<td>${car.valvule}</td>
						<td>${car.pressureSensor}</td>						
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		</div>
              </div><!--/table-responsive-->
            </div><!--/porlets-content-->
            
            
          </div><!--/block-web--> 
        </div><!--/col-md-12--> 
      </div><!--/row-->
      
       <div class="row">
        <div class="col-md-12">
        
        <hr />
	
	<p>
		<b>USUARIO SELECCIONADO:</b>
	</p>

<div class="block-web">
	<form:form id="form1" name="form1" method="post"
		commandName="carForm" action="">
	
		<table style="width: 100%;" class="dataTables_wrapper form-inline" aria-describedby="dynamic-table_info">
			<tr>
				<th align=left style="background-color: #f6f6f6">ID:</th>
				<th style="background-color: white"><form:input id="carId"
						path="carId" readonly="true"/></th>
				<th align=left style="background-color: #f6f6f6">Propietario</th>
				<th style="background-color: white"><form:input id="ownerName"
						path="ownerName"
						readonly="true"/></th>
				<th align=left style="background-color: #f6f6f6">Cuit:</th>
				<th style="background-color: white"><form:input id="ownerCuit"
						path="ownerCuit"
						readonly="true"/></th>
			</tr>
			<tr>
				<th align=left style="background-color: #f6f6f6">Marca:</th>
				<th style="background-color: white"><form:input id="carMark"
						path="carMark"
						readonly="true"/></th>
				<th align=left style="background-color: #f6f6f6">Linea:</th>
				<th style="background-color: white"><form:input id="carLine"
						path="carLine"
						readonly="true"/></th>
				<th align=left style="background-color: #f6f6f6">Modelo:</th>
				<th style="background-color: white"><form:input id="model"
						path="model"
						readonly="true"/></th>
			</tr>
			<tr>
				<th align=left style="background-color: #f6f6f6">Bomba:</th>
				<th style="background-color: white"><form:input id="bomb"
						path="bomb" 
						type="text"/></th>
				<th align=left style="background-color: #f6f6f6">Inyectores:</th>
				<th style="background-color: white"><form:input id="inyectors"
						path="inyectors"  
						type="text"/></th>
				<th align=left style="background-color: #f6f6f6">Rampa:</th>
				<th style="background-color: white"><form:input id="ramp"
						path="ramp" /></th> 
			</tr>
			<tr>
				<th align=left style="background-color: #f6f6f6">Valvula:</th>
				<th style="background-color: white"><form:input id="valvule"
						path="valvule"
						type="text"/></th>
				<th align=left style="background-color: #f6f6f6">Sensor de presion:</th>
				<th style="background-color: white"><form:input id="pressureSensor"
						path="pressureSensor"  
						type="text"/></th>
				<th align=center style="weight: 100%; background-color: white"></th>
				<th align=center style="weight: 100%; background-color: white"></th>
			</tr>
				<tr>
					<th align=center style="weight: 100%; background-color: white"></th>
					<th align=center style="weight: 100%; background-color: white"></th>
					<th align=center style="weight: 100%; background-color: white"></th>
					<th align=center style="weight: 100%; background-color: white"></th>
					<th align=center style="weight: 100%; background-color: white"></th>
					<th align=center style="background-color: white; width:10%">
					<input id="modifyButton" style="width: 48%;" class="btn btn-primary btn-sm" type="submit" name="Modificar" value="Modificar" onclick="pickModifyButton()" disabled>
					<input id="removeButton" style="width: 49%;" class="btn btn-primary btn-sm" type="submit" name="Eliminar" value="Eliminar" onclick="pickRemoveButton()" disabled></th>
				</tr>
		</table>
		</form:form>
		
		</div>

	<hr />		
	<a href="car"><input class="btn btn-primary btn-lg" id="registrar" type="button" value="Registrar auto" style="width: 100%;"></a> 	
	<hr />
            
        </div><!--/page-content end--> 
  </div><!--/main-content end--> 
           
      
      </div>
      <!--\\\\\\\ container  end \\\\\\-->
    </div>
    <!--\\\\\\\ content panel end \\\\\\-->
  </div>
  <!--\\\\\\\ inner end\\\\\\-->
</div>
<!--\\\\\\\ wrapper end\\\\\\-->
</div>
<div class="demo">  </div>

</body>
	<script type="text/javascript">
		function getCellsValue(cell) {
	
			var tags_td = cell.getElementsByTagName('td');
			document.getElementById('carId').value = tags_td.item(0).innerHTML;
			document.getElementById('ownerName').value = tags_td.item(1).innerHTML;
			document.getElementById('ownerCuit').value = tags_td.item(2).innerHTML;
			document.getElementById('carMark').value = tags_td.item(3).innerHTML;
			document.getElementById('carLine').value = tags_td.item(4).innerHTML;
			document.getElementById('model').value = tags_td.item(5).innerHTML;
			document.getElementById('bomb').value = tags_td.item(6).innerHTML;
			document.getElementById('inyectors').value = tags_td.item(7).innerHTML;
			document.getElementById('ramp').value = tags_td.item(8).innerHTML;
			document.getElementById('valvule').value = tags_td.item(9).innerHTML;
			document.getElementById('pressureSensor').value = tags_td.item(10).innerHTML;
			document.getElementById('removeButton').disabled=false;
			document.getElementById('modifyButton').disabled=false;

			
		}
	
		function selectLine() {
			var table = document.getElementById('dynamic-table');
			var tags_tr = table.getElementsByTagName('tr');
	
			for (i = 1; i < tags_tr.length; i++) {
				if (tags_tr[i].addEventListener) { // IE9 y el resto
					tags_tr[i].addEventListener("click", function() {
						getCellsValue(this);
					}, false);
				}
			}
		}
	</script>
	<script>
		selectLine();
	</script> 
	<script type="text/javascript">
		function pickModifyButton() {
			document.getElementById('form1').action = "modifyCar";
		}
		function pickRemoveButton() {
			document.getElementById('form1').action = "removeCar";
		}
	</script>
</html>
