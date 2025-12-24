@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Flight details'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
define view entity zi_flight_tech_rg
  as select from /dmo/flight
  association [1] to zi_carrier_tech_rg as _Carrier on $projection.CarrierId = _Carrier.CarrierId
{
      @ObjectModel.text.association: '_Carrier'
      @UI.lineItem: [{position: 10 }]
  key carrier_id     as CarrierId,
      @UI.lineItem: [{position: 20 }]
  key connection_id  as ConnectionId,
      @UI.lineItem: [{position: 30 }]
  key flight_date    as FlightDate,
      @UI.lineItem: [{position: 40 }]
      @Semantics.amount: {
          currencyCode: 'CurrencyCode'
      }
      price          as Price,
      currency_code  as CurrencyCode,
      @UI.lineItem: [{position: 50 }]
      @Search.defaultSearchElement: true
      plane_type_id  as PlaneTypeId,
      @UI.lineItem: [{position: 60 }]
      seats_max      as SeatsMax,
      @UI.lineItem: [{position: 70 }]
      seats_occupied as SeatsOccupied,
      _Carrier
}
