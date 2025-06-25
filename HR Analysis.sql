/* SQL Business Unit Questions:
 1. What is the total headcount of employees in each Department?
 2. What is the average number of YearsSinceLastPromotion per BusinessTravel category?
 3. What is the Attrition rate by MaritalStatus?
 4. What is the average MonthlyIncome of employees who have a StockOptionLevel of 1 or higher?
 5. Which 3 JobRoles have the highest average YearsAtCompany
 */
 SELECT * FROM hr_analytics.`hr raw data csv`;
 
  /*1. What is the total headcount of employees in each Department?*/
  
  select Department, count(*) as Headcount
  from hr_analytics.`hr raw data csv`
  group by department;
  
/*  2. What is the average number of YearsSinceLastPromotion per BusinessTravel category? */

select BusinessTravel, avg(YearsSinceLastPromotion)
from hr_analytics.`hr raw data csv`
group by BusinessTravel;

/* 3. What is the Attrition rate by MaritalStatus? */

  select MaritalStatus,
  count(case when Attrition = "Yes" then 1
  end) * 100.00 / count(*) as Attrition
  from  hr_analytics.`hr raw data csv`
  group by MaritalStatus;
 
 /*4. What is the average MonthlyIncome of employees who have a StockOptionLevel of 1 or higher?*/
 
 select avg(MonthlyIncome) as AvgMonthlyIncome
 from hr_analytics.`hr raw data csv`
 where StockOptionLevel >= 1;
 
 /* 5. Which 3 JobRoles have the highest average YearsAtCompany*/
 
 select JobRole, avg(YearsAtCompany) as AvgYearsAtCompany
 from hr_analytics.`hr raw data csv`
 group by JobRole
 order by AvgYearsAtCompany Desc
 limit 3;
 
 