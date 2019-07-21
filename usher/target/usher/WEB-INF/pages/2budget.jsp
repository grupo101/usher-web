
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

<link rel="shortcut icon" href="images/BauerMecanicaLogo1.png" />
	<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
	
	<title>Bauer Mecánica Integral</title>
	<link rel="stylesheet" type="text/css" href="css/estilo32.css" />
	<link rel='stylesheet' type='text/css' href='css/styleOrigin.css' />

	<script type='text/javascript' src='js/jquery-1.3.2.min.js'></script>
	<script type='text/javascript' src='js/example.js'></script>
	
	<style>
	                @media print { 
                    #contenedor { display:None; } 
                    #cabecera { display:None; }
                    #left_nav { display:None;}  
                    #fondomenu{ display:None;}
                    #fondoAzul{display:none;}
                    #espacio{display:none;}
                    #page-wrap{width:21cm;}                                             
	                }
	</style>

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
    </div>
    <!--\\\\\\\ header top bar end \\\\\\-->
  </div>
  <!--\\\\\\\ header end \\\\\\-->

    <!--\\\\\\\ inner start \\\\\\-->
    <div id="left_nav" class="left_nav">
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
<li><a href= "javascript:window.print()" >IMPRIMIR</a></li>  
      </ul>
      </div><div class="slimScrollBar" style="background: rgb(161, 178, 189); width: 5px; position: absolute; top: 0px; border-radius: 7px; z-index: 99; right: 1px; height: 30px; display: none; opacity: 0.4;"></div><div class="slimScrollRail" style="width: 5px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
    </div>
    
<div id="main-content" style="background-color:white">
<div id="header" style="height:30px;margin:0px">PRESUPUESTO</div>
    <div class="page-content">
          <br id="espacio"></br>
    <br id="espacio"></br>
      
      <div class="row">
        <div class="col-md-12">

<!-- <div id="fondoAzul" style="background-color:#178bb7fa; width:100%;weigth:100%"> -->

 	<div style="background-color:white; height: 100%; width: 21 cm; margin-left: auto;  margin-right: auto">
	
	<div id="page-wrap" style="background-color:white; height: 100%; width: 85%; margin-left: inherit;  margin-right: initial;">
		
		
		<div id="identity">
		
            <textarea id="address">Mecánica Bauer
Alvear 333,
Ituzaingó, Buenos Aires.

Teléfono: 4661 0391</textarea>

            <div id="logo" style="margin-right:50px; margin-top: 0px">

              <div id="logohelp">
                <input id="imageloc" type="text" size="50" value="" /><br />
                (max width: 540px, max height: 100px)
              </div>
              <img id="image" src="images/BauerMecanicaLogo.png" alt="logo" />
            </div>
		
		</div>
		
		<div style="clear:both"></div>
		
		<div id="customer">
<textarea style="float: left;width:10%">Cliente:
Cuit:</textarea>
            <textarea id="customer-title" style="width:35%"><c:out value="${sale.clientName}"></c:out>
<c:out value="${sale.clientCuit}"></c:out>
</textarea>

            <table id="meta">
                <tr>
                    <td class="meta-head">Presupuesto #</td>
                    
                    <td><textarea><c:out value="00${sale.id}"></c:out></textarea></td>
                </tr>
                <tr>

                    <td class="meta-head">Fecha</td>
                    <td><textarea><c:out value="${sale.dateSale}"></c:out></textarea></td>
                </tr>
                <tr>
                    <td class="meta-head">Total a pagar</td>
                    <td><div class="due">$ <c:out value="${sale.totalPrice}"></c:out></div></td>
                </tr>

            </table>
		
		</div>
		
		<table id="items">
		
		  <tr>
		      <th>Producto/Servicio</th>
		      <th>Marca/Tipo</th>
		      <th>P.Unidad</th>
		      <th>Cant.</th>
		      <th>Subtot.</th>
		  </tr>
		 <c:forEach var="detailSale" items="${detailedSale}">
		  
		  <tr class="item-row">
		      <td class="item-name"><textarea>${detailSale.nameProduct}</textarea></td>
		      <td class="description"><textarea>${detailSale.markProduct}</textarea></td>
		      <td><textarea class="cost">$ ${detailSale.finalPrice}</textarea></td>
		      <td><textarea class="qty">${detailSale.quantityAsked}</textarea></td>
		      <td><span class="price">$ ${detailSale.subtotal}</span></td>
		  </tr>
		 </c:forEach>
		  <tr class="item-row">
		      <td class="item-name"><textarea></textarea></td>
		      <td class="description"><textarea></textarea></td>
		      <td><textarea class="cost"></textarea></td>
		      <td><textarea class="qty"></textarea></td>
		      <td><span class="price"></span></td>
		  </tr>
		  
<%-- 		  <tr>
		      <td colspan="2" class="blank"> </td>
		      <td colspan="2" class="total-line">Subtotal</td>
		      <td class="total-value"><div id="subtotal">$ <c:out value="${sale.totalPrice}"></c:out></div></td>
		  </tr>
		  <tr>		  
		  	  <td colspan="2" class="blank"> </td>
		      <td colspan="2" class="total-line">IVA</td>
		      <td class="total-value"><textarea id="paid">%21</textarea></td>
		  </tr>
		  <tr>
			  <td colspan="2" class="blank"> </td>
		      <td colspan="2" class="total-line">Total</td>
		      <td class="total-value"><div id="total">$875.00</div></td>
		  </tr> --%>
		  <tr>
		      <td colspan="2" class="blank"> </td>
		      <td colspan="2" class="total-line balance">Total con IVA</td>
		      <td class="total-value balance"><div class="due">$<c:out value="${sale.totalPrice}"></c:out></div></td>
		  </tr>
		 
		</table>
		
		<div id="terms">
		  <h5>Términos</h5> 
		  <textarea>PRESUPUESTO, sin obligación de compra</textarea>
<!-- 		  <textarea>30 días de pago. Aumentará un impuesto de 1.5% sobre el total después de 30 días.</textarea>
 -->
 			<c:set var = "theDebt" value = "${client.debt}"/>
 			<c:if test = "${ theDebt < 0.0}">
  		  <textarea style="background-color:green;color:white;">El cliente tiene un saldo a favor de: $ <c:out value="${client.debt}"></c:out></textarea>
  		   </c:if>
  		   
  		   <c:set var = "theDebt" value = "${client.debt}"/>
 			<c:if test = "${ theDebt > 0.0}">
  		  <textarea style="background-color:red;color:black;">El cliente adeuda un saldo de: $ <c:out value="${client.debt}"></c:out></textarea>
  		   </c:if>
		 </div>
	
	</div>
	</div>
</div>
</div>
</div>
</div>
</body>

</html>