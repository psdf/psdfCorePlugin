/*
 * Ext JS Library 2.0.2
 * Copyright(c) 2006-2008, Ext JS, LLC.
 * licensing@extjs.com
 * 
 * http://extjs.com/license
 *
 * Ejemplo por: garraS (garraS@extjs.es)
 */
 
Ext.onReady(function(){                       
    Ext.QuickTips.init();
	
	var bd = Ext.getBody();
	bd.createChild({tag: 'h2', html: 'Ejemplo de Formulario con Validaci&oacute;n y consulta PHP.'});
	  
    var formulario = new Ext.FormPanel({
        labelAlign: 'top',
        frame:true,
        title: 'Ejemplo de Formulario con Validaci&oacute;n y consulta PHP.',
		url: 'formulario-php.php',
    	method: 'POST',
        width: 570,
        items: [{
            layout:'form',         
                items: [{
					xtype:'textfield',
					fieldLabel: 'Campo 1',
					name: 'campo1',
					allowBlank: false,
					id: 'campo1',
					anchor:'100%'
				},{
					xtype:'checkbox',  
					boxLabel :'Texto',   
					checked: true,
					fieldLabel: 'Campo 2',
					name: 'campo2',
					id: 'campo2'
				},{
					xtype:'textarea',
					name: 'campo3',
					allowBlank: false,
					id:  'campo3',
					fieldLabel:'Campo 3',
					height:100,
					anchor:'100%'
				},{
					xtype:'htmleditor',            
					name: 'campo4',
					id:'campo4',            
					fieldLabel:'Campo 4',
					height:200,
					anchor:'100%'						
				}
			]
        }],
        buttons: [{
            text: 'Aceptar',
            handler: function(){
				if ( formulario.form.isValid() ) {
					formulario.form.submit({
						waitMsg:'Guardando...',
						reset: false,
						failure: function(formulario, action) {
							Ext.MessageBox.alert('Acceso denegado', action.result.message);
						},
						success: function(formulario, action) {
							Ext.MessageBox.show({
								title: 'Acceso autorizado',
								msg: action.result.message,
								closable: false,
								resizable: false,
								buttons: Ext.MessageBox.OK,
								fn: function(){
									Ext.MessageBox.alert('Aviso', 'Apretaste OK!');
								}
							});
							
						}
					});
				} else {
					Ext.Msg.show({
						title:'Mensaje',
						msg: 'Campos vacios',
						buttons: Ext.Msg.OK,                   
						animEl: document.body,                   
						icon: Ext.MessageBox.INFO
					});
				}
			}
        },{
            text: 'Cancel',
			handler: function(){
				Ext.MessageBox.alert('Cancelado', 'Se cancel&oacute;.');
			}
        }]
    });
	
    formulario.render(bd);
	
	createCodePanel('formulario-php.js', 'Ver código para crear este ejemplo');
});