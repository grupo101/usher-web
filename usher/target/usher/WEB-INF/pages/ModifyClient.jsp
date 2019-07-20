<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<html>

<head>
<link rel="shortcut icon" href="images/BauerMecanicaLogo1.png" />
<style type="text/css">
<%@
include file="/css/MiEstilo.css" 
%>
</style>

<title>Bauer Mecánica Integral</title>
</head>
<body>
	<p>Modificar Cliente</p>
	<form:form method="post" commandName="clientForm" action="addClient">

		<table>
			<tr>
				<th align=left>Tipo Factura:</th>
				<th><form:input path="invoiceType" /></th>
			</tr>
			<tr>
				<th align=left>Cuit:</th>
				<th><form:input path="cuit" /></th>
			</tr>
			<tr>
				<th align=left>Nombre:</th>
				<th><form:input path="name" /></th>
			</tr>
			<tr>
				<th align=left>Direccion:</th>
				<th><form:input path="adress" /></th>
			</tr>
			<tr>
				<th align=left>Localidad:</th>
				<th><form:input path="locality" /></th>
			</tr>
			<tr>
				<th align=left>Telefono:</th>
				<th><form:input path="telNumber" /></th>
			</tr>
			<tr>
				<th align=left>Contacto:</th>
				<th><form:input path="contact" /></th>
			</tr>
			<tr>
			</tr>
			<tr>
				<th> <form action="client">			
			<input type="submit" value="volver"/>		
		</form></th>
				<th align=right><input type="submit" value="GUARDAR" /></th>
			</tr>
		</table>

	</form:form>
</body>
</html>