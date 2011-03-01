NestedListDemo = new Ext.Application({
    name: "NestedListDemo",
    
    launch: function() {
        this.views.detailCard = new this.views.DetailPanel();
        this.views.viewport = new this.views.Viewport();
    }
});
