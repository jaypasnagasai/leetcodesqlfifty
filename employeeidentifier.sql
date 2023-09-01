-- 1378. Replace Employee ID With The Unique Identifier

SELECT eu.unique_id AS unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI eu USING(id)
