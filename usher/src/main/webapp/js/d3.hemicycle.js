d3.hemicycle = function() {
  function stateColor(state) {
    return (parseInt(state) == 1) ? "green" : "red";
  }

  function hemicycle(selection, centerbenchs = 0) { 
    selection.each(function(d, i) {

    // options
    var nvar = (typeof(n) === "function" ? n(d) : n),
        gapvar = (typeof(gap) === "function" ? gap(d) : gap),
        widthIconvar = (typeof(widthIcon) === "function" ? widthIcon(d) : widthIcon),
        widthvar =  (typeof(width) === "function" ? width(d) : width);
        peoplevar =  (typeof(people) === "function" ? people(d) : people);

    var element = d3.select(this);
    var icons = element.selectAll(".icon")
        
    // comprobar si es creacion o actualizacion
    var updatevar = (icons.size() > 0);

    var data = [];
    // solo dibujar en creacion (no en actualizacion)
    if (!updatevar) {
    
      // valor maximo de radio 
      var rmax = 1 + nvar.length *gapvar*widthIconvar;
      // calcular escala horizontal y vertical
      var xScale = d3.scale.linear()
          .domain([-1*rmax, rmax])
          .range([0, widthvar]),
        xxScale = d3.scale.linear()
          .domain([0, 2*rmax])
          .range([0, widthvar])
          yScale = d3.scale.linear()
            .domain([0, rmax])
            .range([widthvar/2,0]);

      // definir posiciÃ³n de bancas en hemiciclo
      var s = [];
      var sent = 1;
      for (i in nvar) {
        sent = -sent; // inversiÃ³n de sentido para generar en formato de S
        s.push((Math.PI/widthIconvar + Math.PI*i*gapvar-nvar[i])/(nvar[i] - 1));
        var ninrow = nvar[i],
            radwidth = Math.PI/(nvar[i]+(nvar[i]-1)*s[i]),
            radspace = radwidth*s[i],
            r = 1 + i*gapvar*widthIconvar;
        for (j=0;j<ninrow;j++) {
          var k = (sent > 0) ? j : ninrow-j-1;
          var x = Math.cos(radwidth*(0.5+k)+k*radspace)*r,
              y = Math.sin(radwidth*(0.5+k)+k*radspace)*r,
              rot = -1*(radwidth*(0.5+k)+k*radspace)/Math.PI*180+90;
          data.push({'x':x,'y':y,'rot':rot});
        }
      }
    
      // definir posiciÃ³n de bancas en centro de hemiciclo
      if (centerbenchs > 0) {
        var ninrow = centerbenchs,
            linespace = (gapvar+widthIconvar)/(rmax*ninrow),
            linewidth = (ninrow-1)*linespace,
            r = -(linewidth/2);
        for (j=0;j<ninrow;j++) {
          var x = r,
              y = 0,
              rot = 0;
          data.push({'x':x,'y':y,'rot':rot});
          r += linespace;
        }
      }

      // ordenar datos por angulo de rotacion
      /* data.sort(function(x,y) {
        if (x['rot'] < y['rot']) return -1;
        if (x['rot'] > y['rot']) return 1;
        return 0
      }); */
      
      // traspasar datos de personas a 'data', formatear datos
      var i = 0;
        //for (j=0;j<group['n'];j++) {
      for (key in peoplevar) {
          person = peoplevar[key];
          for (var attrname in person) { data[i][attrname] = person[attrname]; }
          //data[i]['color'] = group['color'];
          //data[i]['name'] = //group['name'];
          data[i]['widthIcon'] = widthIconvar;
          if (parseInt(person["option_code"]) == -1) data[i]['background'] = "red";
          if (parseInt(person["option_code"]) == 0) data[i]['background'] = "gray";
          if (parseInt(person["option_code"]) == 1) data[i]['background'] = "green";
          i++;
      }
    
      icons = icons
      .data(data)
      .attr("class",function(d) { return "icon id"+d.id+" state"+d.state})
      // .call(chequeo)
      ;
      icons.exit().remove();
      icons = icons.enter().append("a")
              .attr("class",function(d) {return "icon id"+d.id+" state"+d.state})
              .attr("transform",function(d) {return "rotate("+d.rot+","+xScale(d.x)+","+yScale(d.y)+")"})
              .attr("xlink:href",function(d) {return d.link})
              .on("mouseover", tip.show)
            .on("mouseout", tip.hide)
            

      // INDICADOR BANCA
      .append("text")
              .attr('font-family', 'FontAwesome') //"Font Awesome 5 Free")
              // .attr('font-size',xxScale(d.widthIcon*1.15)) //the icon is about 1.15times higher then wide
              .attr('font-size',xxScale(d.widthIcon*1.0)) //the icon is about 1.15times higher then wide
              .attr('fill', function(d) {
                // return d.color;
                return stateColor(d.state);
              })
              .attr('fill-opacity', function(d) {
                if (parseInt(d.state) in [0,1]) return 1;
                else return 0.25;
                // if (Math.abs(parseInt(d.option_code)) == 1) return 1;
                // else return 0.25;
              })
              .attr('stroke-width', function(d) {return 1;})
              .attr('stroke-opacity',function(d) {
                if (Math.abs(parseInt(d.option_code)) == 1) return 0.9;
                else return 0.25;
              })
              .attr('text-anchor',"middle")
              .attr('class', 'shadow fas')
              .attr('x',function(d) {return xScale(d.x);})
              .attr('y',function(d) {return yScale(d.y);})
              // .attr('class', 'fas fa-user-circle')
              // .text('\uf007');
              .text('\uf2bd')

      //http://stackoverflow.com/questions/13203897/d3-nested-appends-and-data-flow      
      // INDICADOR A FAVOR/EN CONTRA
      .append("text")
        // .attr('font-size',xxScale(d.widthIcon*1.15/2))
        .attr('font-size',xxScale(d.widthIcon/2))
        // .attr('font-size',xxScale(d.widthIcon*1.1))
        .attr('font-family', 'FontAwesome')
        // .attr('x',function(d) {return xScale(d.x+d.widthIcon/2.8);})
        // .attr('y',function(d) {return yScale(d.y+d.widthIcon/2.8);}) 
        .attr('x',function(d) {return xScale(d.x+d.widthIcon/2.3);})
        .attr('y',function(d) {return yScale(d.y+d.widthIcon/2.3);}) 
        // .attr('x',function(d) {return xScale(d.x);})
        // .attr('y',function(d) {return yScale(d.y-0.02);}) 
        .attr('fill',function(d) {return d.background}) 
        .attr('fill-opacity', function(d) {
            if (parseInt(d.state) == 1 && Math.abs(parseInt(d.option_code)) == 1) return 1;
            else if (parseInt(d.option_code) == 0) return 0; // ocultar indicador si es 0
            else return 0.25;
          })
        .attr('text-anchor',"middle")
        //.text('\uf005');
        .text('\uf111');
        // .text('\uf1ce');
        // .text(function(d) {if (d.background == 'red') return '\uf0a3'; else return '\uf0a3';});

    
    } else {
      var i = 0;
      data = icons.data();
      for (key in peoplevar) {
          person = peoplevar[key];
          datai = data[i];
          if (parseInt(datai.state) != parseInt(person.state)) {
            datai.state = person.state
          }
          i += 1;
      }
  /*     function chequeo(sel){
        var cant = sel.size();
        sel.each(function(d,i) {
          var element = d3.select(this);
          var datai = data[i];
          var person = d;
          if (parseInt(datai.state) != parseInt(person.state)) {
            datai.state = person.state
          }
          element.attr("class",function(d) { return "icon id"+d.id+" state"+d.state})
        });
      } */
      icons = icons
      .data(data)
      .attr("class",function(d) { return "icon id"+d.id+" state"+d.state})
      // .call(chequeo)
      ;
    }

    
    /*var angle = [{'startangle':0,'endangle':Math.PI/2}];

    var arci = d3.svg.arc()
                    .startAngle(function(d){return d.startangle})
                    .endAngle(function(d){return d.endangle})
                    .outerRadius(x0Scale(rmax))
                    .innerRadius(0);

    var position = [xScale(0),yScale(0)];*/
   

  });
  }
  
    hemicycle.n = function(value) {
        if (!arguments.length) return value;
        n = value;
        return hemicycle;
    };
    hemicycle.gap = function(value) {
        if (!arguments.length) return value;
        gap = value;
        return hemicycle;
    }; 
    hemicycle.widthIcon = function(value) {
        if (!arguments.length) return value;
        widthIcon = value;
        return hemicycle;
    };
    hemicycle.width = function(value) {
        if (!arguments.length) return value;
        width = value;
        return hemicycle;
    };
    hemicycle.people = function(value) {
        if (!arguments.length) return value;
        people = value;
        return hemicycle;
    };

  return hemicycle;
}
