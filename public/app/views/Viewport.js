NestedListDemo.views.Viewport = Ext.extend(Ext.NestedList, {
    fullscreen: true,
    title: 'Music',
    displayField: 'text',
    store: NestedListDemo.albums_store,
    
    // layout: 'card',
    // cardSwitchAnimation: 'slide',
    // initComponent: function() {
    //     //put instances of cards into NestedListDemo.views namespace
    //     Ext.apply(NestedListDemo.views, {
    //         albumsList: new NestedListDemo.views.Albums(),
    //         //contactDetail: new NestedListDemo.views.ContactDetail(),
    //         //contactForm: new NestedListDemo.views.ContactForm()
    //     });
    //     //put instances of cards into viewport
    //     Ext.apply(this, {
    //         items: [
    //             NestedListDemo.views.Albums,
    //             //NestedListDemo.views.contactDetail,
    //             //NestedListDemo.views.contactForm,
    //         ]
    //     });
    //     NestedListDemo.views.Viewport.superclass.initComponent.apply(this, arguments);
    // }
});
