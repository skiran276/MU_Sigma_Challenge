use AdventureWorks2019
SELECT * FROM HumanResources.Employee;
SELECT * FROM HumanResources.EmployeePayHistory;
SELECT * FROM HumanResources.EmployeeDepartmentHistory;
SELECT * FROM HumanResources.Department;
select top 1 year(doj), month(doj), count(*)
from employee
group by year(doj), month(doj)
order by count(*) desc;
 1)
select month (convert (datetime,[HireDate],101)) AS join_month,COUNT([NationalIDNumber])
as employees_joined
from[AdventureWorks2019].[HumanResources].[Employee]
GROUP by month(convert(datetime,[HireDate],101))


)

--2
SELECT distinct EmployeeDepartmentHistory.DepartmentId,Department.NAME,EmployeeDepartmentHistory.BusinessEntityID as no_of_employee_hire
from[AdventureWorks2019].[HumanResources].[EmployeeDepartmentHistory] 
JOIN [AdventureWorks2019].[HumanResources].[Department]
on EmployeeDepartmentHistory.DepartmentId=Department.DepartmentId