select FirstName, LastName, CustomerId, Country from Customer
where country != 'USA'
order by Country, LastName, FirstName;