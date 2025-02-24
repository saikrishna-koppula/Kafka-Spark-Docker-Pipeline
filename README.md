## Note: This is my current project. So the latest implementation may not be pushed to the Docker yet. Please reach out to me if you'd like to discuss the current status of the project. 

# Stremaing Pipeline

## Table of Content
- [Ideas](#Ideas)
- [Architecture Overview](#architecture-overview)

## Ideas
    Points we need to think:
    Architecture for the project
    If the basic idea is Data ETL and then Data Analysis, then what kind of data we are going to use, and what kind of analysis we are going to perform? This will define what kind of data we need to be producing, what model we want to use, and how we will be transforming our data.
    How we shall produce the data once the data required is identified.

## Architecture Overview

The streaming pipeline architecture consists of several interconnected components, each responsible for a specific function within the data lifecycle. Below is an overview of the architecture:

1. **Data Ingestion**
   - **Apache Kafka:** Acts as the central messaging system, ingesting real-time data from various sources.
   - **Kafka Connect & Producers:** Facilitate seamless data integration from external systems into Kafka topics.

2. **Stream Processing**
   - **Apache Spark:** Processes the incoming data streams, performing transformations, aggregations, and real-time analytics.

3. **Data Management**
   - **Apache Hudi:** Manages the processed data, enabling efficient upserts, deletes, and ensuring ACID transactions for data consistency.

4. **Data Storage**
   - **MinIO:** Serves as the scalable and high-performance object storage backend, storing the Hudi-managed datasets.

5. **Monitoring**
   - **Prometheus:** Collects and stores metrics from all pipeline components, providing insights into performance and health.

6. **Visualization**
   - **Grafana:** Connects to Prometheus to visualize metrics through customizable dashboards and real-time monitoring.

7. **Data Catalogue**
   - **Apache Atlas:** Catalogs data assets, tracks data lineage, and enforces data governance policies.
  

**Current Action Items:**
- The basic idea of the process is to
    - have Python pull data from API and then have it produce to Kafka,
    - have spark consume data from Kafka, process data
    - then try to store data in influx DB 
    - then have the Grafana dashboard display this in terms of charts.
