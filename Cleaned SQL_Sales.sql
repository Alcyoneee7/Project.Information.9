/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
  [ProductKey], 
  OrderDateKey, 
  DueDateKey, 
  ShipDateKey, 
  CustomerKey, 
  SalesOrderNumber, 
  SalesAmount 
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales] 
where 
  LEFT(OrderDateKey, 4) >= YEAR(
    GETDATE()
  ) -2 
order by 
  OrderDateKey asc
