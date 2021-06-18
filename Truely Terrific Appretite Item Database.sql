use Truely_Terrific_Appetite_By_Francesca_Worsnop;

create table Item(ItemID varchar(100) primary key, Dish varchar(100), Price double, Category varchar(100));

insert into Item(ItemID, Dish, Price, Category) values('B101', 'KEJRIWAL', 7.50, 'Breakfast');
insert into Item(ItemID, Dish, Price, Category) values('B102', 'PARSI OMELETTEL', 7.90, 'Breakfast');
insert into Item(ItemID, Dish, Price, Category) values('B103', 'AKURI', 7.50, 'Breakfast');
insert into Item(ItemID, Dish, Price, Category) values('B104', 'WRESTLERS NAAN ROLL', 9.90, 'Breakfast');
insert into Item(ItemID, Dish, Price, Category) values('B105', 'SWEET UTTAPAM STACK', 8.50, 'Breakfast');
insert into Item(ItemID, Dish, Price, Category) values('S101', 'KHICHIA & CHUNDO', 2.90, 'Small Plate');
insert into Item(ItemID, Dish, Price, Category) values('S102', 'LAMB SAMOSAS', 5.50, 'Small Plate');
insert into Item(ItemID, Dish, Price, Category) values('S103', 'OKRA FRIES', 4.90, 'Small Plate');
insert into Item(ItemID, Dish, Price, Category) values('G101', 'MURGH MALAI', 9.70, 'Grill');
insert into Item(ItemID, Dish, Price, Category) values('G102', 'PANEER PINEAPPLE TIKKA', 9.20, 'Grill');
insert into Item(ItemID, Dish, Price, Category) values('G103', 'MASALA PRAWNS', 12.90, 'Grill');
insert into Item(ItemID, Dish, Price, Category) values('M101', 'CHICKEN BERRY BRITANNIA', 12.50, 'Main');
insert into Item(ItemID, Dish, Price, Category) values('M102', 'JACKFRUIT BIRYANI', 12.50, 'Main');
insert into Item(ItemID, Dish, Price, Category) values('D101', 'KALA KHATTA GOLA ICE', 3.70, 'Dessert');
insert into Item(ItemID, Dish, Price, Category) values('D102', 'GULAB JAMUN', 6.20, 'Dessert');
insert into Item(ItemID, Dish, Price, Category) values('D103', 'BASMATI KHEER', 5.90, 'Dessert');
select * from Item;




update Item set Price = '7.50' where ItemID = 'B101';
update Item set Price = '7.50' where ItemID = 'B103';
update Item set Price = '9.90' where ItemID = 'B104';
update Item set Price = '8.50' where ItemID = 'B105';

update Item set Price = '2.90' where ItemID = 'S101';
update Item set Price = '5.50' where ItemID = 'S102';
update Item set Price = '4.90' where ItemID = 'S103';

update Item set Price = '9.70' where ItemID = 'G101';
update Item set Price = '9.20' where ItemID = 'G102';
update Item set Price = '12.90' where ItemID = 'G103';

update Item set Price = '12.50' where ItemID = 'M101';
update Item set Price = '12.50' where ItemID = 'M102';

update Item set Price = '3.70' where ItemID = 'D101';
update Item set Price = '6.20' where ItemID = 'D102';
update Item set Price = '5.90' where ItemID = 'D103';

create table COrder(OrderID int primary key auto_increment,
                    Cname varchar(100), CPhone varchar(100), 
                    CAddress varchar(100), 
                    ItemID varchar(100), 
                    foreign key (ItemID) references Item(ItemID),
                    QTY int, 
                    Total double, 
                    Date varchar(100));
                    
/*Dishes from Breakfast category*/                    
select * from Item where Category like 'B%';

/*Dishes from Small Plate category*/                    
select * from Item where Category like 'S%';

/*Dishes from Grill category*/                    
select * from Item where Category like 'G%';

/*Dishes from Main category*/                    
select * from Item where Category like 'M%';

/*Dishes from Dessert category*/                    
select * from Item where Category like 'D%';
                    


insert into COrder(Cname, CAddress) values('mr smith', '123');
update COrder set ItemID = 'B101' where OrderID = '1';
update COrder set CPhone = '123456' where OrderID = '1';
update COrder set QTY = 2, Total = 15.00, Date = '12th May 2021' where OrderID = '1';
update COrder set CAddress = '123 birmingham road' where OrderID = '1';

insert into COrder(Cname, CPhone, CAddress, ItemID, QTY, Total, Date) values('mrs jones', '234567', '666 primary road', 'G103', 2, 25.80, '15th May 2021');
insert into COrder(Cname, CPhone, CAddress, ItemID, QTY, Total, Date) values('mr purnell', '345678', '4 newland road', 'B105', 6, 51.00, '12th May 2021');
insert into COrder(Cname, CPhone, CAddress, ItemID, QTY, Total, Date) values('mr purnell', '345678', '4 newland road', 'G103', 4, 51.60, '12th May 2021');
insert into COrder(Cname, CPhone, CAddress, ItemID, QTY, Total, Date) values('mrs jones', '234567', '666 primary road', 'D102', 4, 24.80, '15th May 2021');
insert into COrder(Cname, CPhone, CAddress, ItemID, QTY, Total, Date) values('mr simons', '456789', '89 quality street', 'M102', 2, 25.00, '12th May 2021');
insert into COrder(Cname, CPhone, CAddress, ItemID, QTY, Total, Date) values('mrs stevens', '567890', '1 corination street', 'S102', 3, 16.50, '13th May 2021');
insert into COrder(Cname, CPhone, CAddress, ItemID, QTY, Total, Date) values('mrs stevens', '567890', '1 corination street', 'G102', 3, 18.40, '13th May 2021');
insert into COrder(Cname, CPhone, CAddress, ItemID, QTY, Total, Date) values('mrs stevens', '567890', '1 corination street', 'M101', 1, 12.50, '13th May 2021');
insert into COrder(Cname, CPhone, CAddress, ItemID, QTY, Total, Date) values('mr shaw', '467034', '86 quality street', 'D101', 4, 14.80, '12th May 2021');
insert into COrder(Cname, CPhone, CAddress, ItemID, QTY, Total, Date) values('mr honeyman', '675830', '67 KCOM street', 'B105', 6, 51.00, '15th May 2021');
insert into COrder(Cname, CPhone, CAddress, ItemID, QTY, Total, Date) values('mrs mccan', '987654', '1468 portland way', 'S102', 2, 11.00, '13th May 2021');
insert into COrder(Cname, CPhone, CAddress, ItemID, QTY, Total, Date) values('mrs mccan', '987654', '1468 portland way', 'M102', 2, 25.00, '13th May 2021');
insert into COrder(Cname, CPhone, CAddress, ItemID, QTY, Total, Date) values('mr elder', '111222', '78 bristol avenue', 'S101', 1, 2.90, '12th May 2021');
insert into COrder(Cname, CPhone, CAddress, ItemID, QTY, Total, Date) values('mr elder', '111222', '78 bristol avenue', 'G101', 1, 9.70, '12th May 2021');
insert into COrder(Cname, CPhone, CAddress, ItemID, QTY, Total, Date) values('mr magennis', '763951', '98 irish street', 'S102', 7, 38.50, '15th May 2021');
insert into COrder(Cname, CPhone, CAddress, ItemID, QTY, Total, Date) values('mr clean', '676754', '98 seseam street', 'M101', 2, 25.00, '13th May 2021');
insert into COrder(Cname, CPhone, CAddress, ItemID, QTY, Total, Date) values('mrs clarkson', '894651', '24 east ella drive', 'B104', 2, 19.80, '14th May 2021');
insert into COrder(Cname, CPhone, CAddress, ItemID, QTY, Total, Date) values('mrs russell', '894651', '56 Kingston road', 'D103', 1, 5.90, '15th May 2021');

select * from COrder;


/*Display number of orders placed in a day*/
select count(Date) from COrder where Date = '15th May 2021';

/*Display total amount of takings*/
select sum(Total) AS Total_Takings FROM COrder;

/*Display total number of dishes served*/
select sum(QTY) AS Total_Takings FROM COrder;













