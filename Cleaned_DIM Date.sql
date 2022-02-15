--Cleaned DIM_Date
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date -- ,[DayNumberOfWeek]
  , 
  [EnglishDayNameOfWeek] as Day --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  , 
  [WeekNumberOfYear] As WeekNR, 
  [EnglishMonthName] As Month --,[SpanishMonthName]
  , 
  LEFT([EnglishMonthName], 3) as MonthShort --,[FrenchMonthName]
  , 
  [MonthNumberOfYear] As MonthNo, 
  [CalendarQuarter] As Quarter, 
  [CalendarYear] --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
  where
  CalendarYear  >= 2019
