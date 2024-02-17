SELECT p.[ProductKey]
      ,p.[ProductAlternateKey] as ProductItemCode
      ,p.[EnglishProductName] as [ProductName]
	  ,ps.[EnglishProductSubcategoryName] as[Sub Category]
	  ,pc.EnglishProductCategoryName as [Product Category]
      ,p.[Color] as [Product Color]
      ,p.[Size] as [Product Size]
      ,p.[ProductLine] as [Product Line]
      ,p.[ModelName] as [Product Model Name]
      ,p.[EnglishDescription] as [Product Description],
ISNULL(p.[Status],'Outdated') as [Product Status]
FROM [dbo].[DimProduct] as p
LEFT JOIN dbo.DimProductSubcategory as ps on ps.ProductSubcategoryKey = p.ProductSubcategoryKey
LEFT JOIN dbo.DimProductCategory as pc on ps.ProductCategoryKey = pc.ProductCategoryKey
ORDER BY p.ProductKey asc