--CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'password'--

CREATE DATABASE SCOPED CREDENTIAL cred_nidhi

WITH
    IDENTITY = 'Managed Identity'


CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://awst.blob.core.windows.net/silver',
    CREDENTIAL = cred_nidhi
)


CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://awst.blob.core.windows.net/gold',
    CREDENTIAL = cred_nidhi
)


CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)


--------------------------------------
-- create external table extsales---
--------------------------------------
CREATE EXTERNAL TABLE gold.extsales
WITH(

    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS 
SELECT * FROM gold.sales

SELECT * FROM gold.extsales


