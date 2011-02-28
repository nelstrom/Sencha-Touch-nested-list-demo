NestedListDemo.views.Viewport = Ext.extend(Ext.NestedList, {
    initComponent: function() {
        Ext.apply(this, {
            fullscreen: true,
            title: 'Music',
            store: NestedListDemo.music_store,
        });
        NestedListDemo.views.Viewport.superclass.initComponent.apply(this, arguments);
    }
});
