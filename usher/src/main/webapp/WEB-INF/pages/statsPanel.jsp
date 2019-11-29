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
    a.canvasjs-chart-credit {
        display: none!important;
    }
      #chart svg { position: inherit; left: 0; }
      @media screen and (max-width: 680px) {
        #chart svg { position: relative; left: -8%; }
      }
      @media screen and (max-width: 990px) {
        .member-row { width: 100%; }
      }
      @media screen and (min-width: 990px) {
        /* .column { min-height: 330px;} */
        .member-row { width: 49%; }
      }
      /*http://www.d3noob.org/2013/01/adding-drop-shadow-to-allow-text-to.html*/
      /* #chart { width:400px;margin-left:10px;margin-top:35px; } */
      .container { width: 100%; }
      .column { text-align: center; }
      .column h2 { margin-top: 0; }
      .contentpanel { background-color: #F6F6F6; padding-bottom: 0; }
      .statpanel { 
          background-color: #FFF;
          margin-top: 1.5em;
      }
      #chartFilters {
        height:55px;
        width: 100%;
        background: #fff;
        /*padding-top: 10px;*/
      }
      text.shadow {
          stroke: gray;
          stroke-width: 1px;
          stroke-opacity: 0.2;
          opacity: 0.9;
      }
      g a.icon.state0>text,
      g a.icon.state\_>text {
        fill: #fb2121;
        fill-opacity: 1; /*0.5;*/
      }
      g a.icon.state1>text {
        fill: yellowgreen;
        fill: lawngreen;
      }
      img.profilephoto {
        position: relative;
        right: -6px;
        width: 40px;
        height: 40px;
        border-radius: 20px;
      }
      .stronger {
        color: yellow;
      }
      #legend {
        display:none;
      }
    #svgtrial {
        z-index: 9999;
        left: 16px;
        top: 362px;
        height: 9px;
        width: 60px;
        position: absolute;
    }
    #svgtrial rect {
        fill:rgb(255,255,255);
        stroke-width:0;
        height: 9px;
        width: 60;
    }
    .block-member {
        height: 300px;
        width: 100%;
        overflow-y: scroll;
        background: linear-gradient(white, rgba(255,255,255,0.3));
    }
    .member-row {
        float: left;
        display: inline-flex;
        text-align: left;
        /* width: 100%; */
        border-radius: 6px;
        padding: 6px;
        stroke: gray;
        stroke-width: 1px;
        stroke-opacity: 0.2;
    }
    .member-row:hover {
        background: rgba(249, 255, 128, 0.397);
    }
    .member-surname, .member-name {
        font-size: 1.6em;
    }
    .member-block {
        text-transform: uppercase;
    }
    div.member-photo {
        width: max-content;
        margin-right: 10px;
    }
    div.member-photo img{
        /*position: relative;
        left: 0px;*/
        width: 60px;
        height: 60px;
        border-radius: 30px;
    }
    .pie-container, .div-pie { 
        height: 60px; 
        width: 60px;
    }
    .pie-container {
        right: 20px;
        position: absolute;
    }
</style>


  <script type="application/javascript">
    var sessData = {};
    var dataPoints = [];
    var _options =
        {
            animationEnabled: true,
            zoomEnabled: true,
            zoomType: "x",
            axisY: {
                valueFormatString: "##0",
                interval: 2,
		        title: "Diputados presentes"
            },
            axisX: {
                valueFormatString: "HH:mm",
                intervalType: 'minute',
                interval: 45,
		        title: "Horario"
            },
            toolTip: {
                shared: true
            },
            legend: {
                cursor: "pointer",
                verticalAlign: "top",
                fontSize: 14,
                fontColor: "dimGrey",
                itemclick: toggleDataSeries
            },
            data: []
        }
    var _dataObj = {
            type: 'stackedArea',
            showInLegend: true,
            name: "nombreserie",
            xValueFormatString:"DD/MM/YYYY HH:mm",
            xValueType: "dateTime",
            yValueFormatString:"##0",
            legendText: "Diputados por Bloque",
            dataPoints: []
        };
    
    var _optionsPie = {
            animationEnabled: true,
            width: 60,
            data: []
        };
    var _pieObj = {
                type: "pie",
                startAngle: 270,
			    yValueFormatString:"##0%",
                dataPoints: [
                    {y: 10, color: 'green'},
                    {y: 90, color: 'red'},
                ]
            };
    
    function copyObject(src) {
        // esta funcion no copia el contenido de los array, sino la referencia
        return Object.assign({}, src);
    }
    function addMinutesToDate(date, minutes) {
        return new Date(date.getTime() + (minutes*60000));
    }
    const SEP_X = 15;
    function getAxisX(title,t1,t2) {
        var dif = t2.getTime() - t1.getTime();
        var sec = Math.abs(dif) / 1000;
        var secfrac = Math.round(sec / SEP_X);
        var axisX = {
            valueFormatString: "HH:mm",
            intervalType: 'second',
            interval: secfrac, //30
            title: "Horario"
        }
        // fraccion menor a 1 minuto
        if (secfrac < 60) {
            axisX.valueFormatString = "HH:mm:ss";
            axisX.intervalType = "second";
            axisX.interval = secfrac;
            console.log("Eje X: ("+t1+","+t2+") "+sec+'" frac:'+secfrac);
        }else{
            var minfrac = Math.round(secfrac / 60);
            axisX.valueFormatString = "HH:mm";
            axisX.intervalType = "minute";
            axisX.interval = minfrac;
            console.log("Eje X: ("+t1+","+t2+") "+sec+'" frac:'+secfrac+'" frac:'+minfrac+"min");
        }
        console.log(axisX);
        return axisX;
    }
    function toggleDataSeries(e) {
        if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
            e.dataSeries.visible = false;
            // filtrar miembros
            $(".block"+e.dataSeries.id).hide();
            
        }
        else {
            e.dataSeries.visible = true;
            // filtrar miembros
            $(".block"+e.dataSeries.id).show();
        }
        e.chart.render();
    }
    function drawBlockChart(session,block,period){
        var chart = $("#chartContainer");
        var sdata = (block == "" && period=="" ? session : copyObject(session));
        if (!$.isEmptyObject(sdata)) {
            if (block != ""){
                sdata.data = [];
                // solo agregar dato de bloque indicado
                $.each(session.data, function(index,value){
                    if (index == block) { //value.id
                        sdata.data.push(copyObject(value));
                        
                        // setear color original
                        ///sdata.data[0].color = chart._selectedColorSet[index];
                    }
                });
            }
            // cambiar escala en eje X
            var minDate = (sdata.startDate < sdata.data[0].dataPoints[0].x ? sdata.startDate : sdata.data[0].dataPoints[0].x);
            var maxDate = (sdata.endDate > sdata.data[0].dataPoints[sdata.data[0].dataPoints.length - 1].x ? 
                            sdata.endDate : sdata.data[0].dataPoints[sdata.data[0].dataPoints.length - 1].x);
            var tit = sdata.axisX.title;
            sdata.axisX = {};
            sdata.axisX = getAxisX(tit, minDate, maxDate);
    /*        if (period == ""){
                sdata.axisX = getAxisX(sdata.axisX.title, sdata.axisX.startDate, sdata.axisX.endDate)
            }else{
                //sdata.axisX = getAxisX(sdata.axisX.title, )
            }*/
        }
        // dibujar chart
        chart.CanvasJSChart(sdata);
    }
    function getSessionsList(){
        $.ajax({
            Type: 'POST', 
            url: 'https://usher.sytes.net/usher-api/sessions?token=48370255gBrgdlpl050588',
            success: function (data) {
                listSess = $("#ddsess :nth-child(1)");
                if (typeof(data) == 'object') {
                    $.each(data, function(index, value) {
                        if (index == "succes"){
                            console.log("Sesiones devueltas:"); 
                        } else {
                            console.log(value);
                            var sess = value.session;
                            // crea objeto de sesion
                            sessData[sess] = copyObject(_options);
                            sessData[sess].id = value.session;
                            sessData[sess].name = value.comment;
                            sessData[sess].startDate = new Date(value.start);
                            sessData[sess].endDate = new Date(value.end);
                            sessData[sess].axisX.title = "Sesión " + value.comment;
                            sessData[sess].data = [];
                            sessData[sess].blocks = {};
                            sessData[sess].members = [];
                            
                            // cargar select de sesiones
                            listSess.after('<option value="'+value.session+'" '+
                                'attr-name="'+value.comment+'" '+
                                'attr-date="'+(new Date(value.start)).toString()+'" '+
                                '">'+(new Date(value.start)).toLocaleString()+' '+value.comment+'</option>');
                        }
                    });
                    console.log(sessData);
                }else{
                    console.log("Returned data format unexpected: "+typeof(data));
                }
            }
        });    
    }
    

    function setMemberData(sess,block, sesschange=true){
        var memberContainer = $("#memberContainer");
        if (sesschange || !sessData[sess].membersListed) {
            memberContainer.empty();
        } 
        if (sessData[sess].membersLoaded){
            if (!sessData[sess].membersListed || sesschange) {
                console.log("START MEMBER LISTING");
                $.each(sessData[sess].members, function(index,value){
                    memberContainer.append(
                        '<div class="member-row block' + value.blockid +' col-md-6 col-xs-12">'+
                            '<div class="member-photo"><img '+
                                'src="'+value.photo+'" '+
                                'alt="Foto de perfil de '+ value.surname+' '+ value.name + '" '+
                                'onerror="this.onerror=null;this.src=\'http://www.connexis.org.nz/wp-content/uploads/2018/11/Person-icon.png\';">' +
                            '</div>'+
                            '<div>'+
                                '<div><span class="member-name">'+ value.name + '</span> <span class="member-surname">'+ value.surname+'</span></div>'+
                                '<div><span class="member-block">'+ value.block +'</span></div>'+
                            '</div>'+
                            '<div class="pie-container">'+
                                '<div id="div-pie'+index +'" style="width: 60px; height: 60px;" class="div-pie"></div>'+
                            '</div>'+
                        '</div>'
                    );
                    console.log("..............\n\n");
                    console.log(value);
                    console.log("\n\n..............");
                    //var pie = $('<div id="div-pie'+index +'" style="width: 60px; height: 60px;" class="div-pie"></div>');
                    //$("#pie-container").append(pie);
                    var pie = memberContainer.filter('#div-pie'+index); //$('#div-pie'+index);
                    //pie = $('#div-pie');
                    pie.ready(function (){
                        console.log("READY PIE "+index);
                        $('#div-pie'+index).CanvasJSChart(sessData[sess].members[index]);
                    });
                    console.log(pie);
                    if(true){

                    }

                });
                sessData[sess].membersListed = true;
                console.log("END MEMBER LISTING");
            }else{
                console.log("START MEMBER FILTERING");
                if (block == ""){
                    $(".member-row").show();
                }else{
                    $(".member-row").hide();
                    $(".block"+block).show();
                }
                console.log("END MEMBER FILTERING:"+block);
            }

/*
{animationEnabled: true, data: Array(1), surname: "Di Palma", name: "Marcos ", photo: "https://blobwebbrazil.blob.core.windows.net/diputados/marcos-di-palma.png", …}
absences: 8
animationEnabled: true
block: "Movimiento Unido Tutores UNLAM"
blockid: 4
data: Array(1)
0:
dataPoints: Array(2)
0: {y: 26, color: "green"}
1: {y: 8, color: "red"}
length: 2
__proto__: Array(0)
startAngle: 270
type: "pie"
yValueFormatString: "##0.0"%""
__proto__: Object
length: 1
__proto__: Array(0)
name: "Marcos "
photo: "https://blobwebbrazil.blob.core.windows.net/diputados/marcos-di-palma.png"
presences: 26
surname: "Di Palma"
total: 34
*/
            // sessData[sess].membersLoaded = true;
        }
    }
    function setRealBlockNum(sess,blockNum,block){
        if (typeof sessData[sess].blocks[block] === "undefined") 
            sessData[sess].blocks[block] = blockNum;
        return sessData[sess].blocks[block]
    }
    function setChartData(sess, block, period, sesschange=true){
        var ddsess = $("#ddsess"), ddblock = $("#ddblock"); //, ddperiod = $("#ddperiod");
        var sdata = {};
        console.log("setChartData("+sess+","+block+","+period+")")
        // cargar select de bloques si cambió de sesion
        if (sesschange) ddblock.empty();
        drawBlockChart(sdata,"","");
        if(sess == "") {
            sdata = _dataObj;
            drawBlockChart(sdata,"","");
        }else {
            // cargar select de bloques - primer elemento
            if (sesschange)
                ddblock.append('<option value="" '+(block==''?'selected="selected"':'')+'>Todos los bloques</option>');
            if (sessData.hasOwnProperty(sess) && sessData[sess].data.length > 0){
                sdata = sessData[sess];
                
                // cargar select de bloques si cambió de sesion
                if (sesschange) {
                    $.each( sdata.data, function(index, value) {
                        console.log("Bloque (" + index+","+value+")");
                        ddblock.append('<option value="'+index+'" '+(block!="" && block==index?'selected=selected':'')+'>'+value.legendText+'</option>');
                    });
                }
                // cargar listado con datos de miembros 
                setMemberData(sess, block, sesschange);
                // Dibujar gráfico
                drawBlockChart(sdata,block,period);
            } else {
                sessData[sess].blocks = [];
                sessData[sess].members = [];
                sessData[sess].membersLoaded = false;
                sessData[sess].membersListed = false;
                // Obtener estadísticas de bloque
                var sessDate = sessData[sess].startDate;
                $.post('https://usher.sytes.net/usher-api/block_hist?token=48370255gBrgdlpl050588',
                    { username: "webadmin",
                      session: sess})
                .done(function(data) {
                    console.log(data);
                    if (data.succes == true){
                        /* DATOS DE ESTADISTICA POR BLOQUE OBTENIDOS */
                        console.log("Datos de bloques en sesión "+sess+" obtenidos de API");

                        var blockBreak = "", blockNum = -1;
                        $.each(data, function(index, value) {
                            if (index == "succes"){ 
                                 // evita iteracion
                            }else{
                                // NUEVO BLOQUE identificado //
                                if (value.block != blockBreak){
                                    blockBreak = value.block;
                                    blockNum ++;
                                    blockNum = setRealBlockNum(sess,blockNum, value.block);
                                    console.log("Nuevo bloque: "+ value.block);
                                    
                                    // crea objeto bloque
                                    sessData[sess].data.push( copyObject(_dataObj) );
                                    sessData[sess].data[blockNum].id = blockNum;
                                    sessData[sess].data[blockNum].name = value.block;
                                    sessData[sess].data[blockNum].legendText = value.block;
                                    sessData[sess].data[blockNum].total = value.total;
                                    sessData[sess].data[blockNum].dataPoints = [];
                                    // almacenar id de bloque
                                    sessData[sess].blocks[value.block] = blockNum;
                                }
                                
                                // carga dato nuevo
                                sessData[sess].data[blockNum].dataPoints.push(
                                    {
                                        'min': value.minutes,
                                        'x': addMinutesToDate(sessDate,value.minutes),
                                        'y': value.presents,
                                    }
                                );
                            }
                        });

                        // cargar select y gráfico
                        setChartData(sess,"","");
                    }else{ console.error("Datos de bloques en sesión "+sess+" no obtenidos") }
                });

                // Obtener estadísticas por diputado
                $.post('https://usher.sytes.net/usher-api/member_hist?token=48370255gBrgdlpl050588',
                    { username: "webadmin",
                      session: sess})
                .done(function(data) {
                    console.log(data);
                    if (data.succes == true){
                        /* DATOS DE ESTADISTICA POR MIEMBRO OBTENIDOS */
                        console.log("Datos de miembros en sesión "+sess+" obtenidos de API");

                        //dato de 1 miembro recibido de api
                        //"0" : {session,block,member_surname,member_name,photo,presences,total}

                        var blockBreak = "", blockNum = -1, memberNum = -1;
                        $.each(data, function(index, value) {
                            if (index == "succes" || 
                            typeof (value) === "undefined" || typeof (value.member_name) === "undefined"
                            || (sessData[sess].members.length > 0 && value.member_surname == sessData[sess].members[memberNum].surname && value.member_name == sessData[sess].members[memberNum].name)){ 
                                 // evita iteracion
                            }else{
                                memberNum++;
                                // NUEVO BLOQUE identificado //
                                if (value.block != blockBreak){
                                    blockBreak = value.block;
                                    blockNum ++;
                                    blockNum = setRealBlockNum(sess,blockNum, value.block);
                                    console.log("Nuevo bloque: "+ blockNum); // value.block                                   
                                }
                                console.log("Nuevo miembro: "+ value.member_surname);   
                                
                                // crea objeto miembro
                                sessData[sess].members.push( copyObject(_optionsPie) );
                                sessData[sess].members[memberNum].data = [ copyObject(_pieObj) ];
                                sessData[sess].members[memberNum].surname = value.member_surname;
                                sessData[sess].members[memberNum].name = value.member_name;
                                sessData[sess].members[memberNum].photo = value.photo;
                                sessData[sess].members[memberNum].block = value.block;
                                sessData[sess].members[memberNum].blockid = blockNum;
                                sessData[sess].members[memberNum].presence = value.presence;
                                sessData[sess].members[memberNum].presences = value.presences;
                                sessData[sess].members[memberNum].absences = value.total - value.presences;
                                sessData[sess].members[memberNum].total = value.total;
                                sessData[sess].members[memberNum].presence = (value.total==0?0:value.presences/value.total);
                                sessData[sess].members[memberNum].absence = (1 - sessData[sess].members[memberNum].presence);
                                sessData[sess].members[memberNum].data[0].dataPoints = [
                                    {y: sessData[sess].members[memberNum].presence, color: 'green'},
                                    {y: sessData[sess].members[memberNum].absence, color: 'red'},
                                ];
                                //log de objeto construido
                                console.log(sessData[sess].members[memberNum]);
                            }
                        });

                        // flag de miembros obtenidos
                        sessData[sess].membersLoaded = true;
                        // cargar listado de miembros
                        setMemberData(sess,"","");
                    }else{ console.error("Datos de miembros en sesion "+sess+" no obtenidos") }
                });
            }
        }
    }

    getSessionsList();
    $(window).load(function() {        
  /*  var x= copyObject(_optionsPie);
    x.data=[];
    x.data= [copyObject(_pieObj)];
    var x2 = {
        title: {
            text: "Website Traffic Source"
        },width: 70,
        data: [{
                type: "pie",
                startAngle: 270,
                showInLegend: "true",
                legendText: "{label}",
                indexLabel: "{label} ({y})",
                yValueFormatString:"#,##0.#"%"",
                dataPoints: [
                    { label: "Organic", y: 36 },
                    { label: "Email Marketing", y: 31 }
                ]
        }]
    };
    var pie = $('#div-pie');
    pie.CanvasJSChart(x);*/
        $( ".dropdown" ).change(function() {
            var sel = this.id;
            var ddsess = $("#ddsess"), ddblock = $("#ddblock"); //, ddperiod = $("#ddperiod");
            var sess = ddsess.children("option:selected").val(),
                block = "", 
                period = "",
                sesschange = false;
            // cambio de sesión
            if (sel == "ddsess") { 
                sesschange = true;
            }
            // cambio de bloque o periodo
            if (sel == "ddblock" || sel == "ddperiod") {                
                block = ddblock.children("option:selected").val(), 
                period = ""; //ddperiod.children("option:selected").val();
            }
            
            // cargar información de sesion seleccionada
            setChartData(sess, block, period, sesschange=sesschange);
        });    
    }); 
</script>
</head>
<body onload="" class="light_theme left_nav_fixed atm-spmenu-push">

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
                        <div class="col-md-12 column">
                            <h2>Estad&iacute;sticas de Sesiones Finalizadas</h2>
                            <select class="dropdown" id="ddsess" style="width: auto;">
                                <option value="" selected="selected">Seleccione una sesi&oacute;n...</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 column statpanel"><br/>
                            <div id="chartFilters">
                                <select class="dropdown" id="ddblock">
                                </select>
                            </div>
                            <div id="chartContainer" style="height: 300px; width: 100%;">
                            </div>
                                <!-- Este SVG tapa marga de Trial Version del CanvasJS -->
                                <svg id="svgtrial">
                                    <rect width="60" height="20"/>
                                </svg>
                            <div id="memberContainer" class="block-member"></div>
                            <!-- <div id="div-pie" style="height: 100px;width: 100px;"></div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
    <script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
</body>
</html>