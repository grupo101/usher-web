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
		
			<link href="css/select2.min.css" rel="stylesheet" />
		
<script src="js/jquery-1.12.js"></script>
<script src="js/select2.min.js"></script>
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
          <h1>Asignar compra</h1>
          </div>
        <div class="pull-right">
          <ol class="breadcrumb">
            <li><a href="#">Principal</a></li>
            <li><a href="#">COMPRA</a></li>
            
          </ol>
        </div>
      </div>
      <div class="container clear_both padding_fix">
        <!--\\\\\\\ container  start \\\\\\-->


	
<div> 
  <br>
	<form:form method="post" commandName="purchaseForm" action="addPurchase" onsubmit="loadJsonProducts()" >
		
		<p>Nombre del proveedor</p>

		<br>
		
		<div id="proveedorForm">
		
				<form:select id="providerForm" name="providerForm" path="provider" class="js-example-basic-single" style="width:40%" required="required" >
					<option value="" disabled selected>Proveedor...</option>
					<form:options items="${providers}" itemLabel="company" itemValue="id"/>
					
				</form:select>
		</div>
		
		<br>
		<hr/>
			
	<p>Productos</p>
	
	<INPUT class="btn btn-primary btn-sm" type="button" value="Agregar producto" onclick="addRow('dataTable');" />
	<INPUT class="btn btn-primary btn-sm" type="button" value="Eliminar producto" onclick="deleteRow('dataTable');" />
	
	<p><br></p>
	
	

	<TABLE id="dataTable" style="width: 80%" >

		<TR id="linea1">
			<TD><INPUT type="checkbox" NAME="chk" disabled/></TD>
			<TD style="width: 30%">
				<select  id="sa1" name="1" class="js-example-basic-single"  onchange="loadMarkComb(this.name)"  style="width:100%" required="required">
					<option value="" disabled selected>Producto...</option>
				</select>
			</TD>
			<TD style="width: 30%">
				<select id="sb1" name="1"  class="js-example-basic-single" required="required"  style="width:100%">
					<option value="" disabled selected>Marca...</option>
				</select></TD>
			<TD style="width: 20%">
				<INPUT id="sc1" name="1" type="number" placeholder="Cantidad..."
						required="required"
						pattern="[0-9]{1,15}"
						min=1 
						oninvalid="setCustomValidity('Ingresa una cantidad mayor a 0')" 
                   		oninput="setCustomValidity('')" 
                   		onchange="loadSubTotal(this.name)"
                   		style="width:100%"/>
			</TD>
			<TD style="width: 20%">
				<INPUT id="sd1" name="1" type="text" value="Subtotal..." readonly="readonly" style="width:85%" />  
			</TD>
		</TR>
	</TABLE>



	<hr />

	<p>Total:</p>
	
	<br>
	
	<form:input path="totalPrice" id="total" name="total" type="text" placeholder="Total..." readonly="true"/>

		<form:input path="listaProductos" id="jsonProductos" style="display:none"/>	
			
			<input class="btn btn-primary btn-sm" type="submit" value="Registrar compra">
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
		var productSelect = document.createElement("select");
		productSelect.required=true;		
		productSelect.id="sa"+table.rows.length;
		productSelect.name=table.rows.length;
		productSelect.style="width:100%";
		productSelect.onchange=function(){loadMarkComb(this.name)};
		cell2.appendChild(productSelect);
		
		var newOption = new Option("Producto...","", false, true); 
		newOption.disabled=true;
		$("#"+productSelect.id).append(newOption);
		loadFirstCombo(productSelect.id);

		var cell3 = row.insertCell(2);
		var markSelect = document.createElement("select");
		markSelect.id="sb"+table.rows.length;
		markSelect.name=table.rows.length;
		markSelect.required=true;
		markSelect.style="width:100%";
		cell3.appendChild(markSelect);
		var newOption = new Option("Marca...","", false, true);
		newOption.disabled=true;
		$("#"+markSelect.id).append(newOption); 

		var cell4 = row.insertCell(3);
		var quantityInput = document.createElement("input");
		quantityInput.id="sc"+table.rows.length;
		quantityInput.name=table.rows.length;
		quantityInput.required=true;
		quantityInput.style="width:100%";
		quantityInput.type="number";
		quantityInput.placeholder="Cantidad...";
		quantityInput.pattern="[0-9]{1,15}";
		quantityInput.min=1;
		quantityInput.oninvalid="setCustomValidity('Ingresa una cantidad mayor a 0')"; 
		quantityInput.oninput="setCustomValidity('')";
        quantityInput.onchange=function(){loadSubTotal(this.name)};
		cell4.appendChild(quantityInput);
		
		var cell5 = row.insertCell(4);
		var subTotalInput = document.createElement("input");
		subTotalInput.id = ("sd" + table.rows.length);
		subTotalInput.name = table.rows.length;
		subTotalInput.value = "Subtotal..."
		subTotalInput.type="text";
		subTotalInput.style="width:85%";
		cell5.appendChild(subTotalInput);		
	}

	function deleteRow(tableID) {
		try {

			var table = document.getElementById(tableID);
			var rowCount = table.rows.length;
			var auxVar,j;

			for (var i = 0; i < rowCount; i++) {

				var row = table.rows[i];
				var chkbox = row.cells[0].childNodes[0];

				if (null != chkbox && true == chkbox.checked) {

					table.deleteRow(i);
					rowCount--;
									
					for(j=i;j<rowCount;j++){
						
						auxVar=document.getElementById("sa"+(j+2));
						auxVar.id=("sa"+(j+1));
						auxVar.name=(j+1);
						
						auxVar=document.getElementById("sb"+(j+2));
						auxVar.id=("sb"+(j+1));
						auxVar.name=(j+1);
						
						auxVar=document.getElementById("sc"+(j+2));
						auxVar.id=("sc"+(j+1));
						auxVar.name=(j+1);
						
						auxVar=document.getElementById("sd"+(j+2));
						auxVar.id=("sd"+(j+1));
						auxVar.name=(j+1);
						}
						
					
					
					i--;
				}
			}
			
		} catch (e) {

			alert(e);

		}
		calculateTotal();
	}

	function loadMarkComb(line) {

		var markSelect = document.getElementById("sb" + line);

 		while (markSelect.options.length > 1) {
			markSelect.remove(1);
		}

		quantityInput = document.getElementById("sc" + line);
		quantityInput.Placeholder = "Cantidad...";
		quantityInput.Placeholder = 0;
		var subtotalInput = document.getElementById("sd" + line);
		subtotalInput.value = "Subtotal...";
		subtotalInput.readonly="true";
		calculateTotal();

		var nameSelect = document.getElementById("sa" + line);
		
		//var selectedName = nameSelect.options[nameSelect.selectedIndex].value;
		var selectedName = $("#sa"+line).val();
		var table = document.getElementById('t10');
		var tags_tr = table.getElementsByTagName('tr');
		var tags_td;
		var filter;
		var row;
		var vec1 = [];
		for (i = 0; i < tags_tr.length; i++) {

			row = tags_tr[i];
			tags_td = row.getElementsByTagName('td');
			filter = tags_td.item(1).innerHTML;

			if (filter == selectedName) {
				vec1.push(tags_td.item(2).innerHTML);
			}
		}
		vec1.sort();
		addOptions(vec1, "sb" + line);

	}


	function loadSubTotal(line) {

		//var nameSelect = document.getElementById("sa" + line);
		//var selectedName = nameSelect.options[nameSelect.selectedIndex].value;
		var selectedName = $("#sa"+line).val();
		//var markSelect = document.getElementById("sb" + line);
		var selectedMark = $("#sb"+line).val();
		//var selectedMark = markSelect.options[markSelect.selectedIndex].value;
		//var selectStock = document.getElementById("sc" + line);
		var stockSeleccionado = $("#sc"+line).val();
		//var stockSeleccionado = selectStock.options[selectStock.selectedIndex].value;

		var table = document.getElementById('t10');
		var tags_tr = table.getElementsByTagName('tr');
		var tags_td;
		var name, mark, cost, valueCalculated, subtotal;
		var row;
		var vec1 = [];
		for (i = 0; i < tags_tr.length; i++) {

			row = tags_tr[i];
			tags_td = row.getElementsByTagName('td');

			name = tags_td.item(1).innerHTML;
			mark = tags_td.item(2).innerHTML;

			if (name == selectedName && mark == selectedMark) {
				cost = tags_td.item(4).innerHTML;
				valueCalculated = stockSeleccionado * parseFloat(cost);
			}
		}
		subtotal = document.getElementById("sd" + line);
		subtotal.value = valueCalculated;
		calculateTotal();
		
	}
	function calculateTotal() {
		
		var table = document.getElementById("dataTable");
		var quantityRows = table.rows.length;
		var sum = 0, subTotal;
		document.getElementById("total").value = 0;

		for (i = 1; i <= quantityRows; i++) {
			if(document.getElementById("sd"+i).value !== null){ 
			if (document.getElementById("sd"+i).value !== "Subtotal...") {
				subTotal = document.getElementById("sd"+i).value;
				sum += parseFloat(subTotal);
			}
			}
		}
		document.getElementById("total").value = sum;
	}
	
	function loadJsonProducts(){
		
		//var products = [];	
		//var product;		
		//var selectCant; 
		var selectedQuantity;
		var selectedName;
		var selectedMark;	
		var table= document.getElementById("dataTable");
		var quantityRows= table.rows.length;
		var table2 = document.getElementById('t10');
		var tags_tr = table2.getElementsByTagName('tr');
		var tags_td;
		var name, mark,id, finalPrice, basePrice;
		var row;
		var input="[";
		
		for(j=0;j<quantityRows;j++){
			
			//selectCant= document.getElementById("sc" + (j+1));
			selectedQuantity= document.getElementById("sc" + (j+1)).value;
			selectedName= document.getElementById("sa" + (j+1)).value;
			selectedMark= document.getElementById("sb" + (j+1)).value;
		
			for (i = 0; i < tags_tr.length; i++) {
	
				row = tags_tr[i];
				tags_td = row.getElementsByTagName('td');
				name = tags_td.item(1).innerHTML;
				mark = tags_td.item(2).innerHTML;
	
				if (name == selectedName && mark == selectedMark) {
					id = (tags_td.item(0).innerHTML);
					name= (tags_td.item(1).innerHTML);
					finalPrice= (tags_td.item(5).innerHTML);
					basePrice= (tags_td.item(4).innerHTML);
					
/* 					product={id: id,name: name,mark: mark, cantidad: selectedQuantity};
					products.push(product); */
					if(j!=(quantityRows-1)){
						input+="{productId : "+id+", productName: "+name+", productMark: "+mark+", finalPrice: "+finalPrice+", basePrice: "+basePrice+", productQuantity : "+selectedQuantity+"},";
					}else{
						input+="{productId : "+id+", productName: "+name+", productMark: "+mark+", finalPrice: "+finalPrice+", basePrice: "+basePrice+", productQuantity : "+selectedQuantity+"}]";
					}
				}
				
			}	
		}
		
		document.getElementById("jsonProductos").value=input;

		return false;
	}
	
	loadFirstCombo("sa1");		
</SCRIPT>

<script type="text/javascript">
	$(document).ready(function() {
	  $(".js-example-basic-single").select2();
	  $('body').on('DOMNodeInserted', 'select', function () {
	      $(this).select2();
	  });
	});	
</script>

</html>