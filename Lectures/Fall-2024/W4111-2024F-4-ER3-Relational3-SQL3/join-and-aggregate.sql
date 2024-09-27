use classicmodels;

with one as (
    select
        customers.customerName, customers.customerNumber,
        orderNumber
    from
        customers left join classicmodels.orders  on customers.customerNumber = orders.customerNumber
)
select * from one
order by orderNumber;

/*
 Count the number of orders.

 You will see that this is not quite right.

 It counts the NULL row as an order.
 */
with one as (
    select
        customers.customerName, customers.customerNumber,
        orderNumber
    from
        customers left join classicmodels.orders  on customers.customerNumber = orders.customerNumber
)
select customerName, customerNumber,  count(*) as number_of_orders from one
group by customerName, customerNumber
order by number_of_orders;

/*
 We could do this, but it is kind of weird.
 */
with one as (
    select
        customers.customerName, customers.customerNumber,
        orderNumber, if(orderNumber is null, 0, 1) as cnt
    from
        customers left join classicmodels.orders  on customers.customerNumber = orders.customerNumber
)
select customerName, customerNumber,  sum(cnt) as number_of_orsers from one
group by customerName, customerNumber
order by number_of_orsers;

/*
    This is more natural.
*/
with one as (
    select customerNumber, count(*) as no_of_orders
        from orders group by customerNumber
)
select
    customerName, customerNumber, ifnull(no_of_orders, 0) as no_of_orders
from
    customers left join one using(customerNumber)
order by no_of_orders;