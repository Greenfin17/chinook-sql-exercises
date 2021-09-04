select format(sum(case when year(Invoice.InvoiceDate) = '2009' then Invoice.Total else 0 end), 'C') as [Invoices 2009],
	   format(sum(case when year(Invoice.InvoiceDate) = '2011' then Invoice.Total else 0 end), 'C') as [Invoices 2011]
 from Invoice