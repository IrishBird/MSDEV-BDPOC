# Merkle GDC DEV BigData POC

### Table of Contents

* <a href="#Goal">Goal</a>
* <a href="#Architecture">Architecture</a>
* <a href="#Data Flow">Data Flow</a>
    * <a href="#Batch Processing">Batch Processing</a>
    * <a href="#Streaming Processing">Streaming Processing</a>
* <a href="#RADAR Scope">RADAR Scope</a>
* <a href="#RDD Operation">RDD Operation</a>
* <a href="#RADAR Lab Environment">RADAR Lab Environment</a>
   * <a href="#Cluser Information">Cluser Information</a>
   * <a href="#Cluster Service Matrix">Cluster Service Matrix</a>
   * <a href="#Service Web UIs">Service Web UIs</a>


---

<a name="Goal"></a>


## Goal
Goal Phase I (Duration: Start from 2/27/2017 to ??):
* Work out a stable and efficient solution for batch load based on SparkSQL.
* Implement one typical fact table using SparkSQL, and test performance

Goal Phase II 


<a name="Architecture"></a>
## Architecture
### Batch Processing
![Batch Processing](./images/batching_architecture.jpg)

<a name="Data Flow"></a>
## Data Flow
In this section, we will explain overall data flow for both batch and streaming processing.
<a name="Batch Processing"></a>
### Batch Processing
The following diagram illustrates overall data flow of data ingesting and processing. First, data will be derived from external RDBMS or file systems by Apache Sqoop or customed program, and then loaded to HDFS (Step1). Hive external table points to these HDFS files loaded from external systems. Second, user invokes Spark job. Spark job will be initialized Spark driver which interacts with Yarn resource manager and allocates Spark executors and schedules Spark tasks (Step 2) and retrieves Hive meta store (Step 3). Spark tasks will be executed over Yarn nodes, and they read data from Hive staging/archiving table (Step 4) and process and loaded back to Hive integrated table (Step 5). Similarly with procesing Hive exteranl table, data will be read (Step 8), processed and loaded into (Step 9). In the end, data in Hive reporting table will be copied to Vertica table through HDFS connector.

<a name="Scope"></a>
## Scope


<a name="Lab Environment"></a>
## Lab Environment

<a name="Cluser Information"></a>
### Cluser Information

ServerName|	Internal IP|	EIP|	External SSH|	OS	Disk|	Memory
----------|------------|------|--------------|---------|



<a name="Cluster Service Matrix"></a>
### Cluster Service Matrix


<a name="Service Web UIs"></a>
### Service Web UIs
Service Name | Server name		| URLs
-------------|----------------|-----------
Hadoop HFDS| hadoopmaster	|[HDFS](http://16.152.119.10:50070/dfshealth.html)
Hadoop Yarn| hadoopmaster	| [Yarn](http://16.152.119.10:8088/)
Apache Hue| hadoopmaster	|[Apache Hue](http://16.152.119.10:8000/beeswax)
Apache Oozie| hadoopslave3	|[Apache Oozie](http://16.152.119.13:11000/oozie/)
Spark History Service| hadoopmaster	|[Apache Spark History Service](http://16.152.119.10:18080/)
Apache Airflow| hadoopslave1	|[Apache Airflow](http://16.152.119.8:4080/)
Apache Nifi| hadoopslave3	|[Apache Nifi](http://16.152.119.13:8880/nifi/)

