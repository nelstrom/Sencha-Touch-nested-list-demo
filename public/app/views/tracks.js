NestedListDemo.views.Tracks = Ext.extend(Ext.NestedList, {
    title: 'Tracks',
    displayField: 'text',
    getItemTextTpl: function() {
        var tplConstructor = '{text}' +
            '<tpl if="model === \'Genre\'">'+
            ' [genre]' +
            '</tpl>' +
            '<tpl if="model === \'Artist\'">'+
            ' [artist]' +
            '</tpl>' +
            '<tpl if="model === \'Album\'">'+
            ' [album]' +
            '</tpl>' +
            '<tpl if="model === \'Track\'">'+
            ' [track]' +
            '</tpl>' +
            '';
        return tplConstructor;
    },
    store: NestedListDemo.tracks_store,
    getDetailCard: function(item, parent) {
        var itemData = item.attributes.record.data,
        parentData = parent.attributes.record.data,
        detailCard = new Ext.Panel({
            scroll: 'vertical',
            styleHtmlContent: true,
            tpl: ["<h2>{text}</h2>","{info}"]
        });
        this.backButton.setText(parentData.text);
        this.toolbar.setTitle(itemData.text);
        detailCard.update(itemData);
        return detailCard;
    }
});
