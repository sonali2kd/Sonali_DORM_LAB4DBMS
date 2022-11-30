select count(t2.CUS_GENDER) as NoOfCustomers, t2.CUS_GENDER from 
(select t1.CUS_ID, t1.CUS_GENDER, t1.ORD_AMOUNT, t1.CUS_NAME from 
(select `order`.*, customer.CUS_GENDER, customer.CUS_NAME from `order` inner join customer where `order`.CUS_ID = customer.CUS_ID having `order`.ORD_AMOUNT>=3000)
as t1 group by t1.CUS_ID) as t2 group by t2.CUS_GENDER;