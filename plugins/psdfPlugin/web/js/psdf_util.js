  var myStatus=-1;
  var allStatus= new Array();

  /**
   * Implementacion isset en javascript
   * @param variable_name
   * @return
   */
  function isset(variable_name) {
    try {
         if (typeof(eval(variable_name)) != 'undefined')
         if (eval(variable_name) != null)
         return true;
     } catch(e) { }
    return false;
  }
  
  /**
   * Maximiza o vuelve a estado normal una capa (div)
   * @param idDiv
   * @return
   */
  function fullSize( idDiv )
  {
    dv = document.getElementById(idDiv);
    if( myStatus!=1 )
    {
      act_width=parseInt(dv.style.width);
      act_height=parseInt(dv.style.height);
      act_top=parseInt(dv.style.top);
      act_left=parseInt(dv.style.left);
      
      dv.style.position='absolute';
      dv.style.left='1px';
      dv.style.top='1px';
      dv.style.width=(this.innerWidth-40)+'px';
      dv.style.height=(this.innerHeight+400)+'px';;
      dv.style.background='white';
      myStatus=1;
    }
    else
    {
      dv.style.position='static';
      dv.style.width='735px';
      dv.style.height='600px';      
      myStatus=0;
    }
  }
  
  /**
   * Muestra u oculta una capa (div)
   * @param idCapa
   * @return
   */
  function toogleStatus( idCapa )
  {
    if( allStatus[idCapa]=='min' )
    {
      document.getElementById(idCapa).style.display='block';
      allStatus[idCapa]='normal';
    }
    else
    {
      document.getElementById(idCapa).style.display='none';
      allStatus[idCapa]='min';
    }
  }
