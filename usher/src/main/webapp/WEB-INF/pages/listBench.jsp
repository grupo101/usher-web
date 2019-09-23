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
		    $('#dynamic-table').DataTable({		    			    	
		    	"order": [[ 0, "asc" ]],
		    columnDefs : [
		                  { targets : [5],
		                    render : function (data, type, row) {
		                      switch(data) {
		                         case '0' : return 'Ausente'; break;
		                         case '1' : return 'Presente'; break;
		                         case '2' : return 'Automatico'; break;		                         
		                      }
		                    } 
		                  } ,
		                  {
		                	  targets : [4],
			                    render : function (data, type, row) {
			                      switch(data) {
			                         case 'false' : return 'Ausente'; break;
			                         case 'true' : return 'Presente'; break;                       
			                      }
			                    }		                	  
		                  }
		             ]
		    });		    
} );
		
	    function draw() { 
	    	if(document.getElementById("estado").value !=null){
	    		var string = $( "#estado" ).text(); 
	    		for(i=0; i<92; i++){
	    			//alert(table.rows[i].cells[4].value);
	    			 if($('#manualState'+i+'').html()=="Presente"){
	    				 $('#busyState'+i+'').html("Presente"); 
	    			 }else{
	    				 if($('#manualState'+i+'').html()=="Ausente"){
	    					 $('#busyState'+i+'').html("Ausente");
	    				 }else{	    					 
	    					 if(string.charAt(i) =='0'){
	    		    				$('#busyState'+i+'').html("Ausente");	    		    				
	    		    			}else{
	    		    				$('#busyState'+i+'').html("Presente");
	    		    			}
	    				 }
	    			 }
	    		} 
 	    	}
	    }
		</script> 
 <script src="js/jPushMenu.js"></script>
<script src="js/side-chats.js"></script>

</head>
<body onload="setInterval('getBenchsState()',3000);"  class="light_theme left_nav_fixed atm-spmenu-push" style="">
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
						<li><a href="canvas">QUORUM</a></li>
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
          <h1>Listado de Bancas</h1>
          </div>
        <div class="pull-right">
          <ol class="breadcrumb">
            <li><a href="#">Principal</a></li>
            <li><a href="#">BANCAS</a></li>
            
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
 					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 167px;display:none;">ID</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 167px;">Numero</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 167px;">Diputado asociado</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 167px;">Bloque asociado</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 167px;">Estado actual</th>
					<th class="sorting" role="columnheader" tabindex="0" aria-controls="dynamic-table" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 167px;">Estado manual</th>

				</tr>
			</thead>
			<tbody role="alert" aria-live="polite" aria-relevant="all">
				<c:forEach var="bench" items="${benchs}">
					<tr>
 						<td style="display:none">${bench.id}</td>
						<td>${bench.number}</td>
						<td>${bench.associatedMember}</td>
						<td>${bench.associatedBlock}</td> 
						<td id="busyState${bench.number}">${bench.busyState}</td>			
 						<td id="manualState${bench.number}">${bench.manualState}</td>			
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
		<b>BANCA SELECCIONADA:</b>
	</p>

<div class="block-web">
	<form:form id="form1" name="form1" method="post"
		commandName="benchForm" action="">
	
		<table style="width: 100%;" class="dataTables_wrapper form-inline" aria-describedby="dynamic-table_info">
			<tr>
				<th align=left style="background-color: #f6f6f6">ID:</th>
				<th style="background-color: white"><form:input id="id"
						path="id" readonly="true"/></th>						
				<th align=left style="background-color: #f6f6f6">Numero:</th>
				<th style="background-color: white"><form:input id="number"
						path="number" 
						readonly="true"/></th>
                 <th align=left style="background-color: #f6f6f6">Bloque:</th>
				<th style="background-color: white"><form:input id="associatedBlock"
						path="associatedBlock"
						readonly="true"
						style="width:100%"/></th>
			</tr>
			<tr>
			
			<th align=left style="background-color: #f6f6f6">Diputado:</th>
				<th style="background-color: white"><form:input id="associatedMember"
						path="associatedMember"
						readonly="true"/></th>                   		
            <th align=left style="background-color: #f6f6f6">Estado actual:</th>
				<th style="background-color: white"><form:input id="busyState"
						path="busyState" 
						readonly="true"/>
				</th> 			
				<th align=left style="background-color: #f6f6f6">Estado manual:</th>
				<th style="background-color: white"><form:select id="manualState"
						path="manualState"
						type="text"> 
						<option value=0>Ausente</option>
						<option value=1>Presente</option>
						<option value=2>Automatico</option>
						</form:select>
				</th>
			</tr>
				<tr>
					<th align=center style="weight: 100%; background-color: white"></th>
					<th align=center style="weight: 100%; background-color: white"></th>
					<th align=center style="weight: 100%; background-color: white"></th>
					<th align=center style="weight: 100%; background-color: white"></th>
					<th align=center style="weight: 100%; background-color: white"></th>
					<th align=center style="background-color: white; width:10%">
					<input id="busyButton" style="width: 100%;" class="btn btn-primary btn-sm" type="submit" name="Modificar" value="Modificar estado" onclick="pickModifyButton()" disabled  >  
					<!-- <input id="freeButton" style="width: 49%;" class="btn btn-primary btn-sm" type="submit" name="Eliminar" value="Libre" onclick="pickModifyButton2()"  > --></th> 
			
				</tr>
		</table>
		</form:form> 
		
		</div>
	<hr />	
    <ul id="ulEmployees" style="display:none"></ul> 

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
			document.getElementById('number').value = tags_td.item(1).innerHTML;
			document.getElementById('associatedMember').value = tags_td.item(2).innerHTML;
			document.getElementById('associatedBlock').value = tags_td.item(3).innerHTML;
			document.getElementById('busyState').value = tags_td.item(4).innerHTML;
 			document.getElementById('manualState').value = tags_td.item(5).innerHTML;
 			document.getElementById('manualState').selected = tags_td.item(5).innerHTML;
			document.getElementById('busyButton').disabled=false;
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
				alert("Debe seleccionar una banca para modificar su estado manualmente");
				return false;
			}else{if( document.getElementById('associatedMember').value == ""  
					|| document.getElementById('associatedBlock').value == ""){
						alert("Debe haber un diputado asociado y un bloque asociado a la banca para modificar el estado de la misma manualmente");
						return false;
					}else{
							if(document.getElementById('manualState').value == ""){
								alert("Debe seleccionar un estado manual para continuar");
								return false; 
							}else{
									if(document.getElementById('busyState').value == "Presente"){
										document.getElementById('busyState').value ="true";
									}else{ 
										document.getElementById('busyState').value ="false";
									}
									document.getElementById('form1').action = "modifyBench";
								}			
						 }
				 }	
		}
	</script>
	<script>		
    function getBenchsState(){    	
    
        var listitem = $('#ulEmployees');              
            $.ajax({
                Type: 'GET',
                url: 'https://usher.sytes.net/usher-api/estado_banca?token=48370255gBrgdlpl050588',                         
                success: function (data) {
	                    	listitem.empty();                       
	                        $.each(data, function (index, val) {
	                        	var fullname = val;
	                            listitem.append('<li id='+index+' value='+fullname+'>' + fullname + '</li>');                           
	                        });
	                        draw(); 
                   		 }
            });
    };
	</script> 
</html>
