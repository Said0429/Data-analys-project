SELECT c.customerkey as CustomerKey
      ,c.firstname as [First Name]
      ,c.lastname as [LastName]
	  ,c.firstname + ' ' + lastname as [Full Name],
CASE c.gender 
	WHEN 'M' THEN 'Male' 
	WHEN 'F' THEN 'Female' 
	END AS Gender
      ,c.datefirstpurchase as DateFirstPurchase
	  ,g.city as [Customer City]
FROM dbo.DimCustomer as c
LEFT JOIN dbo.dimgeography as g on g.geographykey = c.geographykey
ORDER BY 
CustomerKey asc;

