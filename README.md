# Data Warehouse and Analytics Project

Welcome to the **Data Warehouse and Analytics Project** repository!   
This portfolio project showcases a complete end-to-end data warehousing and analytics solution—from building a scalable warehouse to deriving meaningful insights. It reflects best practices in modern data engineering and analytics workflows.

---

##  Data Architecture

The architecture follows the **Medallion Architecture** approach, featuring **Bronze**, **Silver**, and **Gold** layers:

![Data Architecture](docs/data_architecture.png)

1. **Bronze Layer**: Raw data ingested directly from source systems (CSV files), stored in its original format in SQL Server.  
2. **Silver Layer**: Transformed and standardized data after cleansing and normalization—ready for further processing.  
3. **Gold Layer**: Curated business-ready data modeled in a star schema for reporting and analysis.  

---

##  Project Overview

This project includes:

1. **Data Architecture**: Implementation of the Medallion model using **Bronze**, **Silver**, and **Gold** layers.  
2. **ETL Pipelines**: Extraction, transformation, and loading of data from source files into the data warehouse.  
3. **Data Modeling**: Design of fact and dimension tables optimized for business intelligence.  
4. **Analytics & Reporting**: Development of SQL-based queries and dashboards for generating insights.

 Ideal for professionals and students looking to demonstrate skills in:
- SQL Development  
- Data Architecture  
- Data Engineering  
- ETL Development  
- Dimensional Modeling  
- Business Analytics  

---

##  Tools & Resources

All tools used are freely available:

- **[Datasets](datasets/):** Access raw CSV files used as input data.  
- **[SQL Server Express](https://www.microsoft.com/en-us/sql-server/sql-server-downloads):** Lightweight SQL server for local data warehousing.  
- **[SQL Server Management Studio (SSMS)](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16):** GUI for managing databases.  
- **[GitHub](https://github.com/):** Version control and collaboration.  
- **[DrawIO](https://www.drawio.com/):** Create architecture diagrams, flows, and models.  
- **[Notion](https://www.notion.com/):** Organize project documentation and tasks.  


---

##  Visuals & Diagrams

###  ETL Data Flow  
Visual representation of the complete ETL pipeline:
![ETL Data Flow](docs/data_flow.png)

###  Schema Design  
Star schema diagram for fact and dimension tables:
![Data Schema](docs/data_models.png)

###  Data Integration Overview  
High-level overview of how ERP and CRM data sources are unified:
![Data Integration](docs/data_integration.png)

---

##  Project Requirements

### Building the Data Warehouse (Data Engineering)

#### Objective  
Design and implement a SQL Server-based data warehouse that integrates and consolidates sales-related data for analysis.

#### Specifications  
- **Data Sources**: Import ERP and CRM datasets from CSV files.  
- **Data Quality**: Perform data cleaning and resolve quality issues before transformation.  
- **Data Integration**: Merge both source systems into a unified data model suitable for analytics.  
- **Scope**: Only the most recent dataset is considered; no need for historical tracking.  
- **Documentation**: Provide complete and accessible documentation for both technical and business users.  

---

### BI: Analytics & Reporting (Data Analysis)

#### Objective  
Use SQL to generate insights into:

- **Customer Behavior**  
- **Product Performance**  
- **Sales Trends**  

These analytics help stakeholders access reliable business metrics for strategic and operational decision-making.

##  Repository Structure
```
data-warehouse-project/
│
├── datasets/                           # Raw datasets used for the project (ERP and CRM data)
│
├── docs/                               # Project documentation and architecture details
│   ├── etl.drawio                      # Draw.io file shows all different techniquies and methods of ETL
│   ├── data_architecture.drawio        # Draw.io file shows the project's architecture
│   ├── data_catalog.md                 # Catalog of datasets, including field descriptions and metadata
│   ├── data_flow.drawio                # Draw.io file for the data flow diagram
│   ├── data_models.drawio              # Draw.io file for data models (star schema)
│   ├── naming-conventions.md           # Consistent naming guidelines for tables, columns, and files
│
├── scripts/                            # SQL scripts for ETL and transformations
│   ├── bronze/                         # Scripts for extracting and loading raw data
│   ├── silver/                         # Scripts for cleaning and transforming data
│   ├── gold/                           # Scripts for creating analytical models
│
├── tests/                              # Test scripts and quality files
│
├── README.md                           # Project overview and instructions
├── LICENSE                             # License information for the repository
├── .gitignore                          # Files and directories to be ignored by Git
└── requirements.txt                    # Dependencies and requirements for the project
```
---

## Acknowledgments

Special thanks to **Baraa Khatib Salkini**, an IT professional and YouTuber with channel [Data with Baraa](https://www.youtube.com/@DatawithBaraa), whose video tutorial [**"SQL Data Warehouse Project"**](https://www.youtube.com/watch?v=9GVqKuTVANE&list=PLNcg_FV9n7qZ4Ym8ZriYT6WF8TaC2e_R7) provided valuable guidance throughout the development of this project.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
