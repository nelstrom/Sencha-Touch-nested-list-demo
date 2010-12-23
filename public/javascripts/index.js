Ext.ns('demos');
Ext.setup({
    onReady: function() {
        var nestedList = new Ext.NestedList({
            fullscreen: true,
            title: 'Groceries',
            displayField: 'text',
            store: demos.store,
            getDetailCard: function(item, parent) {
                return new Ext.Panel({
                    html: "detail card"
                });
            }
        });
    }
});
