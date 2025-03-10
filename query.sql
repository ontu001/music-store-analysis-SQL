--Question set 1
/*Q1:Who is the senior most employee based on job title? */

select * from employee
order by levels desc --sort data based on level
limit 1 -- to fin the top most senior



/*Q2: Which countries have the most Invoices?*/

select count(*) as countt, billing_country
from invoice
group by billing_country 
order by countt desc




/*Q3: What are top 3 values of total invoice?*/

select total
from invoice
order by total desc
limit 3




/*Q4: Which city has the best customers? We would like to throw a promotional Music
Festival in the city we made the most money. Write a query that returns one city that
has the highest sum of invoice totals. Return both the city name & sum of all invoice
totals.*/

select sum(total) as invoice_total, billing_city
from invoice
group by billing_city
order by invoice_total desc





/*Q5: Who is the best customer? The customer who has spent the most money will be
declared the best customer. Write a query that returns the person who has spent the
most money.*/

select customer.customer_id, customer.first_name, customer.last_name , 
sum(invoice.total) as total_spend 
from customer
join invoice on customer.customer_id = invoice.customer_id --join customer and invoice table based on customer_id
group by customer.customer_id
order by total_spend desc
limit 1








--Question set 2
