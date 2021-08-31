select FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry
from Customer as BC
inner join 
Invoice as IV
on BC.CustomerId = IV.CustomerId
where BC.Country = 'Brazil'
order by LastName, FirstName;
