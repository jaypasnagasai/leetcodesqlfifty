-- 1907. Count Salary Categories

SELECT 
  'Low Salary' as category, count(*) as accounts_count
FROM Accounts
WHERE income<20000

UNION

SELECT 
  'Average Salary' as category, count(*) as accounts_count
FROM Accounts
WHERE income>=20000 and income<=50000

UNION

SELECT 
  'High Salary' as category, count(*) as accounts_count
FROM Accounts
WHERE income>50000
