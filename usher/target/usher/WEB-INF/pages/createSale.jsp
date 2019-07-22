<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Bauer mecanica integral</title>
<meta name="ROBOTS" content="NOINDEX, NOFOLLOW">
<link href="css/font-awesome.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/animate.css" rel="stylesheet" type="text/css">
<link href="css/admin.css" rel="stylesheet" type="text/css">
<link href="plugins/data-tables/DT_bootstrap.css" rel="stylesheet">
		<link rel="shortcut icon" href="images/BauerMecanicaLogo2.png" />
<link rel="stylesheet" type="text/css" href="css/jquery.dataTables.css" />

<link href="css/select2.min.css" rel="stylesheet" />
<script src="js/jquery-1.12.js"></script>
<script src="js/select2.min.js"></script>

<!-- <script src="js/jquery-2.1.0.js"></script>
 -->
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
			  $(".js-example-basic-single").select2();
			  $('body').on('DOMNodeInserted', 'select', function () {
			      $(this).select2();
			  });
} );
</script>

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
          <h1>ASIGNAR VENTA</h1>
          </div>
        <div class="pull-right">
          <ol class="breadcrumb">
            <li><a href="#">Principal</a></li>
            <li><a href="#">VENTAS</a></li>
            
          </ol>
        </div>
      </div>
      <div class="container clear_both padding_fix">

        <!--\\\\\\\ container  start \\\\\\-->
      
       <div id="main-content">
             
    <div class="page-content">
    <p><b>Seleccionar cliente</b></p>
          <div class="row">
        <div class="col-md-12">
<form:form method="post" commandName="saleForm" action="addSale" onsubmit="return cargarJsonProducts()"> 
      
      

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
	<p><b>Cliente Seleccionado</b></p>	

	<TABLE id="dataTableClient" style="width: 80%" >

		<TR id="clientLine">
			<TD><form:input path="client"  id="clientCell0" name="clientCell0" type="text" value="ID..." readonly="readonly" style="display:none"/></TD>
			<TD><input id="clientCell1" name="clientCell1" type="text" value="Nombre..." readonly="readonly" style="width: 80%" /></TD>
			<TD><input id="clientCell2" name="clientCell2" type="text" value="Apellido..." readonly="readonly" style="width: 80%" /></TD>
			<TD><form:input path="clientName" id="clientCell3" name="clientCell3" type="text" value="Empresa..." readonly="readonly" style="width: 80%" /></TD>
			<TD><form:input path="clientCuit" id="clientCell4" name="clientCell4" type="text" value="Cuit..." readonly="readonly" style="width: 80%" /></TD>			
		</TR>
	</TABLE>
		
<br>			
	<hr />
	
	<p><b>Productos</b></p>
	<br>

	<INPUT class="btn btn-primary btn-sm" type="button" value="Agregar producto" onclick="addRow('dataTable');" />
	<INPUT class="btn btn-primary btn-sm" type="button" value="Eliminar producto" onclick="deleteRow('dataTable');" />
	<p><br></p>
	<div class="clase">
	<TABLE id="dataTable" style="width: 80%" >

		<TR id="linea1">
			<TD><INPUT type="checkbox" NAME="chk" disabled /></TD>
			<TD>
				<select  id="sa1" name="1" class="js-example-basic-single"  onchange="cargarComboMarca(this.name)"  style="width:100%" >
					<option>Producto...</option>
				</select>
			</TD>
			<TD>
				<select id="sb1" name="1"  class="js-example-basic-single" onchange="cargarComboStock(this.name)" style="width:100%">
					<option>Marca...</option>
				</select></TD>
			<TD>
				<select id="sc1" name="1"  class="js-example-basic-single" onchange="cargarSubTotal(this.name)" style="width:100%">
					<option>Cantidad...</option>
				</select>
			</TD>
			<TD>
				<input id="sd1" name="1" type="text" value="Subtotal..." readonly="readonly" style="width: 85%" />
			</TD>

		</TR>
	</TABLE>
	
	<hr />
	<p><b>Servicios</b></p>
	<br>
	
	<INPUT class="btn btn-primary btn-sm" type="button" value="Agregar servicio" onclick="addRow1('dataTable1');" />
	<INPUT class="btn btn-primary btn-sm" type="button" value="Eliminar servicio" onclick="deleteRow1('dataTable1');" />
	
	<p><br></p>
	<TABLE id="dataTable1" style="width: 80%" >

		<TR id="lineap1">
			<TD><INPUT type="checkbox" NAME="chk" disabled/></TD>
			<TD>
				<select  id="pa1" name="1" class="js-example-basic-single"  onchange="cargarComboTipo(this.name)"  style="width:100%" >
					<option>Servicio...</option>
				</select>
			</TD>
			<TD>
				<select id="pb1" name="1"  class="js-example-basic-single" style="width:100%">
					<option>Tipo...</option>
				</select>
			</TD>
			<TD>
				<INPUT id="pd1" name="1" type="number" placeholder="Cantidad..."  onchange="cargarSubTotal1(this.name)"
						pattern="[0-9]{1,15}"
						min=1 
						oninvalid="setCustomValidity('Ingresa una cantidad mayor a 0')" 
                   		oninput="setCustomValidity('')" 
                   		onchange="cargarSubTotal(this.name)"
                   		style="width:100%"/>
			<TD>
				<input id="pc1" name="1"  type="text" value="Subtotal..." readonly="readonly" style="width: 85%" />
			</TD>

		</TR>
	</TABLE>
	</div>


	<hr />

	<p><b>Total:</b></p>
	<br> 
	<form:input path="totalPrice" id="total" name="total" type="text" placeholder="Total..." readonly="true"/>

		<form:input path="productList" id="jsonProductos" style="display:none"/>
		<form:input path="serviceList" id="jsonServicios" style="display:none"/>		
			
			<input class="btn btn-primary btn-sm"  type="submit" value="Registrar venta">
	
</form:form>
	
	</div>
	</div>	
		<TABLE id="t10" style="display:none">
			<thead>
			</thead>
			<tbody>
				<c:forEach var="product" items="${products}"> 
					<tr>
						<td>${product.id}</td>
						<td>${product.name}</td>
						<td>${product.mark}</td>
						<td>${product.description}</td>
						<td>${product.initPrice}</td>
						<td>${product.finalPrice}</td>
						<td>${product.stock}</td>
						<td>${product.minStock}</td>
						<td>${product.ask}</td>
					</tr>
				</c:forEach>
			</tbody>
		</TABLE>
				<TABLE id="t11" style="display:none">
			<thead>
			</thead>
			<tbody>
				<c:forEach var="manualJob" items="${manualJobs}">
					<tr>
						<td>${manualJob.id}</td>
						<td>${manualJob.name}</td>
						<td>${manualJob.type}</td>
						<td>${manualJob.description}</td>
						<td>${manualJob.finalPrice}</td>
					</tr>
				</c:forEach>
			</tbody>
		</TABLE>
		</div>
		</div>
		</div>
		</div>

		    </div>
		    
</body>

<script type="text/javascript">

	function removeDuplicates(array){
		
		var arrayAux=[];
		for(i=0;i<array.length;i++){
			for(j=0;j<array.length-1;j++){
				if(i!=j){
					if(array[i]==array[j]){
						array[i]=null;
					}
				}
			}
		}
		j=0;
		for(i=0;i<array.length;i++){
			if(array[i]!==null){
				arrayAux[j]=array[i];
				j++;
			}
		}
		return arrayAux;
		
	}


		function loadFirstCombo(id) {
			var finalArray;
			var table = document.getElementById('t10');
			var tags_tr = table.getElementsByTagName('tr');
			var tags_td;
			var row;
			var array = [];
			var data
			for (i = 0; i < tags_tr.length; i++) {

				row = tags_tr[i];
				tags_td = row.getElementsByTagName('td');			
				array.push(tags_td.item(1).innerHTML);

			}		
			array.sort();
			finalArray=removeDuplicates(array);
			addOptions(finalArray, id);
		}

		// Rutina para agregar opciones a un <select>
		function addOptions(array, id) {
			
			var select = document.getElementById(id);
	 		while (select.options.length > 1) {
				select.remove(1);
			} 

			for (i = 0; i < array.length; i++) {

				data = {
					    id: array[i],
					    text: array[i]
					};

					var newOption = new Option(data.text, data.id, false, false);
					$("#"+id).append(newOption);
		 	}		
		}
	

	function addRow(tableID) {

		var table = document.getElementById(tableID);
		var rowCount = table.rows.length;
		var row = table.insertRow(rowCount);

		var cell1 = row.insertCell(0);
		var checkBox = document.createElement("input");
		checkBox.type = "checkbox";
		cell1.appendChild(checkBox);

		var cell2 = row.insertCell(1);
		var nameSelect = document.createElement("select");
		nameSelect.id="sa"+table.rows.length;
		nameSelect.name=table.rows.length;
		nameSelect.style="width:100%";
		nameSelect.onchange=function(){cargarComboMarca(this.name)};
		cell2.appendChild(nameSelect);
		var newOption = new Option("Producto...","Producto", false, false);
		$("#"+nameSelect.id).append(newOption);
		loadFirstCombo(nameSelect.id);

		var cell3 = row.insertCell(2);
		var element35 = document.createElement("select");
		element35.id="sb"+table.rows.length;
		element35.name=table.rows.length;
		element35.style="width:100%";
		element35.onchange=function(){cargarComboStock(this.name)};
		cell3.appendChild(element35);
		var newOption = new Option("Marca...","Marca...", false, false);
		$("#"+element35.id).append(newOption);

		var cell4 = row.insertCell(3);
		var element36 = document.createElement("select");
		element36.id="sc"+table.rows.length;
		element36.name=table.rows.length;
		element36.style="width:100%";
		element36.onchange=function(){cargarSubTotal(this.name)};
		cell4.appendChild(element36);
		var newOption = new Option("Cantidad...","Cantidad...", false, false);
		$("#"+element36.id).append(newOption);
		

		var cell5 = row.insertCell(4);
		var sd1 = document.createElement("input");
		sd1.id = ("sd" + table.rows.length); // change id or other attributes/contents
		sd1.name = table.rows.length;
		sd1.value = "Subtotal..."
		sd1.type="text";
		sd1.style="width:85%";
		cell5.appendChild(sd1); // add new row to end of table		
	}

	function deleteRow(tableID) {
	var cambiarId;
		try {

			var table = document.getElementById(tableID);
			var rowCount = table.rows.length;
			var varAux,j;

			for (var i = 0; i < rowCount; i++) {

				var row = table.rows[i];
				var nuevaId;
				var chkbox = row.cells[0].childNodes[0];

				if (null != chkbox && true == chkbox.checked) {

					table.deleteRow(i);
					rowCount--;
									
					for(j=i;j<rowCount;j++){
						
						varAux=document.getElementById("sa"+(j+2));
						varAux.id=("sa"+(j+1));
						varAux.name=(j+1);
						
						varAux=document.getElementById("sb"+(j+2));
						varAux.id=("sb"+(j+1));
						varAux.name=(j+1);
						
						varAux=document.getElementById("sc"+(j+2));
						varAux.id=("sc"+(j+1));
						varAux.name=(j+1);
						
						varAux=document.getElementById("sd"+(j+2));
						varAux.id=("sd"+(j+1));
						varAux.name=(j+1);
						}
						
					
					
					i--;
				}
			}
			
		} catch (e) {

			alert(e);

		}
		calcularTotal();
	}

	function cargarComboMarca(linea) {

		var selectMarca = document.getElementById("sb" + linea);

 		while (selectMarca.options.length > 1) {
			selectMarca.remove(1);
		}

		var selectCantidad = document.getElementById("sc" + linea);

 		while (selectCantidad.options.length > 1) {
 			selectCantidad.remove(1);
		} 
	
 		
 		var inputSubtotal = document.getElementById("sd" + linea);
 		inputSubtotal.value = "Subtotal...";
		calcularTotal();

		var selectNombre = document.getElementById("sa" + linea);
		
		//var nombreSeleccionado = selectNombre.options[selectNombre.selectedIndex].value;
		var nombreSeleccionado = $("#sa"+linea).val();
		var table = document.getElementById('t10');
		var tags_tr = table.getElementsByTagName('tr');
		var tags_td;
		var filtro;
		var fila;
		var vec1 = [];
		for (i = 0; i < tags_tr.length; i++) {

			fila = tags_tr[i];
			tags_td = fila.getElementsByTagName('td');
			filtro = tags_td.item(1).innerHTML;

			if (filtro == nombreSeleccionado) {
				vec1.push(tags_td.item(2).innerHTML);
			}
		}
		vec1.sort();
		addOptions(vec1, "sb" + linea);

	}

	function cargarComboStock(linea) {
		var inputSubtotal = document.getElementById("sd" + linea);
		inputSubtotal.value = "Subtotal...";
		calcularTotal();
		var selectNombre = document.getElementById("sa" + linea);
		var nombreSeleccionado = $("#sa"+linea).val();
		//var nombreSeleccionado = selectNombre.options[selectNombre.selectedIndex].value;
		var selectMarca = document.getElementById("sb" + linea);
		//var marcaSeleccionada = selectMarca.options[selectMarca.selectedIndex].value;
		var marcaSeleccionada = $("#sb"+linea).val();


		var table = document.getElementById('t10');
		var tags_tr = table.getElementsByTagName('tr');
		var tags_td;
		var nombre, marca;
		var fila;
		var contador;
		var vec1 = [];
		for (i = 0; i < tags_tr.length; i++) {

			fila = tags_tr[i];
			tags_td = fila.getElementsByTagName('td');

			nombre = tags_td.item(1).innerHTML;
			marca = tags_td.item(2).innerHTML;

			if (nombre == nombreSeleccionado && marca == marcaSeleccionada) {
				contador = (tags_td.item(6).innerHTML);
				if(contador!=0){
					for (j = 1; j <= contador; j++) {
						vec1.push(j);
					}
				}else{
					vec1.push("NO HAY STOCK")	
				}

			}
		}
		//vec1.sort();
		addOptions(vec1, "sc" + linea);

	}

	function cargarSubTotal(linea) {

		var selectNombre = document.getElementById("sa" + linea);
		//var nombreSeleccionado = selectNombre.options[selectNombre.selectedIndex].value;
		var nombreSeleccionado = $("#sa"+linea).val();
		var selectMarca = document.getElementById("sb" + linea);
		var marcaSeleccionada = $("#sb"+linea).val();
		//var marcaSeleccionada = selectMarca.options[selectMarca.selectedIndex].value;
		var selectStock = document.getElementById("sc" + linea);
		var stockSeleccionado = $("#sc"+linea).val();
		//var stockSeleccionado = selectStock.options[selectStock.selectedIndex].value;

		var table = document.getElementById('t10');
		var tags_tr = table.getElementsByTagName('tr');
		var tags_td;
		var nombre, marca, precio, calculo, subtotal;
		var fila;
		var contador;
		var vec1 = [];
		for (i = 0; i < tags_tr.length; i++) {

			fila = tags_tr[i];
			tags_td = fila.getElementsByTagName('td');

			nombre = tags_td.item(1).innerHTML;
			marca = tags_td.item(2).innerHTML;

			if (nombre == nombreSeleccionado && marca == marcaSeleccionada) {
				precio = tags_td.item(5).innerHTML;
				calculo = stockSeleccionado * parseFloat(precio);
			}
		}
		subtotal = document.getElementById("sd" + linea);
		subtotal.value = calculo;
		calcularTotal();
		
	}
	function calcularTotal() {
		//suma de los productos
		var table = document.getElementById("dataTable");
		var cantFilas = table.rows.length;
		var suma1 = 0, subTotal;
		document.getElementById("total").value = 0;

		for (i = 1; i <= cantFilas; i++) {
			if(document.getElementById("sd"+i).value != null){
			if (document.getElementById("sd"+i).value !== "Subtotal...") {
				subTotal = document.getElementById("sd"+i).value;
				suma1 += parseFloat(subTotal);
			}
			}
		}
		
		//sumade los servicios
		var table = document.getElementById("dataTable1");
		var cantFilas = table.rows.length;
		var suma2 = 0, subTotal;
		//document.getElementById("total").value = 0;

		for (i = 1; i <= cantFilas; i++) {
			if(document.getElementById("pc"+i).value != null){
			if (document.getElementById("pc"+i).value !== "Subtotal...") {
				subTotal = document.getElementById("pc"+i).value;
				suma2 += parseFloat(subTotal);
			}
			}
		}
		
		document.getElementById("total").value = (suma1 + suma2);
	}
	
	function cargarJsonProducts(){

		var confirmarProductosYServicios = 0;
		
		var productos = [];	
		var producto;
		
		var id;
		
		var selectCant; 
		var cantSeleccionada;
		
		var nombreSeleccionado;
		var marcaSeleccionada;
	
	
		var table= document.getElementById("dataTable");
		var cantFilas= table.rows.length;

		var table2 = document.getElementById('t10');
		var tags_tr = table2.getElementsByTagName('tr');
		var tags_td;
		var nombre, marca,id;
		var fila;
		var vec1 = [];
		
		var input1="[";
		
 		if(cantFilas==1 && $("#sa"+ (1)).val()== "Producto..."){
			input1+="]"; 
			confirmarProductosYServicios+=1;
		}else{ 
			for(j=0;j<cantFilas;j++){
				
				selectCant= document.getElementById("sc" + (j+1));
				cantSeleccionada= selectCant.options[selectCant.selectedIndex].value;
				nombreSeleccionado= document.getElementById("sa" + (j+1)).value;
				marcaSeleccionada= document.getElementById("sb" + (j+1)).value;
			
				for (i = 0; i < tags_tr.length; i++) {
		
					fila = tags_tr[i];
					tags_td = fila.getElementsByTagName('td');
					
					nombre = tags_td.item(1).innerHTML;
					marca = tags_td.item(2).innerHTML;
		
					if (nombre == nombreSeleccionado && marca == marcaSeleccionada) {
						id = (tags_td.item(0).innerHTML);
						nombre= (tags_td.item(1).innerHTML);
						precioFinal= (tags_td.item(5).innerHTML);
						precioBase= (tags_td.item(4).innerHTML);
						descripcion= (tags_td.item(3).innerHTML);
						
						producto={id: id,nombre: nombre, descripcion: descripcion, marca: marca, cantidad: cantSeleccionada};
						productos.push(producto);
						if(j!=(cantFilas-1)){
							input1+="{id : "+id+", name: "+nombre+", description: "+descripcion+", mark: "+marca+", finalPrice: "+precioFinal+", basePrice: "+precioBase+", quantity: "+cantSeleccionada+"},";
						}else{
							input1+="{id : "+id+", name: "+nombre+", description: "+descripcion+", mark: "+marca+", finalPrice: "+precioFinal+", basePrice: "+precioBase+", quantity: "+cantSeleccionada+"}]";
						} 
					}
					
				}	
			}
		}
		document.getElementById("jsonProductos").value=input1;
		
	//servicios	
		var servicios = [];	
		var servicio;
		
		var id;
		
		var nombreSeleccionado;
		var tipoSeleccionado;
	
	
		var table= document.getElementById("dataTable1");
		var cantFilas2= table.rows.length;

		var table2 = document.getElementById('t11');
		var tags_tr = table2.getElementsByTagName('tr');
		var tags_td;
		var nombre, tipo,id;
		var fila;
		var vec1 = [];
		var input2="[";
		
 		if(cantFilas2==1 && $("#pa"+ (1)).val() == "Servicio..." ){
 			input2+="]"; 
			confirmarProductosYServicios+=1;
		}else{
			for(j=0;j<cantFilas2;j++){ 
				
				nombreSeleccionado= document.getElementById("pa" + (j+1)).value;
				tipoSeleccionado= document.getElementById("pb" + (j+1)).value;
				cantIngresada= document.getElementById("pd" + (j+1)).value;
			
				for (i = 0; i < tags_tr.length; i++) {
		
					fila = tags_tr[i];
					tags_td = fila.getElementsByTagName('td');
					
					nombre = tags_td.item(1).innerHTML;
					tipo = tags_td.item(2).innerHTML;
		
					if (nombre == nombreSeleccionado && tipo == tipoSeleccionado) {
						id = (tags_td.item(0).innerHTML);
						nombre= (tags_td.item(1).innerHTML);
						precioFinal= (tags_td.item(4).innerHTML);
						descripcion= (tags_td.item(3).innerHTML);
						
						servicio={id: id,nombre: nombre,tipo: tipo, descripcion: descripcion,cantSeleccionada: cantIngresada, precio: precioFinal};
						servicios.push(servicio);
						if(j!=(cantFilas2-1)){
							input2+="{id : "+id+", name: "+nombre+", type: "+tipo+", description: "+descripcion+", quantity : "+cantIngresada+", finalPrice: "+precioFinal+"},";
						}else{
							input2+="{id : "+id+", name: "+nombre+", type: "+tipo+", description: "+descripcion+", quantity : "+cantIngresada+", finalPrice: "+precioFinal+"}]";
						}
					}
					
				}	 
			} 
		}  
		document.getElementById("jsonServicios").value=input2; 
		 
		if(confirmarProductosYServicios == 2 || document.getElementById("clientCell1").value =="Nombre..." ){ 
			alert("Debe seleccionar un cliente y por lo menos un producto o un servicio para realizar la venta");

			return false; 
		}else{
			return true;
		}

	}
	
	loadFirstCombo("sa1");		
</SCRIPT>

<!-- SERVICIOS  -->
<script type="text/javascript">

function eliminarDuplicados1(vector){
	
	var vecAux=[];
	for(i=0;i<vector.length;i++){
		for(j=0;j<vector.length-1;j++){
			if(i!=j){
				if(vector[i]==vector[j]){
					vector[i]=null;
				}
			}
		}
	}
	j=0;
	for(i=0;i<vector.length;i++){
		if(vector[i]!==null){
			vecAux[j]=vector[i];
			j++;
		}
	}
	return vecAux;
	
}


	function cargarPrimerCombo1(id) {
		var vectorFinal;
		var table = document.getElementById('t11');
		var tags_tr = table.getElementsByTagName('tr');
		var tags_td;
		var fila;
		var vec = [];
		var data
		for (i = 0; i < tags_tr.length; i++) {

			fila = tags_tr[i];
			tags_td = fila.getElementsByTagName('td');			
			vec.push(tags_td.item(1).innerHTML);

		}
		
		
		vec.sort();
		
		vectorFinal=eliminarDuplicados1(vec);
		
		addOptions1(vectorFinal, id);
	}

	// Rutina para agregar opciones a un <select>
	function addOptions1(array, id) {
		
		var miSelect = document.getElementById(id);
 		while (miSelect.options.length > 1) {
			miSelect.remove(1);
		} 

		var miOption;
		for (i = 0; i < array.length; i++) {

			data = {
				    id: array[i],
				    text: array[i]
				};

				var newOption = new Option(data.text, data.id, false, false);
				$("#"+id).append(newOption);
	 	}		
	}

	function addRow1(tableID) {

		var table = document.getElementById(tableID);
		var rowCount = table.rows.length;
		var row = table.insertRow(rowCount);

		var cell1 = row.insertCell(0);
		var element1 = document.createElement("input");
		element1.type = "checkbox";
		cell1.appendChild(element1);

		var cell2 = row.insertCell(1);
		var element39 = document.createElement("select");
		element39.id="pa"+table.rows.length;
		element39.name=table.rows.length;
		element39.style="width:100%";
		element39.onchange=function(){cargarComboTipo(this.name)};
		cell2.appendChild(element39);
		var newOption = new Option("Servicio...","Servicio", false, false);
		$("#"+element39.id).append(newOption);
		cargarPrimerCombo1(element39.id);

		var cell3 = row.insertCell(2);
		var element40 = document.createElement("select");
		element40.id="pb"+table.rows.length;
		element40.name=table.rows.length;
		element40.style="width:100%";
		element40.onchange=function(){cargarSubTotal1(this.name)};
		cell3.appendChild(element40);
		var newOption = new Option("Tipo...","Tipo...", false, false);
		$("#"+element40.id).append(newOption);

		var cell4 = row.insertCell(3);
		var pd2 = document.createElement("input");
		pd2.id = ("pd" + table.rows.length); // change id or other attributes/contents
		pd2.name = table.rows.length;
		pd2.placeholder = "cantidad..."
		pd2.type="number";
		pd2.pattern="[0-9]{1,15}";
			pd2.min=1;
			pd2.oninvalid="setCustomValidity('Ingresa una cantidad mayor a 0')"; 
       		pd2.oninput="setCustomValidity('')";
      		pd2.onchange=function(){cargarSubTotal1(this.name)};
		pd2.style="width:100%";
		cell4.appendChild(pd2); // add new row to end of table		
		
		var cell4 = row.insertCell(4);
		var pd1 = document.createElement("input");
		pd1.id = ("pc" + table.rows.length); // change id or other attributes/contents
		pd1.name = table.rows.length;
		pd1.value = "Subtotal..."
		pd1.type="text";
		pd1.style="width:85%";
		cell4.appendChild(pd1); // add new row to end of table		
	}

	function deleteRow1(tableID) {
	var cambiarId;
		try {

			var table = document.getElementById(tableID);
			var rowCount = table.rows.length;
			var borrar,j;

			for (var i = 0; i < rowCount; i++) {

				var row = table.rows[i];
				var nuevaId;
				var chkbox = row.cells[0].childNodes[0];

				if (null != chkbox && true == chkbox.checked) {

					table.deleteRow(i);
					rowCount--;
									
					for(j=i;j<rowCount;j++){
						
						borrar=document.getElementById("pa"+(j+2));
						borrar.id=("pa"+(j+1));
						borrar.name=(j+1);
						
						borrar=document.getElementById("pb"+(j+2));
						borrar.id=("pb"+(j+1));
						borrar.name=(j+1);
						
						borrar=document.getElementById("pd"+(j+2));
						borrar.id=("pd"+(j+1));
						borrar.name=(j+1);
						
						borrar=document.getElementById("pc"+(j+2));
						borrar.id=("pc"+(j+1));
						borrar.name=(j+1);
						}
						
					
					
					i--;
				}
			}
			
		} catch (e) {

			alert(e);

		}
		calcularTotal();
	}

	function cargarComboTipo(linea) {

		var selectMarca = document.getElementById("pb" + linea);

 		while (selectMarca.options.length > 1) {
			selectMarca.remove(1);
		}

 		
 		var inputSubtotal = document.getElementById("pc" + linea);
 		inputSubtotal.value = "Subtotal...";
		calcularTotal();

		var selectNombre = document.getElementById("pa" + linea);
		
		//var nombreSeleccionado = selectNombre.options[selectNombre.selectedIndex].value;
		var nombreSeleccionado = $("#pa"+linea).val();
		var table = document.getElementById('t11');
		var tags_tr = table.getElementsByTagName('tr');
		var tags_td;
		var filtro;
		var fila;
		var vec1 = [];
		for (i = 0; i < tags_tr.length; i++) {

			fila = tags_tr[i];
			tags_td = fila.getElementsByTagName('td');
			filtro = tags_td.item(1).innerHTML;

			if (filtro == nombreSeleccionado) {
				vec1.push(tags_td.item(2).innerHTML);
			}
		}
		vec1.sort();
		addOptions(vec1, "pb" + linea);

	}
	
	function cargarSubTotal1(linea) {

		var selectNombre = document.getElementById("pa" + linea);
		//var nombreSeleccionado = selectNombre.options[selectNombre.selectedIndex].value;
		var nombreSeleccionado = $("#pa"+linea).val();
		var selectMarca = document.getElementById("pb" + linea);
		var marcaSeleccionada = $("#pb"+linea).val();
		
		var cantidadServicio = $("#pd"+linea).val();

		var table = document.getElementById('t11');
		var tags_tr = table.getElementsByTagName('tr');
		var tags_td;
		var nombre, marca, precio, calculo, subtotal;
		var fila;
		var contador;
		var vec1 = [];
		for (i = 0; i < tags_tr.length; i++) {

			fila = tags_tr[i];
			tags_td = fila.getElementsByTagName('td');

			nombre = tags_td.item(1).innerHTML;
			marca = tags_td.item(2).innerHTML;

			if (nombre == nombreSeleccionado && marca == marcaSeleccionada) {
				precio = tags_td.item(4).innerHTML;
			}
		}
		subtotal = document.getElementById("pc" + linea);
		subtotal.value = precio*cantidadServicio;
		calcularTotal();
		
	}
	
	cargarPrimerCombo1("pa1");
	</script>
<!-- SERVICIOS FIN -->
<script type="text/javascript">
	$(document).ready(function() {
	  $(".js-example-basic-single").select2();
	  $('body').on('DOMNodeInserted', 'select', function () {
	      $(this).select2();
	  });
	});	
</script>

<script type="text/javascript">
		function getCellsValue(cell) {
	
			var tags_td = cell.getElementsByTagName('td');
			document.getElementById('clientCell0').value = tags_td.item(0).innerHTML;
			document.getElementById('clientCell1').value = tags_td.item(1).innerHTML;
			document.getElementById('clientCell2').value = tags_td.item(2).innerHTML;
			document.getElementById('clientCell3').value = tags_td.item(3).innerHTML;
			document.getElementById('clientCell4').value = tags_td.item(4).innerHTML;
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


</html>