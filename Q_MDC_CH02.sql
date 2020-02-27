select CUSTOMER.LastName, CUSTOMER.FirstName, CUSTOMER.Phone 
from CUSTOMER, INVOICE,INVOICE_ITEM
where CUSTOMER.CustomerID=INVOICE.CustomerID and INVOICE.InvoiceNumber=INVOICE_ITEM.InvoiceNumber
and INVOICE_ITEM.Item='Dress Shirt'
order by CUSTOMER.LastName ASC, CUSTOMER.FirstName DESC