// store with data
NestedListDemo.data = {
    text: 'Groceries',
    items: [{
        text: 'Drinks',
        items: [{
            text: 'Water',
            items: [{
                text: 'Sparkling',
                leaf: true
            },{
                text: 'Still',
                leaf: true
            }]
        },{
            text: 'Coffee',
            leaf: true
        },{
            text: 'Espresso',
            leaf: true
        },{
            text: 'Redbull',
            leaf: true
        },{
            text: 'Coke',
            leaf: true
        },{
            text: 'Diet Coke',
            leaf: true
        }]
    },{
        text: 'Fruit',
        items: [{
            text: 'Bananas',
            leaf: true
        },{
            text: 'Lemon',
            leaf: true
        }]
    },{
        text: 'Snacks',
        items: [{
            text: 'Nuts',
            leaf: true
        },{
            text: 'Pretzels',
            leaf: true
        },{
            text: 'Wasabi Peas',
            leaf: true
        }]
    },{
        text: 'Empty Category',
        items: []
    }]
};

Ext.regModel('ListItem', {
    fields: [{name: 'text', type: 'string'}]
});

NestedListDemo.store = new Ext.data.TreeStore({
    model: 'ListItem',
    root: NestedListDemo.data,
    proxy: {
        type: 'ajax',
        reader: {
            type: 'tree',
            root: 'items'
        }
    }
});
