NestedListDemo.artists_store = new Ext.data.TreeStore({
    model: 'ListItem',
    proxy: {
        type: 'ajax',
        url: '/artists/catalogue.json',
        reader: {
            type: 'tree',
            root: 'items'
        }
    }
});

