
/*

Order Details
https://platform.stratascratch.com/coding/9913-order-details?code_type=3


Difficulty: Easy

Find order details made by Jill and Eva.
Consider the Jill and Eva as first names of customers.
Output the order date, details and cost along with the first name.
Order records based on the customer id in ascending order.
Tables:

<customers>

| Column       | Data Type  |
|--------------|------------|
| id           | int        |
| first_name   | varchar    |
| last_name    | varchar    |
| city         | varchar    |
| address      | varchar    |
| phone_number | varchar    |


<orders>

| Column             | Data Type  |
|--------------------|------------|
| id                 | int        |
| cust_id            | int        |
| order_date         | datetime   |
| order_details      | varchar    |
| total_order_cost   | int        |


*/

select c.first_name, o.order_date, o.order_details, o.total_order_cost
from customers c
JOIN orders o
ON c.id = o.cust_id
where c.first_name = "Eva" OR "Jill"
ORDER BY cust_id;
