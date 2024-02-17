SELECT [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      ,[SalesOrderNumber]
      ,[SalesAmount]
FROM [dbo].[FactInternetSales]
WHERE	LEFT (OrderDatekey,4) >= YEAR(GETDATE()) -12
ORDER BY OrderDateKey asc