NestedListDemo.views.Viewport = Ext.extend(Ext.NestedList, {
    initComponent: function() {
        Ext.apply(this, {
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
            },
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
                        '</div>' +
                    '</tpl>' +
                    '<tpl if="model === \'Track\'">'+
                        '<div class="metadata">' +
                            ' Duration: {[Math.floor(values.duration/60)]}:{[values.duration%60]}' +
                        '</div>' +
                    '</tpl>';
                return tplConstructor;
            }
        });
        NestedListDemo.views.Viewport.superclass.initComponent.apply(this, arguments);
    }
});
