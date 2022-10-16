-- Cleansed DIMCustomer Table--
SELECT 
  cus.CustomerKey AS [Customer Key], 
  --cus.GeographyKey, 
  --[CustomerAlternateKey], 
  --[Title],
  cus.FirstName AS [First Name], 
  --[MiddleName], 
  cus.LastName AS [Last Name], 
  --[NameStyle], 
  --[BirthDate], 
  --[MaritalStatus], 
  --[Suffix], 
  CASE cus.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  --[EmailAddress], 
  --[YearlyIncome], 
  --[TotalChildren], 
  --[NumberChildrenAtHome], 
  --[EnglishEducation], 
  --[SpanishEducation], 
  --[FrenchEducation], 
  --[EnglishOccupation], 
  --[SpanishOccupation], 
  --[FrenchOccupation], 
  --[HouseOwnerFlag], 
  --[NumberCarsOwned], 
  --[AddressLine1], 
  --[AddressLine2], 
  --[Phone], 
  cus.DateFirstPurchase AS [Date First Purchase],
  --[CommuteDistance]
  geo.city AS [Customer City] -- Add Customer city from the DimGeography table
FROM
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS cus
  LEFT JOIN AdventureWorksDW2019.dbo.dimgeography AS geo ON geo.GeographyKey = cus.GeographyKey
ORDER BY
  CustomerKey ASC -- Ordered List by Customer Key (Ascending)