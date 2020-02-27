select CUSTOMER.LastName, CUSTOMER.Firstname, CUSTOMER.Phone
from CUSTOMER
join INVOICE ON CUSTOMER.CustomerID = INVOICE.CustomerID
where INVOICE.TotalAmount > '100'
order by CUSTOMER.LastName ASC, CUSTOMER.FirstName DESC

