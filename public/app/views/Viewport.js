NestedListDemo.views.Viewport = Ext.extend(Ext.NestedList, {
    initComponent: function() {
        Ext.apply(this, {
            fullscreen: true,
            title: 'Music',
            store: NestedListDemo.tracks_store,
        });
        NestedListDemo.views.Viewport.superclass.initComponent.apply(this, arguments);
    }
});
