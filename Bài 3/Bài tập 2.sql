insert into customer (cName, cAge)
value ('Minh Quan', 10),
      ('Ngoc Oanh', 20),
      ('Hong Ha', 50); 
      
insert into orders (cID, oDate, oTotalPrice)
value (1, '2006-03-21', null),
      (2, '2006-03-23', null),
      (1, '2006-03-16', null);
      
insert into product (pName, pPrice)
value ('May Giat', 3),
      ('Tu Lanh', 5),
      ('Dieu Hoa', 7),
      ('Quat', 1),
      ('Bep Dien', 2);


select orders.oID, orders.oDate, orders.oTotalPrice from orders;  

select customer.cName, product.pName from orderdetail
join orders on orders.oID = orderdetail.oID
join customer on customer.cID = orders.cID
join product on product.pID = orderdetail.pID;

select customer.cID, customer.cName from customer
where customer.cID not in (select orders.cID from orders);
     
select orders.oID, orders.oDate, sum(product.pPrice * orderdetail.odQTY) as oTotalPrice
from orders join product join orderdetail
where orders.oID = orderdetail.oID and orderdetail.pID = product.pID
group by oID;
