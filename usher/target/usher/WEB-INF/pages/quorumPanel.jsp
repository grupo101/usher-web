<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Usher</title>
<meta name="ROBOTS" content="NOINDEX, NOFOLLOW">
<!-- <link href="css/font-awesome.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"> -->
<link href="css/animate.css" rel="stylesheet" type="text/css">
<link href="css/admin.css" rel="stylesheet" type="text/css">
<link href="plugins/data-tables/DT_bootstrap.css" rel="stylesheet">
<!-- <link rel="shortcut icon" href="images/BauerMecanicaLogo2.png" /> -->

<script src="js/d3.v3.min.js"></script><!-- <script src="https://d3js.org/d3.v3.min.js"></script> -->
<!-- <script src="https://d3js.org/d3.v5.min.js"></script> -->
<script src="js/d3.hemicycle.js"></script>
<script src="js/d3.tip.js"></script>
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity ="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootswatch/3.2.0/cerulean/bootstrap.min.css">

<script src="js/jquery-1.12.js"></script>
 
 <script src="js/jPushMenu.js"></script> 
<script src="js/side-chats.js"></script>

    <!-- <script src="https://code.jquery.com/jquery-3.4.1.js"></script> -->
    <style>
      #chart svg { position: inherit; left: 0; }
      @media screen and (max-width: 680px) {
        #chart svg { position: relative; left: -8%; }
      }
      @media screen and (min-width: 990px) {
        /* .column { min-height: 330px;} */
        .block-web { height: 310px;}
      }
      /*http://www.d3noob.org/2013/01/adding-drop-shadow-to-allow-text-to.html*/
      /* #chart { width:400px;margin-left:10px;margin-top:35px; } */
      .container { width: 100%; }
      .stream { max-width: 100%; max-height: 100%; padding: 2em; }
      .column { text-align: center; }
      .contentpanel { background-color: #F6F6F6 }
      text.shadow {
          stroke: gray;
          stroke-width: 1px;
          stroke-opacity: 0.2;
          opacity: 0.9;
      }
      g a.icon.state0>text,
      g a.icon.state\_>text {
        /*fill: indianred;
          fill: gray;*/
        fill: #fb2121;
        fill-opacity: 1; /*0.5;*/
      }
      g a.icon.state1>text {
        fill: yellowgreen;
        fill: lawngreen;
      }
      /* D3 tips */  
      .d3-tip {
        line-height: 1;
        font-weight: bold;
        padding: 12px;
        background: rgba(0, 0, 0, 0.8);
        color: #fff;
        border-radius: 2px;
        display: inline-flex;
      }
      img.profilephoto {
        position: relative;
        right: -6px;
        width: 40px;
        height: 40px;
        border-radius: 20px;
      }
      /* Creates a small triangle extender for the tooltip */
      /*.d3-tip:after {
        box-sizing: border-box;
        display: inline;
        font-size: 10px;
        width: 100%;
        line-height: 1;
        color: rgba(0, 0, 0, 0.8);
        content: "\25BC";
        position: absolute;
        text-align: center;
      }*/
      /* Style northward tooltips differently */
      .d3-tip.n:after {
        margin: -1px 0 0 0;
        top: 100%;
        left: 0;
      }
      .stronger {
        color: yellow;
      }
      #legend {
        display:none;
      }
    </style>


  <script type="application/javascript">
    var hemicycle = null;
    var hc = null;
    var svg= null;
    var w=400, h=205;
    function drawHemicycle() {
      d3.csv("csv/benchmembers.csv",function(error,data) {

        /*var json = (function () {
            var json = null;
            $.ajax({
                'async': false,
                'global': false,
                'url': "./hemicycle.json",
                'dataType': "json",
                'success': function (data) {
                    json = data;
                }
            });
            return json;
        })();*/
        // Configuración para hemiciclo de 91 bancas
        // hemicycle = [{
        //   "n": [12,20,28,31], // hemiciclo 91 diputados HCDP
        //   "gap": 2.0, //1.20,
        //   "widthIcon": 0.19, //0.39,
        //   "width": 400,
        //   "people": data
        // }];
        // Configuración para 9 bancas en 3x3
        hemicycle = [{
          "n": [0], // hemiciclo vacío
          "gap": 0.8, //1.20,
          "widthIcon": 0.2, //0.39,
          "width": 300,
          "people": data
        }];
      /* Initialize tooltip */	
        tip = d3.tip()
        .attr("class", "d3-tip")
        .html(function(d) {
          foragaints = "Neutral (ausente)";
          if (parseInt(d["option_code"]) == 1) foragaints = "A favor";
          if (parseInt(d["option_code"]) == -1) foragaints = "En contra";
          
          return "<div><span class=\'stronger\'>(" + d["id"] + ") " + d["name"] + "</span><br>" + d["party"] + "</div>" +
                "<div><img class=\"profilephoto\" src=\"" + d["photo"] +"\" alt=\"Foto de "+ d["name"] + "\" "+
                "onerror=\"this.onerror=null;this.src='http://www.connexis.org.nz/wp-content/uploads/2018/11/Person-icon.png';\"></div>";
        }); 
        w=400,h=205,w=300,h=200,
            svg=d3.select("#chart")
                .append("svg")
                .attr("width",w)
                .attr("height",h);
        hc = d3.hemicycle()
                    .n(function(d) {return d.n;})
                    .gap(function(d) {return d.gap;})
                    .widthIcon(function(d) {return d.widthIcon;})
                    .width(function(d) {return d.width;})
                    .people(function(d) {return d.people;});  
        
        var item = svg.selectAll(".hc")
          .data(hemicycle);
        item.enter()
            .append("svg:g")
            //.call(hc,1); //agrega 1 banca centrada para el presidente
            .call(hc,3,3); //agrega 9 bancas centradas en 3 columnas x 3 filas
        //item.exit().remove();
            
      /* Invoke the tip in the context of your visualization */
        svg.call(tip);
      
      // Add tooltip div
        var div = d3.select("body").append("div")
        .attr("class", "tooltip")
        .style("opacity", 1e-6);
      });
    }
    function updateHemicycle(estadosStr) {
      var estados = estadosStr.split('');
      var item = svg.selectAll("g");
      var data = item.data()[0];
      var presentes=0;
      var ausentes=0;
      var total=0;
      for(i = 0 ;i < estados.length;i++){
        data.people[i].state = estados[i];
        if(estados[i]==1){
        	presentes++;
        }else{
        	ausentes++;
        }
      }
 
       
      $('#presentes').append(      	    
      	        $('#presentes').text("Presentes: " + presentes) 
      	    )
      	
      $('#ausentes').append(      	        
      	        $('#ausentes').text("Ausentes: " + ausentes)
      	    )
      	
      if(presentes>ausentes){
          $('#quorum').append(            	    
            	        
            	        $('#quorum').text("HAY QUORUM") 
            	    )
            	
      }else{
          $('#quorum').append(          	    
          	        
          	        $('#quorum').text("NO HAY QUORUM")  
      )
          	      }; 
      //total=  */
      item = item.call(hc);
    }
/*    function draw() {
    	if(document.getElementById("estado").value !=null){
    		var string = $( "#estado" ).text();
    		var countPresents;
    		//alert(string);   
    		var vec=['0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0'];
    		for(i=0; i<18; i++){
    			vec[i]= string.charAt(i);
    			if(vec[i] == 1){
    				countPresents++;
    			}
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
    
//     j=0;
    // for(i=12;i<15;i++){
    // 	j+=30;
    // 	ctx.beginPath();
    //     var centerX = (canvas.width / 2)-j; 
    //     var centerY = (canvas.height / 2)-j;  
    //     var radius = 15;        
    //     ctx.arc(centerX, centerY, radius, 0, 2 * Math.PI, false);
    //     if(vec[i] == 1){
    //    		ctx.fillStyle = 'green';
    //     }else{
    //     	ctx.fillStyle = 'red';
    //     }
    //     ctx.fill();
    //     ctx.lineWidth = 1;    
    // } 
    
      }

      }*/
    
  </script>
  <script>  
        function getBenchsState(){
        	
            var listitem = $('#ulEmployees');              
                $.ajax({
                    Type: 'POST', 
                    url: 'https://usher.sytes.net/usher-api/check_status?token=48370255gBrgdlpl050588&server=SVR1',  
                    success: function (data) {
                      if (typeof(data) == 'object') {
                        updateHemicycle(data["status"]);
                      }else{
                        console.log("Returned data format unexpected: "+typeof(data));
                      }
                          var val;//alert(JSON.stringify(data));
                          listitem.empty();
                          
                          $.each(data, function (index, val) {
                            var fullname = val;
                              listitem.append('<li id='+index+' value='+fullname+'>' + fullname + '</li>');                           
                          });
                          // draw(); //en desuso
                    }
                });
        };        
    </script>
</head>
<body onload="setInterval('getBenchsState()',3000);drawHemicycle();" class="light_theme left_nav_fixed atm-spmenu-push">

    <!--  <body class="light_theme left_nav_fixed atm-spmenu-push" style="">  
 -->
    <div class="wrapper">
        <!--\\\\\\\ wrapper Start \\\\\\-->
        <div class="header_bar">

            <!--\\\\\\\ header Start \\\\\\-->
            <div class="brand">
                <!--\\\\\\\ brand Start \\\\\\-->
                <div class="logo" style="display:block">Admin <span class="theme_color">USHER</span></div>
            </div>

        </div>
        <!--\\\\\\\ brand end \\\\\\-->
        <div class="header_top_bar" style="background-image: url(images/usherBanner.jpg)">
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
            <div class="slimScrollDiv" style="position: relative; width: auto; height: 70px;">
                <div class="left_nav_slidebar">
                    <ul>
                        <li><a href="user2">USUARIOS</a>
                            <li><a href="member2">DIPUTADOS</a></li>
                            <li><a href="bench2">BANCAS</a></li>
                            <li><a href="block2">BLOQUES</a></li>
                            <li><a href="quorumPanel">QUORUM</a></li>
                            <li><a href="statsPanel">ESTADÍSTICAS</a></li>
                            <li><a href="benchAssociation1">ASOCIAR DIPUTADO</a></li>
                            <li><a href="benchAssociation2">DESASOCIAR DIPUTADO</a></li>
                            <li><a href="blockAssociation1">ASOCIAR BLOQUE POLITICO</a></li>
                            <li><a href="blockAssociation2">DESASOCIAR BLOQUE POLITICO</a></li>
                    </ul>
                </div>
                <div class="slimScrollBar" style="background: rgb(161, 178, 189); width: 5px; position: absolute; top: 0px; border-radius: 7px; z-index: 99; right: 1px; height: 30px; display: none; opacity: 0.4;"></div>
                <div class="slimScrollRail" style="width: 5px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
            </div>
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
                <div class="page-content">
                    <div class="row">
                        <div class="col-md-6 col-xs-12 column ui-sortable">
                          <div class="block-web">
                            <div id="chart"></div>
                            <div id="presentes"> Presentes: </div>
                            <div id="ausentes"> Ausentes: </div>
                            <div id="quorum"> </div>
                          </div>
                        </div>
                        <div class="col-md-6 col-xs-12 column ui-sortable">
                            <div class="block-web">
                              <img class="stream align-middle" src="http://feed.neuralfix.com.ar/" alt="Video en Vivo"
                              onerror="this.onerror=null;this.src='https://neuralfix.com.ar/logos/logo-neuralfix5.png';">
                            </div>
                        </div>
                    </div>
                    <!-- </div>
      <div class="container clear_both padding_fix">
        <div class="block-web" style="display: inline-block;">
            <div class ="left-panel" style="width:50%; float:left;" >

                <div id="chart"></div>
                <div id="presentes"> Presentes:   </div> 
                <div id="ausentes"> Ausentes:  </div>
                <div id="quorum">  </div>  
            </div>
            <div class ="right-panel" style="width:50%; float:right;">
              <div id="videoScene" style="width:600px; height: 300px" > Video:
                <img class="stream" src="http://feed.neuralfix.com.ar/">
              </div>
            </div>
        </div> -->
                    <!-- <div class="container clear_both padding_fix">
      <div class="block-web">
            <canvas id="canvas" style="display:none;"  width=620px height=230px></canvas>
            <div id="chart"></div>
            <div id="presentes"> Presentes:   </div> 

            <div id="ausentes"> Ausentes:  </div>
            <div id="quorum">  </div>  
      </div> -->
                    <!-- <ul id="ulEmployees" style="display:none"> </ul> -->
                </div>
            </div>
        </div>
    </div>

</body>
</html>