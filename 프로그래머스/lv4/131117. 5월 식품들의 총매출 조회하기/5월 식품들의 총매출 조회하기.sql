-- 코드를 입력하세요
select a.product_id, a.product_name, (a.price * b.amount) as total_sales
from food_product a join (select product_id, sum(amount) as amount
                          from food_order
                          where year(produce_date) = 2022 and month(produce_date) = 5
                          group by product_id) b
on a.product_id = b.product_id
order by total_sales desc, product_id


