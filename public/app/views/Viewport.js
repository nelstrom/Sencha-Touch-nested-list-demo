NestedListDemo.views.Viewport = Ext.extend(Ext.NestedList, {
    fullscreen: true,
    title: 'Music',
    displayField: 'text',
    store: NestedListDemo.music_store,
    getDetailCard: function(item, parent) {
        var itemData = item.attributes.record.data,
        parentData = parent.attributes.record.data,
        detailCard = new Ext.Panel({
            scroll: 'vertical',
            styleHtmlContent: true,
            tpl: ["<h2>{text}</h2>","{info}"]
        });
        detailCard.update(itemData);
        this.backButton.setText(parentData.text);
        return detailCard;
    }
});
