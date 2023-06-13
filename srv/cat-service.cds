  using hc450.officesupplies as officesupplies from '../db/schema';
   
   service CatalogService {
       @odata.draft.enabled :true
       entity Products as projection on officesupplies.Products;
       entity Suppliers as projection on officesupplies.Suppliers;

       function get_supplier_info() returns array of Suppliers;
   };
/*
   using hc450.officesupplies as officesupplies from '../db/schema';
   
   /*service CatalogService 
   {
       @odata.draft.enabled :true

       entity Suppliers @(restrict : [
        { grant : ['READ'], to : ['Vendor'] }, 
        { grant : ['*'], to : ['procurementManager'] }
        ]) as projection on officesupplies.Suppliers;

       entity Products @(restrict : [
        { grant : ['READ'], to : ['Vendor'] }, 
        { grant : ['*'], to : ['procurementManager'] }
        ]) as projection on officesupplies.Products;

        function get_supplier_info() returns array of Suppliers;
   };*/
 // service CatalogService @(requires: 'authenticated-user') {
/*
    @odata.draft.enabled :true
    entity Suppliers @(restrict : [
     { grant : [ 'READ' ], to : [ 'Vendor' ] },
     { grant : [ '*' ], to : [ 'ProcurementManager' ] }
     ])as projection on officesupplies.Suppliers;
     entity Products @(restrict : [
     { grant : [ 'READ' ], to : [ 'Vendor' ] },
     { grant : [ '*' ], to : [ 'ProcurementManager' ] }
     ])as projection on officesupplies.Products;

    function get_supplier_info() returns array of Suppliers;

};*/
  /*  @odata.draft.enabled :true
    entity Products as projection on officesupplies.Products;
    entity Suppliers as projection on officesupplies.Suppliers;

    function get_supplier_info() returns array of Suppliers;
  }*/