-- 코드를 입력하세요
select hour(datetime) as hour, count(datetime) as count
from animal_outs
where hour(datetime) between 9 and 19
group by hour
order by hour