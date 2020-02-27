select CUSTOMER.LastName, CUSTOMER.FirstName, CUSTOMER.Phone 
from CUSTOMER
where CUSTOMER.CustomerID in (select INVOICE.CustomerID from INVOICE 
JOIN INVOICE_ITEM ON INVOICE_ITEM.InvoiceNumber=INVOICE.InvoiceNumber
where INVOICE_ITEM.Item='Dress Shirt')
order by CUSTOMER.LastName ASC, CUSTOMER.FirstName DESC