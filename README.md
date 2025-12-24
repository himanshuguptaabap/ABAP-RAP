✈️ Flight Reference — CDS & OData Services (ABAP on HANA)

📌 Overview

This repository contains ABAP CDS views, OData V2 services, and related SAP Gateway artifacts implemented on top of the SAP Flight Reference Scenario (/DMO/FLIGHT).  
The project demonstrates modern ABAP development (7.4+), CDS-based data modeling, search enablement, and service exposure.

🧩 Package structure

Main package: ZRG_DEC_DEMO

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
│   └── Authorization defaults (TADIR)
│
└── Business Services / IAM Apps
    └── ZUI_FLIGHT_DETAILS_V2_IWSG_IBS

Notes
- ABAP version: 7.4+ (CDS support)
- Data source: /DMO/FLIGHT (SAP Flight Reference Scenario)
- Services exposed as OData V2 via SAP Gateway

If you want, I can:
- Add a Usage/Deployment section with step-by-step instructions for activating the CDS views and registering the OData service in the Gateway,
- Add a Requirements/Prerequisites section listing required SAP components and kernel versions,
- Or expand the README with examples of querying the exposed OData endpoints.

Preview:
<img width="1712" height="979" alt="image" src="https://github.com/user-attachments/assets/ff22acc5-617d-4e00-954d-926e89af93df" />
<img width="1706" height="925" alt="image" src="https://github.com/user-attachments/assets/112ecea6-f692-443f-abe3-bfc770268c15" />

