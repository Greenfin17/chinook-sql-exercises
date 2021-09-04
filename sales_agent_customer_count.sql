select EM.FirstName + ' ' + EM.LastName as [Employee], count(distinct(C.FirstName + ' ' + C.LastName)) as [Customers]
from Employee EM
	join Customer C
		on C.SupportRepId = EM.EmployeeId
group by EM.FirstName, EM.LastName
Order by EM.LastName

