
<?php echo javascript_tag("

  Ext.onReady(function(){
  
    // alert('Congratulations!  You  have Ext configured correctly!');  
    Ext.MessageBox.show({
      title: '".$title."',
      msg: '".$msg."',
      buttons: Ext.MessageBox.".$buttons.",
      fn: continuar,
    });
    
	  function continuar(btn){
	    document.getElementById('button').value = btn;
	    document.getElementById('form').submit();
	  }
    
  });
      
"); ?>

<?php echo input_hidden_tag('button'); ?>