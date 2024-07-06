select * from Reserve;


select count(*) AS total_reservations from Reserve;


SELECT type_of_meal_plan, COUNT(*) AS count
FROM Reserve
GROUP BY type_of_meal_plan
ORDER BY count DESC
LIMIT 1;



select no_of_children, avg_price_per_room from reserve
where no_of_children != 0;




SELECT COUNT(*) AS total_reservations_in_2018
FROM reserve
WHERE YEAR(STR_TO_DATE(arrival_date, '%Y-%m-%d')) = 2018;


SELECT room_type_reserved, COUNT(*) AS count
FROM Reserve
GROUP BY room_type_reserved
ORDER BY count DESC
LIMIT 1;



select  count(*) As Week_End_Reservation
from reserve 
where no_of_weekend_nights > 0;


SELECT MAX(lead_time) AS highest_lead_time, MIN(lead_time) AS lowest_lead_time
FROM reserve;




select market_segment_type , count(*) As count 
from reserve
group by market_segment_type
order by count DESC
limit 1;



select count(*) As cout_of_confirmed_reservations
from reserve
where booking_status = "Confirmed";



select sum(no_of_adults) As No_of_Adults , sum(no_of_children) As No_Of_Children
from reserve;

select avg(no_of_weekend_nights) as Averege_Weekend_Nights_with_children 
from reserve
where no_of_children > 1;



SELECT MONTH(STR_TO_DATE(arrival_date, '%Y-%m-%d')) AS month, COUNT(*) AS reservations_by_month
FROM reserve
GROUP BY MONTH(STR_TO_DATE(arrival_date, '%Y-%m-%d'))
ORDER BY month;



select room_type_reserved , sum(no_of_weekend_nights + no_of_week_nights) As Total_Nights_Spent
from reserve
Group by room_type_reserved;






select room_type_reserved , avg(avg_price_per_room) As Average_Room_Price, count(*) As Count_Most_Common_with_children
from reserve
where no_of_children > 0
group by room_type_reserved
order by Count_Most_Common_with_children desc 
limit 1 ;










select market_segment_type , max(avg_price_per_room) As Highest_AVG_Price
from reserve
group by market_segment_type
order by Highest_AVG_Price desc
limit 1;





