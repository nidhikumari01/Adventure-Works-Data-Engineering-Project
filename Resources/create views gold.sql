------------------------------
-----CREATE VIEW CALENDAR------ 
------------------------------

CREATE VIEW gold.calendar
AS
SELECT * FROM OPENROWSET(
    BULK 'https://awst.blob.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'

) AS query1

------------------------------
----CREATE VIEW Customers----- 
------------------------------

CREATE VIEW gold.customers
AS
SELECT
*

FROM OPENROWSET(
    BULK 'https://awst.blob.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'

) AS query1


------------------------------
----CREATE VIEW Products------ 
------------------------------

CREATE VIEW gold.products
AS
SELECT
*

FROM OPENROWSET(
    BULK 'https://awst.blob.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'

) AS query1


------------------------------
----CREATE VIEW Returns ------ 
------------------------------

CREATE VIEW gold.returns
AS
SELECT
*

FROM OPENROWSET(
    BULK 'https://awst.blob.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'

) AS query1


------------------------------
----CREATE VIEW Sales ------ 
------------------------------

CREATE VIEW gold.sales
AS
SELECT
*

FROM OPENROWSET(
    BULK 'https://awst.blob.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'

) AS query1


------------------------------
----CREATE VIEW Territories ------ 
------------------------------

CREATE VIEW gold.territories
AS
SELECT
*

FROM OPENROWSET(
    BULK 'https://awst.blob.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'

) AS query1


------------------------------
----CREATE VIEW Product_Subcategories ------ 
------------------------------

CREATE VIEW gold.Subcategories
AS
SELECT
*

FROM OPENROWSET(
    BULK 'https://awst.blob.core.windows.net/silver/Product_Subcategories/',
    FORMAT = 'PARQUET'

) AS query1