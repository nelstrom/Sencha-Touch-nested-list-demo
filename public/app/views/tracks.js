NestedListDemo.views.Tracks = Ext.extend(Ext.NestedList, {
    title: 'Tracks',
    displayField: 'text',
    getItemTextTpl: function() {
        var tplConstructor = '{text}' +
            '<tpl if="model === \'Artist\'">'+
                '<div class="metadata">' +
                    ' {[values.items.length]} albums' +
                '</div>' +
            '</tpl>' +
            '<tpl if="model === \'Album\'">'+
                '<div class="metadata">' +
                    ' {[values.items.length]} tracks' +
                    // ideally, want to sum the duration of all tracks
                    ' Running time: {[values.items]}' +
                '</div>' +
            '</tpl>' +
            '<tpl if="model === \'Track\'">'+
                '<div class="metadata">' +
                    ' Running time: {duration} seconds' +
                '</div>' +
            '</tpl>';

        // If I use construct an XTemplate here and return it,
        // the template breaks
        //return new Ext.XTemplate(tplConstructor);

        // If I return the string, the template works
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
