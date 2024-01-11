SELECT * FROM sales.transactions;

select count(*) from transactions;

select distinct currency from transactions;

select currency,count(*) from transactions group by currency;

select * from transactions where market_code='Mark001';

select sum(sales_amount)from transactions where market_code='Mark001';


select distinct product_code from transactions where market_code='Mark001';

select * from transactions where currency='USD';

select sum(t.sales_amount), d.year
from transactions as t
inner join date as d
on t.order_date=d.date
where d.year ='2020';

select sum(t.sales_amount), d.year,d.month_name
from transactions as t
inner join date as d
on t.order_date=d.date
where d.year ='2020' and d.month_name='January';

select sum(t.sales_amount),t.market_code, d.year
from transactions as t
inner join date as d
on t.order_date=d.date
where d.year ='2020' and t.market_code= 'Mark001';

