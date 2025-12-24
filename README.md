✈️ Flight Reference CDS & OData Services (ABAP on HANA)
📌 Overview

This repository contains ABAP CDS Views, OData V2 Services, and related SAP Gateway artifacts built on top of the SAP Flight Reference Scenario (/DMO/FLIGHT).
The project demonstrates modern ABAP development (7.4+), CDS-based data modeling, search enablement, and service exposure.

🧩 Package Structure

Main Package: ZRG_DEC_DEMO

ZRG_DEC_DEMO
│
├── Core Data Services
│   ├── ZI_AIRPORT_RG_VH
│   ├── ZI_CARRIER_TECH_RG
│   ├── ZI_FLIGHT_TECH_RG
│   └── ZRG_CONNECTION
│
├── Service Definitions
│   └── ZRG_FLIGHT_DETAILS
│
├── Service Bindings
│   └── ZUI_FLIGHT_DETAILS_V2
│
├── OData Services (Gateway)
│   └── ZUI_FLIGHT_DETAILS_V2_IWSG
│
├── Authorizations
│   └── Authorization Defaults (TADIR)
│
└── Business Services / IAM Apps
    └── ZUI_FLIGHT_DETAILS_V2_IWSG_IBS

