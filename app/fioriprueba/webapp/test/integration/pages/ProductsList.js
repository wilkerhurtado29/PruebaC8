sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'hc450.officesupplies.fioriprueba',
            componentId: 'ProductsList',
            entitySet: 'Products'
        },
        CustomPageDefinitions
    );
});