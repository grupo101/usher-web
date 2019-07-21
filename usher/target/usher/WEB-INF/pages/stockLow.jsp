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
          <h1>Listado de productos faltantes</h1>
          </div>
        <div class="pull-right">
          <ol class="breadcrumb">
            <li><a href="#">Principal</a></li>
            <li><a href="#">REPORTE DE STOCK</a></li>
            
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
                <th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 25px;">Id</th>
                <th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 100px;">Nombre</th>
                <th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 100px;">Marca</th>
                <th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 100px;">Precio Base </th>
                <th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 100px;">Precio</th>
                <th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 100px;">Stock actual</th>
               <th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 100px;">Stock minimo</th>
             <th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 100px;">Descripcion</th>
               
                <!-- <th>pedir</th> -->
            </tr>
            </thead>
            <tbody>
        <c:forEach var="product" items="${stockLowList}">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.mark}</td>                
                <td>${product.initPrice}</td>
                <td>${product.finalPrice}</td>
                <td>${product.stock}</td>
                <td>${product.minStock}</td>
                <td>${product.description}</td>
				<%--<td>${product.ask}</td>--%>
            </tr>
        </c:forEach>
        </tbody>
    </table>    
    

<%-- 	
	<p>
		<b>PRODUCTO SELECCIONADO:</b>
	</p>

<form:form id="form1" name="form1" method="post" commandName="productForm" action="modifyProduct">
	
		<table style="width: 25%;" border=1>
			<tr>
				<th align=left style="background-color: #dedede">ID:</th>
				<th style="background-color: white"><form:input id="id"	path="id" readonly="true" /></th>
				<th align=left style="background-color: #dedede;display:none">Precio final:</th>
				<th style="background-color: white;display:none"><form:input id="initPrice" path="initPrice" readonly="true"/></th>			
				<th align=left style="background-color: #dedede;display:none">Precio final:</th>
				<th style="background-color: white;display:none"><form:input id="finalPrice" path="finalPrice" readonly="true"/></th>			
				<th align=left style="background-color: #dedede">Stock minimo:</th>
				<th style="background-color: white"><form:input id="minStock" path="minStock" readonly="true"/></th>
			
			</tr>
			<tr>
				<th align=left style="background-color: #dedede">Nombre:</th>
				<th style="background-color: white"><form:input id="name" path="name" readonly="true"/></th>			
				<th align=left style="background-color: #dedede;display:none">Descripcion:</th>
				<th style="background-color: white;display:none"><form:input id="description" path="description" /></th>
				<th align=left style="background-color: #dedede">Stock actual:</th>
				<th style="background-color: white"><form:input id="stock" path="stock" readonly="true"/></th>				
			
			</tr>
			<tr>
			
				<th style="background-color: #dedede;display:none"></th>
				<th style="background-color: #dedede;display:none"></th>
				<th align=left style="background-color: #dedede">Marca:</th>
				<th style="background-color: white"><form:input id="mark" path="mark" readonly="true" /></th>
				<th align=left style="background-color: #dedede">Pedir:</th>
				<th style="background-color: white"><form:input id="ask" path="ask" /></th>
				
			</tr>
			
			<tr>
				<th style="background-color: #dedede;display:none"></th>
				<th style="background-color: #dedede;display:none"></th>
				<th style="background-color: #dedede"></th>
				<th style="background-color: #dedede"></th>	
				<th style="background-color: #dedede"></th>
				<th align=center style="background-color: #dedede">
					<input style="width:94%;heigth:100%; margin:0;" type="submit" value="REPONER"/>
					
				</th>
			</tr>
		</table>
	</form:form> --%>

</div>
              </div><!--/table-responsive-->
            </div><!--/porlets-content-->
            
            
          </div><!--/block-web--> 
        </div><!--/col-md-12--> 
      </div><!--/row-->
      
       <div class="row">
        <div class="col-md-12">
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
		document.getElementById('id').value = tags_td.item(0).innerHTML;
		document.getElementById('name').value = tags_td.item(1).innerHTML;
		document.getElementById('mark').value = tags_td.item(2).innerHTML;
		document.getElementById('description').value = tags_td.item(3).innerHTML;
		document.getElementById('initPrice').value = tags_td.item(4).innerHTML;
		document.getElementById('finalPrice').value = tags_td.item(5).innerHTML;
		document.getElementById('stock').value = tags_td.item(6).innerHTML;
		document.getElementById('minStock').value = tags_td.item(7).innerHTML;

	}


function selectLine() {
	var table = document.getElementById('example');
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