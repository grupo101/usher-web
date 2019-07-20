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
          <h1>Listado de proveedores</h1>
          </div>
        <div class="pull-right">
          <ol class="breadcrumb">
            <li><a href="#">Principal</a></li>
            <li><a href="#">PROVEEDORES</a></li>
            
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
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Provincia</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Telefono</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Celular</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">Email</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 177px;">fecha Alta</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="provider" items="${providers}">
					<tr>
						<td>${provider.id}</td>
						<td>${provider.name}</td>
						<td>${provider.surName}</td>
						<td>${provider.company}</td>
						<td>${provider.cuit}</td>
						<td>${provider.adress}</td>
						<td>${provider.locality}</td>
						<td>${provider.province}</td>
						<td>${provider.phoneNumber1}</td>
						<td>${provider.phoneNumber2}</td>
						<td>${provider.eMail}</td>						
						<td>${provider.dateUp}</td>
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
		<b>PROVEEDOR SELECCIONADO:</b>
	</p>

<div class="block-web">
	<form:form id="form1" name="form1" method="post"
		commandName="providerForm" action="">
	
		<table style="width: 100%;" class="dataTables_wrapper form-inline" aria-describedby="dynamic-table_info">
			<tr>
				<th align=left style="background-color: #f6f6f6">ID:</th>
				<th style="background-color: white"><form:input id="id"
						path="id" readonly="true"/></th>
				
				<th align=left style="background-color: #f6f6f6">Cuit:</th>
				<th style="background-color: white"><form:input id="cuit"
						path="cuit" 
						type="text"
						pattern="[0-9]{8,11}"
						required="required" 
						oninvalid="setCustomValidity('Ingresa por lo menos 8 dígitos, con un máximo de 11')" 
                   		oninput="setCustomValidity('')"/></th>			
						

				<th align=left style="background-color: #f6f6f6">Localidad:</th>
				<th style="background-color: white"><form:input id="locality"
						path="locality" 
						type="text" 
						pattern="^([a-zA-ZñÑáéíóúÁÉÍÓÚ'\.]{1,20}[\s]*)+"
						required="required" 
						oninvalid="setCustomValidity('Ingresa una localidad que contenga letras')" 
                   		oninput="setCustomValidity('')" /></th>
			</tr>
			<tr>
				<th align=left style="background-color: #f6f6f6">Nombre:</th>
				<th style="background-color: white"><form:input id="name"
						path="name" 
						type="text"
						pattern="^([a-zA-ZñÑáéíóúÁÉÍÓÚ'\.]{1,20}[\s]*)+"
						required="required" 
						oninvalid="setCustomValidity('Ingresa uno o dos nombres con solo letras')" 
                   		oninput="setCustomValidity('')"/></th>
                   		
                <th align=left style="background-color: #f6f6f6">Empresa:</th>
				<th style="background-color: white"><form:input id="company"
						path="company" 
						type="text"  
						pattern="^([a-zA-ZñÑáéíóúÁÉÍÓÚ'0-9-_\.]{1,20}[\s]*)+"
						required="required" 
						oninvalid="setCustomValidity('Ingresa una o dos palabras con con solo letras o numeros')" 
                   		oninput="setCustomValidity('')"/></th>	
                   		
				<th align=left style="background-color: #f6f6f6">Direccion:</th>
				<th style="background-color: white"><form:input id="adress"
						path="adress" 
						type="text" 
						pattern="^([a-zA-ZñÑáéíóúÁÉÍÓÚ'0-9-_\.]{1,20}[\s]*)+"
						required="required" 
						oninvalid="setCustomValidity('Ingresa una dirección que contenga letras y numeros')" 
                   		oninput="setCustomValidity('')"/></th>
			</tr>
			<tr>
				<th align=left style="background-color: #f6f6f6">Apellido:</th>
				<th style="background-color: white"><form:input id="surName"
						path="surName" 
						type="text" 
						pattern="^([a-zA-ZñÑáéíóúÁÉÍÓÚ'\.]{1,20}[\s]*)+"
						required="required" 
						oninvalid="setCustomValidity('Ingresa uno o dos apellidos con solo letras')" 
                   		oninput="setCustomValidity('')"/></th>
                   		
                			
				<th align=left style="background-color: #f6f6f6">Celular:</th>
				<th style="background-color: white"><form:input id="phoneNumber2"
						path="phoneNumber2" 
						type="text" 
						pattern="[0-9]{1,15}"
						oninvalid="setCustomValidity('Ingresa solo numeros')" 
                   		oninput="setCustomValidity('')" /></th>
                   		
				<th align=left style="background-color: #f6f6f6">Provincia:</th>
				<th style="background-color: white"><form:input id="province"
						path="province" 
						type="text" 
						pattern="^([a-zA-ZñÑáéíóúÁÉÍÓÚ'\.]{1,20}[\s]*)+"
						required="required" 
						oninvalid="setCustomValidity('Ingresa solo letras')" 
                   		oninput="setCustomValidity('')" /></th>
			</tr>			
			<tr>

				<th align=left style="background-color: #f6f6f6">Fecha alta:</th>
				<th style="background-color: white"><form:input id="dateUp"	path="dateUp" readonly="true" /></th>				
				<th align=left style="background-color: #f6f6f6">E-mail:</th>
				<th style="background-color: white"><form:input id="eMail"
						path="eMail" 
						type="text" 
						pattern="^([a-zA-ZñÑáéíóúÁÉÍÓÚ'0-9-_\.]{1,}[@][[a-zA-ZñÑáéíóúÁÉÍÓÚ'0-9-_\.]{1,})"
						oninvalid="setCustomValidity('Ingresa una direccion que contenga @')" 
                   		oninput="setCustomValidity('')"/></th>
                 
                				
				<th align=left style="background-color: #f6f6f6">Telefono:</th>
				<th style="background-color: white"><form:input id="phoneNumber1"
						path="phoneNumber1" 
						type="text" 
						pattern="[0-9]{1,15}"
						oninvalid="setCustomValidity('Ingresa solo numeros')" 
                   		oninput="setCustomValidity('')" /></th>
              </tr>
              
              <tr>
                <th align=left style="background-color: white"></th>
				<th align=left style="background-color: white"></th>
				<th align=left style="background-color: white"></th>
				<th align=left style="background-color: white"></th>
				
				<th align=center style="weight: 100%; background-color: white"></th>
				<th align=center style="background-color: white;width:10%">
					<input id="modifyButton" disabled class="btn btn-primary btn-sm" style="width: 48%;" type="submit" name="Modificar" value="Modificar" onclick="pickModifyButton()">
					<input id="removeButton" disabled class="btn btn-primary btn-sm" style="width: 49%;" type="submit" name="Eliminar" value="Eliminar" onclick="pickRemoveButton()"></th>
              </tr>

		</table>
		</form:form>
</div>
	<hr />		
	<a href="provider"><input class="btn btn-primary btn-lg" id="registrar" type="button" value="Registrar proveedor" style="width: 100%;"></a>	
	<hr />
	</div>
	</div>
	</div><!--/page-content end--> 
  </div><!--/main-content end--> 
           
      
      </div>
      <!--\\\\\\\ container  end \\\\\\-->
    </div>
    <!--\\\\\\\ content panel end \\\\\\-->
  </div>
  <!--\\\\\\\ inner end\\\\\\-->

</body>
	<script type="text/javascript">
		function getCellsValue(cell) {
	
			var tags_td = cell.getElementsByTagName('td');
			document.getElementById('id').value = tags_td.item(0).innerHTML;
			document.getElementById('name').value = tags_td.item(1).innerHTML;
			document.getElementById('surName').value = tags_td.item(2).innerHTML;
			document.getElementById('company').value = tags_td.item(3).innerHTML;
			document.getElementById('cuit').value = tags_td.item(4).innerHTML;
			document.getElementById('adress').value = tags_td.item(5).innerHTML;
			document.getElementById('locality').value = tags_td.item(6).innerHTML;
			document.getElementById('province').value = tags_td.item(7).innerHTML;
			document.getElementById('phoneNumber1').value = tags_td.item(8).innerHTML;
			document.getElementById('phoneNumber2').value = tags_td.item(9).innerHTML;
			document.getElementById('eMail').value = tags_td.item(10).innerHTML;
			document.getElementById('dateUp').value = tags_td.item(11).innerHTML;
			document.getElementById('modifyButton').disabled=false;
			document.getElementById('removeButton').disabled=false;

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
			document.getElementById('form1').action = "modifyProvider";
			//document.getElementById('form1').submit();
		}
		function pickRemoveButton() {
			document.getElementById('form1').action = "removeProvider";
			//document.getElementById('form1').submit();
		}
	</script>
</html>
