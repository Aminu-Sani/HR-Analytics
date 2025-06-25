/*
-- Query: select MaritalStatus,
  count(case when Attrition = "Yes" then 1
  end) * 100.00 / count(*) as Attrition
  from  hr_analytics.`hr raw data csv`
  group by MaritalStatus
LIMIT 0, 1000

-- Date: 2025-06-16 06:33
*/
INSERT INTO `` (`MaritalStatus`,`Attrition`) VALUES (Single,25.531915);
INSERT INTO `` (`MaritalStatus`,`Attrition`) VALUES (Married,12.481426);
INSERT INTO `` (`MaritalStatus`,`Attrition`) VALUES (Divorced,10.091743);
