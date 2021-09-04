select sum(case when year(Invoice.InvoiceDate) = '2009' then 1 else 0 end) as [Invoices 2009],
	   sum(case when year(Invoice.InvoiceDate) = '2011' then 1 else 0 end) as [Invoices 2011]
 from Invoice