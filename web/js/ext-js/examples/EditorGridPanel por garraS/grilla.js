Ext.onReady(function(){
    Ext.QuickTips.init();
    Ext.form.Field.prototype.msgTarget = 'side';
	
	var primaryKey = 'id';
	
	var Campos = Ext.data.Record.create([
		{name: primaryKey, type: 'int'},
		{name: 'campo1', type: 'int'},
		{name: 'campo2', type: 'string'},
		{name: 'campo3', type: 'int'},
		{name: 'campo4', type: 'int'},
		{name: 'campo5', type: 'string'}
    ]);
	
	var comboStore = new Ext.data.JsonStore({
		 fields: ['ID','SERIE']
		,root: 'nroSerie'
		,url: 'listar_nroSerie.php'
	});

    var cm = new Ext.grid.ColumnModel([
		{
			header: 'ID',
			dataIndex: 'id',
			hidden: true
		},{
			id: 'campo1',
			header: 'Campo 1',
			dataIndex: 'campo1',
			width:120,
			editor: new Ext.form.ComboBox({
				typeAhead: true,
				triggerAction: 'all',
				store: comboStore,
				lazyRender:true,
				model: 'remote',
				triggerAction:	'all',
				loadingText: 'Cargando lista...',
				displayField: 'SERIE',
				valueField: 'SERIE',
				listClass: 'x-combo-list-small'
			})
		},{
			header: 'Campo 2',
			dataIndex: 'campo2',
			width: 120,
			editor: new Ext.form.TextField({
				allowBlank: true
			})
		},{
			header: 'Campo 3',
			dataIndex: 'campo3',
			width: 90,
			editor: new Ext.form.NumberField({
				allowNegative: false
			})
		},{
			header: 'Campo 4',
			dataIndex: 'campo4',
			width: 100,
			editor: new Ext.form.NumberField({
				allowNegative: true
			})
		},{
			header: 'Campo 5',
			dataIndex: 'campo5',
			width: 180,
			editor: new Ext.form.TextField({
				allowBlank: true
			})
		}
    ]);
	
    cm.defaultSortable = true;
	
	var store = new Ext.data.GroupingStore({
		 proxy: new Ext.data.HttpProxy({
			 url: 'listar.php'
			,timeout: 100000
			,method: 'POST'
		})
		,reader: new Ext.data.JsonReader({
			 root: 'resultados'
			,sortInfo:{field: primaryKey, direction:'ASC'}
			,id: primaryKey
		}
			,Campos
		)
		,sortInfo:{field: primaryKey, direction:'ASC'}
	});

    var grid = new Ext.grid.EditorGridPanel({
        store: store,
        cm: cm,
		layout: 'fit',
        frame: true,
		border: true,
        clicksToEdit: 2,
		loadMask: true,
        tbar: [{
            text: 'Agregar',
            handler : function(){
                var p = new Campos({
					id: null,
                    campo1: null,
                    campo2: '',
                    campo3: null,
                    campo4: null,
                    campo5: ''
                });
                grid.stopEditing();
                store.insert(0, p);
                grid.startEditing(0, 1);
            }
        },'->',{
			text: 'Actualizar',
			handler: function(){
				store.reload();
			}
		}],
		bbar: ['->',{
			text: 'Guardar Cambios',
			handler: guardarCambios
		},{
			text: 'Restablecer',
			handler: function(){
				store.rejectChanges();
			}
		}]
    });
    store.load();
	
	var ventana = new Ext.Window({
        title: 'EditorGridPanel por garraS',
		frame: true,
		border: false,
        width: 700,
        height: 500,
        minWidth: 600,
        minHeight: 400,
        layout: 'fit',
        buttonAlign:'center',
        items: grid,
        buttons: [{
            text: 'Agregar',
            handler : function(){
                var p = new Campos({
					id: null,
                    campo1: null,
                    campo2: '',
                    campo3: null,
                    campo4: null,
                    campo5: ''
                });
                grid.stopEditing();
                store.insert(0, p);
                grid.startEditing(0, 1);
            }
        },{
            text: 'Guardar Cambios',
			handler: guardarCambios
        },{
			text: 'Restablecer',
			handler: function(){
				store.rejectChanges();
			}
		}]
    });

    ventana.show();
	
	function guardarCambios() {
	    var gridMask = new Ext.LoadMask(grid.getEl(),{msg:'Guardando los cambios...'});
	    gridMask.show();
	    var records = store.getModifiedRecords();
	    if(!records.length) {
	        return;
	    }
	    var data = [];
	    Ext.each(records, function(r, i) {
	        var o = r.getChanges();
	        if(r.data.newRecord) {
	            o.newRecord = true;
	        }
	            o[primaryKey] = r.get(primaryKey);
	            data.push(o);
	    }, this);
		var o = {
			 url: 'guardar.php'
			,method:'POST'
			,scope:this
			,timeout: 100000
			,params: { 
				data: Ext.encode(data)
			}
			,callback: function (options, success, response) {
				gridMask.hide();
				var json = Ext.util.JSON.decode(response.responseText);
				if (json.success) {
					store.commitChanges();
				}else{
					Ext.MessageBox.show({
						title: 'Error',
						msg: json.mensaje,
						buttons: Ext.MessageBox.OK,
						icon: Ext.MessageBox.ERROR
					});
				}
			}
	    };           
	    Ext.Ajax.request(o);
	}
});