-- UNION, EXCEPT, UNION ALL --
-- combining/comparing two or more result sets that may or may not have anything in common

/*
Union
1,2,3,4,5 6,7,8,9,10
union
8,9,10,11,12,13,14,15
=
1,2,3,4,5 6,7,8,9,10,11,12,13,14,15

UNION ALL = 1,2,3,4,5 6,7,8,9,10, 8,9, 10, 11,12,13,14,15

1,2,3,4,5 6,7,8,9,10
except
8,9,10,11,12,13,14,15
= 1,2,3,4,5,6,7

*/
--set of unrelated information
--must have same number of columns
select Email, 'Employee' as [type]
from Employee
union all
select Email, 'Customer'
from Customer

select ArtistId
from Artist a
except
select ArtistId
from Album

