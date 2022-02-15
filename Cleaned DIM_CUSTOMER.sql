SELECT 
  a.[CustomerKey], 
  a.FirstName [First Name], 
  a.LastName [Last Name], 
  a.FirstName + ' ' + a.LastName as [Full Name], 
  case a.gender when 'M' then 'Male' when 'F' then 'Female' end as Gender, 
  a.DateFirstPurchase as DateFirstPurchase, 
  b.City as [Customer CIty] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] a 
  left join AdventureWorksDW2019..DimGeography b on a.geographykey = b.geographykey




