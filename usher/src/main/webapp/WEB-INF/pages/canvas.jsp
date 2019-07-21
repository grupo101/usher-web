<html>
 <head>
  <script type="application/javascript">
    function draw() {
    	var vec=[1,0,1,0,1,0,0,1,1,1,1,1,0,0,0,0,0];
      var canvas = document.getElementById("canvas");
      if (canvas.getContext) {
        var ctx = canvas.getContext("2d");
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
      }
      }
  </script>
 </head>
 <body onload="draw();">
   <canvas id="canvas" width="1024" height="1024"></canvas>
 </body>
</html>