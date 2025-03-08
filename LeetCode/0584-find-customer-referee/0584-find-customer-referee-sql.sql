# Write your MySQL query statement below
select name
from Customer
where coalesce(referee_id,'') <>'2'

# IFNULL(referee_id, '') <> '2' -MySQL만 가능