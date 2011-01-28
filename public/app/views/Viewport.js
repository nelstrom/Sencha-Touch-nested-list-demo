NestedListDemo.views.Viewport = Ext.extend(Ext.TabPanel, {
    fullscreen: true,
    layout: 'card',
    cardSwitchAnimation: 'slide',
    initComponent: function() {
        //put instances of cards into NestedListDemo.views namespace
        Ext.apply(NestedListDemo.views, {
            albumsList: new NestedListDemo.views.Albums()
        });
        //put instances of cards into viewport
        Ext.apply(this, {
            items: [
                NestedListDemo.views.albumsList
            ]
        });
        NestedListDemo.views.Viewport.superclass.initComponent.apply(this, arguments);
    }
});
