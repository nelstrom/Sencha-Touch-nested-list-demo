Ext.regModel('ListItem', {
    fields: [{name: 'text', type: 'string'}]
});

NestedListDemo.store = new Ext.data.TreeStore({
    model: 'ListItem',
    proxy: {
        type: 'ajax',
        url: '/albums/catalogue.json',
        reader: {
            type: 'tree',
            root: 'items'
        }
    }
});
