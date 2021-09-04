select Invoice.Total, concat(Customer.FirstName, ' ', Customer.LastName) as [Customer Name], 
Invoice.BillingCountry, 
concat(Employee.FirstName, ' ',  Employee.LastName) as [Employee Name]
from Invoice join Customer on Invoice.CustomerId = Customer.CustomerId
join Employee on Customer.SupportRepId = Employee.EmployeeId
order by Customer.LastName, Customer.FirstName