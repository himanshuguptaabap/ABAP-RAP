@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Connection'
@Metadata.ignorePropagatedAnnotations: true
@UI.headerInfo: {
    typeName: 'Connection',
    typeNamePlural: 'Connections'
}
@Search.searchable: true
define view entity ZRG_CONNECTION
  as select from /dmo/connection as Connection
  association [1..*] to zi_flight_tech_rg  as _Flight  on  $projection.CarrierId    = _Flight.CarrierId
                                                       and $projection.ConnectionId = _Flight.ConnectionId
  association [1]    to zi_carrier_tech_rg as _Carrier on  $projection.CarrierId = _Carrier.CarrierId
{
      @UI.facet: [{ id:'Connection',
                    purpose: #STANDARD,
                    type: #IDENTIFICATION_REFERENCE,
                    position: 10,
                    label: 'Connection'},
                    { id:'Flight',
                    purpose: #STANDARD,
                    type: #LINEITEM_REFERENCE,
                    position: 20,
                    label: 'Flight',
                    targetElement: '_Flight'
                    }]
      @Search.defaultSearchElement: true
      @UI.lineItem: [{ position: 10 }]
      @UI.identification: [{ position: 10  }]
      @ObjectModel.text.association: '_Carrier'
  key carrier_id      as CarrierId,
      @Search.defaultSearchElement: true
      @UI.lineItem: [{ position: 20 }]
      @UI.identification: [{ position: 20  }]
  key connection_id   as ConnectionId,
      @Consumption.valueHelpDefinition: [{
             entity: {
                 name: 'ZI_AIRPORT_RG_VH',
                 element: 'AirportId'
             } }]
      @Search.defaultSearchElement: true
      @UI.identification: [{ position: 30  }]
      @UI.selectionField: [{ position: 10}]
      @UI.lineItem: [{ position: 30 }]
      @EndUserText.label: 'Departure Airport Id'
      airport_from_id as AirportFromId,
      @Consumption.valueHelpDefinition: [{
          entity: {
              name: 'ZI_AIRPORT_RG_VH',
              element: 'AirportId'
          } }]
      @UI.identification: [{ position: 40  }]
      @UI.selectionField: [{ position: 20}]
      @UI.lineItem: [{ position: 40 }]
      @EndUserText.label: 'Destination Airport Id'
      airport_to_id   as AirportToId,
      @UI.identification: [{ position: 50  }]
      @UI.lineItem: [{ position: 50, label: 'Departure Time'}]
      departure_time  as DepartureTime,
      @UI.identification: [{ position: 60  }]
      @UI.lineItem: [{ position: 60, label: 'Arrival Time'}]
      arrival_time    as ArrivalTime,
      @UI.identification: [{ position: 70  }]
      @Semantics.quantity.unitOfMeasure: 'DistanceUnit'
      distance        as Distance,
      distance_unit   as DistanceUnit,
      //Association
      @Search.defaultSearchElement: true
      _Flight,
      @Search.defaultSearchElement: true
      _Carrier
}
