select EM.FirstName, EM.LastName, InvoiceDate from
Customer as CM
inner join
Invoice as IV
on CM.CustomerId = IV.CustomerId
inner join Employee as EM
on CM.SupportRepId = EM.EmployeeId
order by EM.LastName, IV.InvoiceDate;
