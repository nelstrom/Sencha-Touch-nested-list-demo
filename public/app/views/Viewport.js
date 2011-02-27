NestedListDemo.views.Viewport = Ext.extend(Ext.NestedList, {
    initComponent: function() {
        Ext.apply(this, {
            fullscreen: true,
            title: 'Music',
            displayField: 'text',
            store: NestedListDemo.music_store,
        });
        NestedListDemo.views.Viewport.superclass.initComponent.apply(this, arguments);
    }
});
