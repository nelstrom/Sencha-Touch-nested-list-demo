NestedListDemo.music_store = new Ext.data.TreeStore({
    model: 'ListItem',
    proxy: {
        type: 'ajax',
        url: '/tracks/catalogue.json',
        reader: {
            type: 'tree',
            root: 'items'
        }
    }
});
