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
<!-- <link rel="shortcut icon" href="images/BauerMecanicaLogo2.png" /> -->

<script src="js/jquery-1.12.js"></script>
 
 <script src="js/jPushMenu.js"></script> 
<script src="js/side-chats.js"></script>
  <script type="application/javascript">
    function draw() {
    	if(document.getElementById("estado").value !=null){
    		var string = $( "#estado" ).text(); 
    		//alert(string);   
    		var vec=['0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'];
    		for(i=0; i<18; i++){
    			vec[i]= string.charAt(i);  
    		}
    	
    	}else{ 
    	var vec=[0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0];
    	}; 
      var canvas = document.getElementById("canvas");
      if (canvas.getContext) {
        var ctx = canvas.getContext("2d");
		
    //los tres de la izquierda en diagonal    
        var j=0;
    for(i=0; i<3; i++){
    	j+=30;
    	ctx.beginPath();
        var centerX = (canvas.width / 2)+j;
        var centerY = (canvas.height / 2)+j;
        var radius = 15;        
        ctx.arc(centerX, centerY, radius, 0, 2 * Math.PI, false);
        if(vec[i] == 1){
       		ctx.fillStyle = 'green';
        }else{
        	ctx.fillStyle = 'red';
        }
        ctx.fill();
        ctx.lineWidth = 1;
    }
    
    //los 3 del medio en vertical
    j=0;
    for(i=3;i<6;i++){
    	j+=40;
    	ctx.beginPath();
        var centerX = (canvas.width / 2)+125;
        var centerY = (canvas.height / 2)-40+j;
        var radius = 15;        
        ctx.arc(centerX, centerY, radius, 0, 2 * Math.PI, false);
        if(vec[i] == 1){
       		ctx.fillStyle = 'green';
        }else{
        	ctx.fillStyle = 'red';
        }
        ctx.fill();
        ctx.lineWidth = 1;    
    }
    
    // los 2 siguientes de la izquierda en el medio
    j=0;
    for(i=6;i<8;i++){
    	j+=30;
    	ctx.beginPath();
        var centerX = (canvas.width / 2)+30 +j;
        var centerY = (canvas.height / 2)-15 +j;
        var radius = 15;        
        ctx.arc(centerX, centerY, radius, 0, 2 * Math.PI, false);
        if(vec[i] == 1){
       		ctx.fillStyle = 'green';
        }else{
        	ctx.fillStyle = 'red';
        }
        ctx.fill();
        ctx.lineWidth = 1;    
    }
    
    //el de arriba a la izquierda de los 3 del medio verticales 
    j=0;
    for(i=8;i<9;i++){
    	j+=30;
    	ctx.beginPath();
        var centerX = (canvas.width / 2)+92;
        var centerY = (canvas.height / 2)+5;
        var radius = 15;        
        ctx.arc(centerX, centerY, radius, 0, 2 * Math.PI, false);
        if(vec[i] == 1){
       		ctx.fillStyle = 'green';
        }else{
        	ctx.fillStyle = 'red';
        }
        ctx.fill();
        ctx.lineWidth = 1;    
    } 
    
    j=0;
    for(i=9;i<12;i++){
    	j+=40;
    	ctx.beginPath();
        var centerX = (canvas.width / 2)+180;
        var centerY = (canvas.height / 2)-40+j; 
        var radius = 15;        
        ctx.arc(centerX, centerY, radius, 0, 2 * Math.PI, false);
        if(vec[i] == 1){
       		ctx.fillStyle = 'green';
        }else{
        	ctx.fillStyle = 'red';
        }
        ctx.fill();
        ctx.lineWidth = 1;    
    } 
    
    // segunda columna del medio a la derecha
    j=0;
    for(i=12;i<15;i++){
    	j+=40;
    	ctx.beginPath();
        var centerX = (canvas.width / 2)+215; 
        var centerY = (canvas.height / 2)+j-32;  
        var radius = 15;        
        ctx.arc(centerX, centerY, radius, 0, 2 * Math.PI, false);
        if(vec[i] == 1){
       		ctx.fillStyle = 'green';
        }else{
        	ctx.fillStyle = 'red';
        }
        ctx.fill();
        ctx.lineWidth = 1;    
    }
    
    // 2 ante ultimos de la derecha
    
    j=0;
    for(i=15;i<17;i++){
    	j+=40;
    	ctx.beginPath();
        var centerX = (canvas.width / 2)+250; 
        var centerY = (canvas.height / 2)+j-20 ;  
        var radius = 15;        
        ctx.arc(centerX, centerY, radius, 0, 2 * Math.PI, false);
        if(vec[i] == 1){
       		ctx.fillStyle = 'green';
        }else{
        	ctx.fillStyle = 'red';
        }
        ctx.fill();
        ctx.lineWidth = 1;    
    }
    
    //ultimo de la derecha arriba
    j=0;
    for(i=17;i<18;i++){
    	j+=40;
    	ctx.beginPath();
        var centerX = (canvas.width / 2)+280; 
        var centerY = (canvas.height / 2)+j;  
        var radius = 15;        
        ctx.arc(centerX, centerY, radius, 0, 2 * Math.PI, false);
        if(vec[i] == 1){
       		ctx.fillStyle = 'green';
        }else{
        	ctx.fillStyle = 'red';
        }
        ctx.fill();
        ctx.lineWidth = 1;    
    }
    
/*     j=0;
    for(i=12;i<15;i++){
    	j+=30;
    	ctx.beginPath();
        var centerX = (canvas.width / 2)-j; 
        var centerY = (canvas.height / 2)-j;  
        var radius = 15;        
        ctx.arc(centerX, centerY, radius, 0, 2 * Math.PI, false);
        if(vec[i] == 1){
       		ctx.fillStyle = 'green';
        }else{
        	ctx.fillStyle = 'red';
        }
        ctx.fill();
        ctx.lineWidth = 1;    
    } */
    
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
</head>
 <body onload="setInterval('getBenchsState()',3000);" class="light_theme left_nav_fixed atm-spmenu-push" style=""> 

<!--  <body class="light_theme left_nav_fixed atm-spmenu-push" style="">  
 --> <div class="wrapper">
  <!--\\\\\\\ wrapper Start \\\\\\-->
  <div class="header_bar">
  
    <!--\\\\\\\ header Start \\\\\\-->
    <div class="brand">
      <!--\\\\\\\ brand Start \\\\\\-->
      <div class="logo" style="display:block">Admin <span class="theme_color">USHER</span></div></div>
    
    </div>
    <!--\\\\\\\ brand end \\\\\\-->
    <div class="header_top_bar" style="background-image: url(images/redNeuronal7.jpg)">
      <!--\\\\\\\ header top bar start \\\\\\-->
    
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
    <div class="contentpanel">
<!--     <div class="contentpanel" style="background-image: url('images/MECANICABAUER.jpg');min-height: 600px;"> -->
         <!--\\\\\\\ contentpanel start\\\\\\-->
      
      <div class="pull-left breadcrumb_admin clear_both">
        <div class="pull-left page_title theme_color">
          <h1>PANEL QUORUM</h1>
          </div>
        <div class="pull-right">
          <ol class="breadcrumb">
            <li><a href="#">Principal</a></li>
            <li><a href="#">QUORUM</a></li>
            
          </ol>
        </div>
      </div>
      <div class="container clear_both padding_fix">
      <div class="block-web">
            <canvas id="canvas" width=620px height=230px></canvas>  
      </div>
      
      </div>
</div>

<div class="contentpanel">
    <input id="btn" value="Get All Employees" type="button" />
    <input id="btnClear" type="button" value="Clear" />
    <ul id="ulEmployees"></ul>
</div>
</div>

	</body>
</html>