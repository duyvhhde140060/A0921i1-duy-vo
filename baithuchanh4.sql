use classicmodels;
create view customer_view AS
SELECT customerNumber, customerName, phone

FROM  customers;
select * from customer_view;