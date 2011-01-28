NestedListDemo.albums_store = new Ext.data.TreeStore({
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
