select EM.FirstName, EM.LastName, InvoiceId, InvoiceDate from
Customer as CM
inner join
Invoice as IV
On CM.CustomerId = IV.CustomerId
inner join Employee as EM
On CM.SupportRepId = EM.EmployeeId
Order by EM.LastName, IV.InvoiceDate;
