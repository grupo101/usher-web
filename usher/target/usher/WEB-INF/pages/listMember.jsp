<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Usher</title>
<meta name="ROBOTS" content="NOINDEX, NOFOLLOW">
<link href="css/font-awesome.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/animate.css" rel="stylesheet" type="text/css">
<link href="css/admin.css" rel="stylesheet" type="text/css">
<link href="plugins/data-tables/DT_bootstrap.css" rel="stylesheet">
<!-- <link rel="shortcut icon" href="images/BauerMecanicaLogo2.png" />
 -->
<script src="js/jquery-1.12.js"></script>
<!-- <script src="js/bootstrap.min.js"></script> -->
 <!-- <script src="js/jquery.slimscroll.min.js"></script> -->
<!-- <script src="plugins/data-tables/DT_bootstrap.js"></script> -->
	<link rel="stylesheet" type="text/css" href="css/jquery.dataTables.css" />

	<script src="js/jquery.dataTables.js"></script> 
	<script>
		$(document).ready(function() {
		    $('#dynamic-table').DataTable( {
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
      <div class="logo" style="display:block">Admin <span class="theme_color">USHER</span></div></div>
    
    </div>
    <!--\\\\\\\ brand end \\\\\\-->
    <div class="header_top_bar" style="background-image: url(images/usherBanner.jpg)"> 
      <!--\\\\\\\ header top bar start \\\\\\-->
<!--       <a href="javascript:void(0);" class="menutoggle"> <i class="fa fa-bars"></i> </a>
 -->      
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
						<li><a href="user2">USUARIOS</a>
						<li><a href="member2">DIPUTADOS</a></li>
						<li><a href="bench2">BANCAS</a></li>
						<li><a href="block2">BLOQUES</a></li>
						<li><a href="quorumPanel">QUORUM</a></li>
						<li><a href="benchAssociation1">ASOCIAR BANCA</a></li>
						<li><a href="benchAssociation2">DESASOCIAR BANCA</a></li>
						<li><a href="blockAssociation1">ASOCIAR BLOQUE POLITICO</a></li>
						<li><a href="blockAssociation2">DESASOCIAR BLOQUE POLITICO</a></li>
      </ul>
      </div><div class="slimScrollBar" style="background: rgb(161, 178, 189); width: 5px; position: absolute; top: 0px; border-radius: 7px; z-index: 99; right: 1px; height: 30px; display: none; opacity: 0.4;"></div><div class="slimScrollRail" style="width: 5px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
    </div>
    <!--\\\\\\\left_nav end \\\\\\-->
    <div class="contentpanel" style="background-color:#F6F6F6"> 
      <!--\\\\\\\ contentpanel start\\\\\\-->
      <div class="pull-left breadcrumb_admin clear_both">
        <div class="pull-left page_title theme_color">
          <h1>Listado de Diputados</h1>
          </div>
        <div class="pull-right">
          <ol class="breadcrumb">
            <li><a href="#">Principal</a></li>
            <li><a href="#">DIPUTADOS</a></li>
            
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
 					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 220px;">ID</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 220px;">Nombre</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 220px;">Apellido</th>
 					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 220px;">Estado</th>
<!--					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 220px;">Banca asociada</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 220px;display:none">ID Bloque asociado</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 220px;display:none">ID Banca asociada</th> -->
				</tr>
			</thead>
			<tbody role="alert" aria-live="polite" aria-relevant="all">
				<c:forEach var="member" items="${members}">
						<tr>
	 						<td>${member.id}</td>
							<td>${member.name}</td>
							<td>${member.surName}</td>
							<%-- <td>${member.isActive}</td>  --%> 
 							<c:choose>
							  <c:when test="${member.isActive == 'true'}">
							  	 <td>Activo</td>
							  </c:when>
							  <c:otherwise>
							 	 <td>Inactivo</td>
							  </c:otherwise>
							</c:choose>  
<%-- 							<td>${member.associatedBlock}</td>
							<td>${member.associatedBench}</td>
							<td style="display:none">${member.associatedBlockId}</td>
							<td style="display:none">${member.associatedBenchId}</td> --%>
						</tr>
<%-- 					<c:forEach var="block" items="${blocks}">
						<c:choose>
							<c:when test="${block.id == member.associatedBlockId}">
								<tr>
			 						<td style="display:none">${member.id}</td>
									<td>${member.name}</td>
									<td>${member.surName}</td>
									<td>${block.name}</td>
									<td>${member.associatedBench}</td>
									<td style="display:none">${member.associatedBlockId}</td>
									<td style="display:none">${member.associatedBenchId}</td>
								</tr>
							</c:when>
						</c:choose>
					</c:forEach> --%>
<%-- 					<c:if test="${member.associatedBlockId == 0}">
						<tr>
	 						<td style="display:none">${member.id}</td>
							<td>${member.name}</td>
							<td>${member.surName}</td>
							<td>${member.associatedBlock}</td>
							<td>${member.associatedBench}</td>
							<td style="display:none">${member.associatedBlockId}</td>
							<td style="display:none">${member.associatedBenchId}</td>
						</tr>
					</c:if> --%>
				</c:forEach>
			</tbody>
		</table>
		<!-- 
		 <c:forEach var="detailSale" items="${detailedSale}">
  	<c:set var = "service" value = "${detailSale.service}"/>
 <c:choose>
    <c:when test="${service == 'true'}">
	  <tr>
	    <td>${detailSale.quantityAsked}</td>
	    <td>${detailSale.nameProduct}</td>
	    <td>${detailSale.subtotal}</td>
	  </tr>
    </c:when>    
    <c:otherwise>
	  <tr>
	    <td>${detailSale.quantityAsked}</td>
	    <td>${detailSale.description} ${detailSale.markProduct}</td>
	    <td>${detailSale.subtotal}</td>
	  </tr>
    </c:otherwise>
</c:choose> 			
  </c:forEach>
		 -->
		
		</div>
              </div><!--/table-responsive-->
            </div><!--/porlets-content-->
            
            
          </div><!--/block-web--> 
        </div><!--/col-md-12--> 
      </div><!--/row-->
      
<%--        <div class="row">
        <div class="col-md-12">
        		<div>
			<TABLE id="t11" style="display: none">
				<thead>
				</thead>
				<tbody>
					<c:forEach var="block" items="${blocks}">
						<tr>
							<td>${block.id}</td>
							<td>${block.name}</td>
						</tr>
					</c:forEach>
				</tbody>
			</TABLE>
		</div> --%>
        
        <hr />
	
	<p>
		<b>DIPUTADO SELECCIONADO:</b>
	</p>

<div class="block-web">
	<form:form id="form1" name="form1" method="post"
		commandName="memberForm" action="">
	
		<table style="width: 100%;" class="dataTables_wrapper form-inline" aria-describedby="dynamic-table_info">
			<tr>
				<th align=left style="background-color: #f6f6f6">ID:</th>
				<th style="background-color: white"><form:input id="id"
						path="id" readonly="true"/></th>						
				<th align=left style="background-color: #f6f6f6">Nombre:</th>
				<th style="background-color: white"><form:input id="name"
						path="name" 
						/></th>
                 <th align=left style="background-color: #f6f6f6">Apellido:</th>
				<th style="background-color: white"><form:input id="surName"
						path="surName" 
						/>
										<form:input id="isActive"
						path="isActive" style="display:none"/></th>			
			</tr>
			<tr> 			
<%-- 			<th align=left style="background-color: #f6f6f6">Estado:</th>
				<th style="background-color: white">
					<form:select id="isActive"
						path="isActive" 
						type="text">
						<option>Seleccionar estado</option> 
						<option value=true>true</option> 
						<option value=false>false</option>
					</form:select>
				</th>     --%>              		
<%--            <th align=left style="background-color: #f6f6f6">Banca asociada:</th>
				<th style="background-color: white">
					<form:input id="associatedBench" path="associatedBench"/>
					<form:input id="associatedBenchId" path="associatedBenchId" style="display:none"/>
				</th> --%>
							
<%-- 				<th align=left style="background-color: #f6f6f6">Alta</th>
				<th style="background-color: white"><form:input id="grantedAccess"
						path="grantedAccess" 
						type="text"/>
				</th> --%> 
			</tr>
				<tr>
					<th align=center style="weight: 100%; background-color: white"></th>
					<th align=center style="weight: 100%; background-color: white"></th>
					<th align=center style="weight: 100%; background-color: white"></th>
					<th align=center style="weight: 100%; background-color: white"></th>
					<th align=center style="weight: 100%; background-color: white"></th>
					<th align=center style="background-color: white; width:10%">
					<input id="modifyButton" style="width: 48%;" class="btn btn-primary btn-sm" type="submit" name="Modificar" value="Modificar" onclick="pickModifyButton()" disabled> 
					<input id="removeButton" style="width: 49%;" class="btn btn-primary btn-sm" type="submit" name="Eliminar" value="Baja" onclick="pickActiveInactiveButton()" disabled></th> 
			
				
				</tr>
		</table>
		</form:form>		
		</div>
	<hr />		
	<a href="member"><input class="btn btn-primary btn-lg" id="registrar" type="button" value="Registrar diputado" style="width: 100%;"></a> 	
	<hr />
       </div><!--/page-content end--> 
  </div><!--/main-content end--> 
           
      
      </div>
      <!--\\\\\\\ container  end \\\\\\-->
    </div>
    <!--\\\\\\\ content panel end \\\\\\-->
  </div>
  <!--\\\\\\\ inner end\\\\\\-->
<div class="demo">  </div>

</body>
	<script type="text/javascript">
		function getCellsValue(cell) {
	
			var tags_td = cell.getElementsByTagName('td'); 
			document.getElementById('id').value = tags_td.item(0).innerHTML;
			document.getElementById('name').value = tags_td.item(1).innerHTML;
			document.getElementById('surName').value = tags_td.item(2).innerHTML;
			if(tags_td.item(3).innerHTML == "Activo"){
				document.getElementById('isActive').value=true;
				document.getElementById('removeButton').value="Baja";
			}else{
				document.getElementById('isActive').value=false;
				document.getElementById('removeButton').value="Alta"; 
			}
			/* document.getElementById('isActive').value = tags_td.item(3).innerHTML; */
			
/*  			document.getElementById('isActive').value = tags_td.item(3).innerHTML; 
 */ 			/*			document.getElementById('associatedBench').value = tags_td.item(4).innerHTML;
			document.getElementById('associatedBlockId').value = tags_td.item(5).innerHTML;
			document.getElementById('associatedBenchId').value = tags_td.item(6).innerHTML; */

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
			if(document.getElementById('id').value == 0){
				alert("Debe seleccionar un diputado para modificarlo");
				return false;
			}
			
			document.getElementById('form1').action = "modifyMember";
			//document.getElementById('form1').submit();
		}
		function pickActiveInactiveButton() {
			if(document.getElementById('removeButton').value == "Alta"){
				document.getElementById('isActive').value=true; 
			}else{
				document.getElementById('isActive').value=false;
			}
			document.getElementById('form1').action = "modifyMember";
			//document.getElementById('form1').submit();
		}
	</script>
</html>
