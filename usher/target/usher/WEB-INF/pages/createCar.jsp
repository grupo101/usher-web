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


 <script src="js/bootstrap.min.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<script src="plugins/data-tables/DT_bootstrap.js"></script>
	<script src="js/jquery.dataTable1.js"></script> 
	<script>
		$(document).ready(function() {
		    $('#dynamic-table').DataTable( {
		    	"scrollX": true,		    	
		    	"order": [[ 0, "desc" ]]
		    });
} );
</script>

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
          <h1>autos</h1>
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
	
		<p><b>REGISTRAR AUTO</b></p>
		
		<hr />
		   <p><b>Seleccionar propietario del auto:</b></p>
		          <div class="block-web"> 
  		         <div class="porlets-content">
            <div class="table-responsive">
		<div id="dynamic-table_wrapper" class="dataTables_wrapper form-inline" role="grid">
	 
				
<table class="display table table-bordered table-striped dataTable" id="dynamic-table" aria-describedby="dynamic-table_info">
 			<thead>
				<tr>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">ID</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Nombre</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Apellido</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Empresa</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Cuit</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Direccion</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Localidad</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Telefono</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Celular</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Email</th>					
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Deuda</th>					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="client" items="${clients}">
					<tr>
						<td>${client.id}</td>
						<td>${client.name}</td>
						<td>${client.surName}</td>
						<td>${client.company}</td>
						<td>${client.cuit}</td>
						<td>${client.adress}</td>
						<td>${client.locality}</td>
						<td>${client.phoneNumber1}</td>
						<td>${client.phoneNumber2}</td>
						<td>${client.eMail}</td>
						<td>${client.debt}</td>						
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
		    </div>
		    </div>
		    </div>		
		
		<div class="row">
        <div class="col-md-6">
          <div class="block-web">

            <div class="porlets-content">
            <form:form class="form-horizontal row-border" id="formulario" method="post" commandName="carForm" action="addCar">
				
				<form:input id="ownerId" readonly="true" path="ownerId" class="form-control" style="display:none"/>
				
                  <div class="form-group">
                  <label class="col-sm-3 control-label">PROPIETARIO</label>
                  <div class="col-sm-9">
						<form:input id="ownerName" path="ownerName" class="form-control"
						type="text"
						readonly="true"
						required="required"
						pattern="^([a-zA-ZñÑáéíóúÁÉÍÓÚ'0-9-_\.\,\/]{1,45}[\s]*)+"
						oninvalid="setCustomValidity('Ingresa una o dos palabras con con solo letras o numeros')" 
                   		oninput="setCustomValidity('')"/>
                  </div>
                </div><!--/form-group-->
                 <div class="form-group">
                  <label class="col-sm-3 control-label">CUIT PROPIETARIO</label>
                  <div class="col-sm-9">
						<form:input id="ownerCuit" path="ownerCuit" class="form-control"
						type="number"
						readonly="true"
						required="required"
						pattern="[0-9]{8,11}"
						oninvalid="setCustomValidity('Ingresa por lo menos 8 dígitos, con un máximo de 11')" 
                   		oninput="setCustomValidity('')"/>
                  </div>                  
                </div><!--/form-group-->
				<div class="form-group">       
                  <label class="col-sm-3 control-label">AUTO</label>
                  <div class="col-sm-9">
                  <form:input path="carMark" class="form-control" 
                  		type="text"
						required="required"
						pattern="^([a-zA-ZñÑáéíóúÁÉÍÓÚ'0-9-_\.\,\/]{1,45}[\s]*)+"
						oninvalid="setCustomValidity('Ingresa una marca de auto, con solo letras o numeros')" 
                   		oninput="setCustomValidity('')"/>
                  </div>
                </div><!--/form-group-->
                				<div class="form-group">       
                  <label class="col-sm-3 control-label">LINEA</label>
                  <div class="col-sm-9">
                  <form:input path="carLine" class="form-control"
                        type="text"						
						required="required"
						pattern="^([a-zA-ZñÑáéíóúÁÉÍÓÚ'0-9-_\.\,\/]{1,45}[\s]*)+"
						oninvalid="setCustomValidity('Ingresa una linea de auto, con solo letras o numeros')" 
                   		oninput="setCustomValidity('')"/>
                  </div>
                </div><!--/form-group-->
                				<div class="form-group">       
                  <label class="col-sm-3 control-label">MODELO</label>
                  <div class="col-sm-9">
                  <form:input path="model" class="form-control"
                  		type="number"						
						required="required"
						pattern="[0-9]"
						oninvalid="setCustomValidity('Ingrese el modelo del auto, con 4 digitos')" 
                   		oninput="setCustomValidity('')"/>
                  </div>
                </div><!--/form-group-->
                				<div class="form-group">       
                  <label class="col-sm-3 control-label">BOMBA</label>
                  <div class="col-sm-9">
                  <form:input path="bomb" class="form-control"/>
                  </div>
                </div><!--/form-group-->
                				<div class="form-group">       
                  <label class="col-sm-3 control-label">INYECTORES</label>
                  <div class="col-sm-9">
                  <form:input path="inyectors" class="form-control"/>
                  </div>
                </div><!--/form-group-->
                				<div class="form-group">       
                  <label class="col-sm-3 control-label">RAMPA</label>
                  <div class="col-sm-9">
                  <form:input path="ramp" class="form-control"/>
                  </div>
                </div><!--/form-group-->
                <div class="form-group">       
                  <label class="col-sm-3 control-label">VALVULA</label>
                  <div class="col-sm-9">
                  <form:input path="valvule" class="form-control"/>
                  </div>
               
                </div><!--/form-group-->
                <div class="form-group">       
                  <label class="col-sm-3 control-label">SENSOR DE PRESION</label>
                  <div class="col-sm-9">
                  <form:input path="pressureSensor" class="form-control"/>
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
		
		<script type="text/javascript">
		function putSelectedRow(row) {
	
			var cells = row.getElementsByTagName('td');
			document.getElementById('ownerName').value = cells.item(3).innerHTML;
			document.getElementById('ownerCuit').value = cells.item(4).innerHTML;
			document.getElementById('ownerId').value = cells.item(0).innerHTML;
			}
	
		function chooseRow() {
			var table = document.getElementById('dynamic-table');
			var rows = table.getElementsByTagName('tr');
	
			for (i = 1; i < rows.length; i++) {
				if (rows[i].addEventListener) { // IE9 y el resto
					rows[i].addEventListener("click", function() {
						putSelectedRow(this);
					}, false);
				}
			}
		}
	</script>
	<script>
	chooseRow();
	</script> 

</html>