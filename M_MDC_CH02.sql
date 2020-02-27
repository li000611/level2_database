select CUSTOMER.LastName, CUSTOMER.Firstname, CUSTOMER.Phone
from CUSTOMER
where CUSTOMER.CustomerID IN(
select INVOICE.CustomerID from INVOICE where TotalAmount > '100')
order by CUSTOMER.LastName ASC, CUSTOMER.FirstName DESC