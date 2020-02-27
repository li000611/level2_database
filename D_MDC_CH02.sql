select CUSTOMER.LastName, CUSTOMER.FirstName, CUSTOMER.Phone, INVOICE.DateIn, INVOICE.DateOut
from CUSTOMER join INVOICE on CUSTOMER.CustomerID = INVOICE.CustomerID
where INVOICE.TotalAmount > 100
