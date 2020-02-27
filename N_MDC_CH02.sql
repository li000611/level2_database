
select CUSTOMER.LastName, CUSTOMER.FirstName, CUSTOMER.Phone 
from CUSTOMER, INVOICE
where CUSTOMER.CustomerID=INVOICE.CustomerID
and INVOICE.TotalAmount>100
order by CUSTOMER.LastName ASC, CUSTOMER.FirstName DESC

