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
<!-- 		<link rel="shortcut icon" href="images/BauerMecanicaLogo2.png" /> -->
<link rel="stylesheet" type="text/css" href="css/jquery.dataTables.css" />

<link href="css/select2.min.css" rel="stylesheet" />
<script src="js/jquery-1.12.js"></script>
<script src="js/select2.min.js"></script>

<!-- <script src="js/jquery-2.1.0.js"></script> -->

<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<script src="plugins/data-tables/DT_bootstrap.js"></script>
<script src="js/jquery.dataTable1.js"></script>
<script>
	$(document).ready(function() {
		$('#dynamic-table').DataTable({
			"order" : [ [ 0, "desc" ] ]
		});
		$(".js-example-basic-single").select2();
		$('body').on('DOMNodeInserted', 'select', function() {
			$(this).select2();
		});
	});
</script>

</head>
<body class="light_theme left_nav_fixed atm-spmenu-push" style="">
	<div class="wrapper">
		<!--\\\\\\\ wrapper Start \\\\\\-->
		<div class="header_bar">

			<!--\\\\\\\ header Start \\\\\\-->
			<div class="brand">
				<!--\\\\\\\ brand Start \\\\\\-->
				<div class="logo" style="display: block">
					Admin <span class="theme_color">USHER</span>
				</div>
			</div>

		</div>
		<!--\\\\\\\ brand end \\\\\\-->
		<div class="header_top_bar"
			style="background-image: url(images/usherBanner.jpg)">
			<!--\\\\\\\ header top bar start \\\\\\-->
			<!--  <a href="javascript:void(0);" class="menutoggle"> <i class="fa fa-bars"></i> </a> -->

		</div>
		<!--\\\\\\\ header top bar end \\\\\\-->
	</div>
	<!--\\\\\\\ header end \\\\\\-->
	<div class="inner">
		<!--\\\\\\\ inner start \\\\\\-->
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
						<li><a href="user2">USUARIOS</a>
						<li><a href="member2">DIPUTADOS</a></li>
						<li><a href="bench2">BANCAS</a></li>
						<li><a href="block2">BLOQUES</a></li>
						<li><a href="quorumPanel">QUORUM</a></li>
						<li><a href="benchAssociation1">ASOCIAR DIPUTADO</a></li>
						<li><a href="benchAssociation2">DESASOCIAR DIPUTADO</a></li>
						<li><a href="blockAssociation1">ASOCIAR BLOQUE POLITICO</a></li>
						<li><a href="blockAssociation2">DESASOCIAR BLOQUE POLITICO</a></li>
					</ul>
				</div>
				<div class="slimScrollBar"
					style="background: rgb(161, 178, 189); width: 5px; position: absolute; top: 0px; border-radius: 7px; z-index: 99; right: 1px; height: 30px; display: none; opacity: 0.4;"></div>
				<div class="slimScrollRail"
					style="width: 5px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
			</div>
		</div>
		<!--\\\\\\\left_nav end \\\\\\-->
		<div class="contentpanel" style="background-color: #F6F6F6">

			<!--\\\\\\\ contentpanel start\\\\\\-->
			<div class="pull-left breadcrumb_admin clear_both">
				<div class="pull-left page_title theme_color">
					<h1>ASOCIAR BLOQUE POLITICO A BANCA</h1>
				</div>
				<div class="pull-right">
					<ol class="breadcrumb">
						<li><a href="#">Principal</a></li>
						<li><a href="#">ASOCIACIONES</a></li>

					</ol>
				</div>
			</div>
			<div class="container clear_both padding_fix">

				<!--\\\\\\\ container  start \\\\\\-->

				<div id="main-content">

					<div class="page-content">
						<p>
							<b>Seleccionar banca</b>
						</p>
						<div class="row">
							<div class="col-md-12">
								<form:form method="post" commandName="associationForm"
									action="addBlockAssociation" onsubmit="return validationFields()">

									<div class="block-web">


										<div class="porlets-content">
											<div class="table-responsive">
												<div id="dynamic-table_wrapper"
													class="dataTables_wrapper form-inline" role="grid">


													<table
														class="display table table-bordered table-striped dataTable"
														id="dynamic-table" aria-describedby="dynamic-table_info">
														<thead>
															<tr>
																<th class="sorting" role="columnheader" tabindex="0"
																	aria-controls="dynamic-table" rowspan="1" colspan="1"
																	aria-label="Rendering engine: activate to sort column ascending"
																	style="width: 220px;">Numero de banca</th>
																<th class="sorting" role="columnheader" tabindex="0"
																	aria-controls="dynamic-table" rowspan="1" colspan="1"
																	aria-label="Rendering engine: activate to sort column ascending"
																	style="width: 220px;">Nombre de diputado</th>
<!-- 																<th class="sorting" role="columnheader" tabindex="0"
																	aria-controls="dynamic-table" rowspan="1" colspan="1"
																	aria-label="Rendering engine: activate to sort column ascending"
																	style="width: 220px;">Apellido</th> -->

															</tr>
														</thead>
														<tbody>
															<c:forEach var="bench" items="${benchs}"> 
																<tr>
																	<td>${bench.number}</td>
																	<td>${bench.associatedMember}</td>
<%-- 																	<td>${member.surName}</td>
																	<td>${member.associatedBlock}</td>
																	<td>${member.associatedBench}</td> --%>
																</tr>
															</c:forEach>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
									<p>
										<b>Banca Seleccionada</b>
									</p>

									<TABLE id="dataTableMember" style="width: 80%">
										<TR id="memberLine">
											<TD><form:input path="bench.number" id="memberCell0"
													name="memberCell0" type="text" value="Numero..."
													readonly="readonly" style="width: 80%"/></TD>
											<TD><input id="memberCell1" name="memberCell1"
												type="text" value="Nombre..." readonly="readonly"
												style="width: 80%" /></TD>
<!-- 											<TD><input id="memberCell2" name="memberCell2"
												type="text" value="Apellido..." readonly="readonly"
												style="width: 80%" /></TD> -->
										</TR>
									</TABLE>

									<br>
									<hr />
									<div class="clase">
										<p>
											<b>Seleccionar bloque político</b>
										</p>
										<TABLE id="dataTable1" style="width: 50%">

											<TR id="lineap1">
												<TD><select id="idBlock" name="1"
													class="js-example-basic-single" style="width: 100%">
														<option>Bloque...</option> 
												</select></TD>
												<TD><form:input path="block.id" id="blockId" 
												style="display: none" /></TD>
											</TR>
										</TABLE>
									</div>
									<hr />
									<input class="btn btn-primary btn-sm" type="submit"
										value="ASIGNAR">
								</form:form>
							</div>
						</div>
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
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">

	function validationFields() {

		var checkBlock = 0;
		if ($("#idBlock").val() == "Bloque...") {
			checkBenchAndBlock += 1;
		}else{			
			$("#blockId").val($("#idBlock").val());
		}
		if (checkBlock == 1
				|| document.getElementById("memberCell1").value == "Nombre...") {
			alert("Debe seleccionar un diputado, y un bloque para realizar la asignacion");

			return false;
		} else {
			return true;
		}
	}
</script>

<script type="text/javascript">
	function cargarPrimerCombo1(id) {
		var vectorFinal;
		var table = document.getElementById('t11');
		var tags_tr = table.getElementsByTagName('tr');
		var tags_td;
		var fila;
		var vec = [];
		var politicalBlock = new Array();
		var data
		for (i = 0; i < tags_tr.length; i++) {
			fila = tags_tr[i];
			tags_td = fila.getElementsByTagName('td');
			politicalBlock[tags_td.item(0).innerHTML] = tags_td.item(1).innerHTML;
		//	vec.push(tags_td.item(1).innerHTML);
		}
		//vec.sort();
		addOptions1(politicalBlock, id);
	}

	// Rutina para agregar opciones a un <select>
	function addOptions1(array, id) {

		var miSelect = document.getElementById(id);
		while (miSelect.options.length > 1) {
			miSelect.remove(1);
		}

		var miOption;

				$.each(array, function(key, value) {
					var newOption = new Option(value, key, false, false);
					$("#" + id).append(newOption);				});
		}


	cargarPrimerCombo1("idBlock");
</script>
<!-- SERVICIOS FIN -->
<script type="text/javascript">
	$(document).ready(function() {
		$(".js-example-basic-single").select2(); 
		$('body').on('DOMNodeInserted', 'select', function() {
			$(this).select2();
		});
	});
</script>

<script type="text/javascript">
	function getCellsValue(cell) {

		var tags_td = cell.getElementsByTagName('td');
		document.getElementById('memberCell0').value = tags_td.item(0).innerHTML;
		document.getElementById('memberCell1').value = tags_td.item(1).innerHTML; 
		/* document.getElementById('memberCell2').value = tags_td.item(2).innerHTML; */
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