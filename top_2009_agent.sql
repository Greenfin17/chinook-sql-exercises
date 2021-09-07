select top(1) EM.FirstName, EM.LastName, count(distinct(IV.InvoiceId)) as [Invoices], format(sum(IL.Quantity * IL.UnitPrice), 'C') as [Total Sales] from
Customer as CM
	join Invoice as IV
		on CM.CustomerId = IV.CustomerId
	join Employee as EM
		on CM.SupportRepId = EM.EmployeeId
	join InvoiceLine as IL
		on IL.InvoiceId = IV.InvoiceId
where year(IV.InvoiceDate) = '2009'
group by EM.LastName, EM.FirstName, IL.Quantity
order by [Total Sales] DESC
