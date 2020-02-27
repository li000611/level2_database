select CUSTOMER.LastName, CUSTOMER.FirstName, CUSTOMER.Phone 
from CUSTOMER
where CUSTOMER.CustomerID in 
(select INVOICE.CustomerID from INVOICE 
where INVOICE.InvoiceNumber in (
select INVOICE_ITEM.InvoiceNumber from INVOICE_ITEM
where INVOICE_ITEM.Item='Dress Shirt'))
order by CUSTOMER.LastName asc, CUSTOMER.FirstName desc