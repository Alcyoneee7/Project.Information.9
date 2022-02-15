SELECT 
  a.ProductKey, 
  a.ProductAlternateKey as ProductItemCode, 
  a.EnglishProductName as [Product Name], 
  b.EnglishProductSubcategoryName as [Sub Category], 
  c.EnglishProductCategoryName [Product Category], 
  a.Color as [Product Color], 
  a.Size [Product Size], 
  a.ProductLine [Product Line], 
  a.ModelName [ Product Model Name], 
  a.EnglishDescription [Product Description], 
  ISNULL (a.status, 'Outdated') as [Product Status] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] a 
  left join DimProductSubcategory b on a.ProductSubcategoryKey = b.ProductSubcategoryKey 
  left join DimProductCategory c on b.ProductCategoryKey = c.ProductCategoryKey

