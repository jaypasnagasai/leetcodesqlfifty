-- 176. Second Highest Salary

select max(salary) AS SecondHighestSalary from employee where salary not in (select max(salary) from employee)
