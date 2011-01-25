Ext.ns('demos');
Ext.setup({
    onReady: function() {
        var nestedList = new Ext.NestedList({
            fullscreen: true,
            title: 'Groceries',
            displayField: 'text',
            store: demos.store,
            getDetailCard: function(item, parent) {
                detailCard = new Ext.Panel({
                    tpl: "detail card for {text}"
                });
                button = nestedList.toolbar.items.first()
                button.setText(parent.attributes.record.data.text);
                detailCard.update(item.attributes.record.data);
                return detailCard;
            }
        });
    }
});
