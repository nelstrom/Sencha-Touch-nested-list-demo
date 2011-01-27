NestedListDemo = new Ext.Application({
    name: "NestedListDemo",

    launch: function() {
        var nestedList = new Ext.NestedList({
            fullscreen: true,
            title: 'Music',
            displayField: 'text',
            store: NestedListDemo.store,
            getDetailCard: function(item, parent) {
                var itemData = item.attributes.record.data,
                parentData = parent.attributes.record.data,
                detailCard = new Ext.Panel({
                    tpl: "detail card for {text}"
                });
                nestedList.backButton.setText(parentData.text);
                nestedList.toolbar.setTitle(itemData.text);
                detailCard.update(itemData);
                return detailCard;
            }
        });
    }
});
