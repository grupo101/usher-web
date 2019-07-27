<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html>

	<head>
<!-- 	<link rel="shortcut icon" href="images/BauerMecanicaLogo1.png" />
 -->	 	<style type = "text/css">
 			<%@ include file="/css/MiEstilo.css" %>
 		</style>
 	 
		<title>Failure</title>
	</head>	
	<body>
		<p>El precio no puede ser menor o igual a cero</p>
		
		<form:form method="post" commandName="failure" action="index.jsp">			
			<input type="submit" value="volver"/>		
		</form:form>
	</body>

</html>
