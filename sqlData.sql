create database ddl;
use ddl;
create table Customer(Customer_id varchar(20) primary key, 
Customer_Name varchar(20) not null,  
Customer_Tel varchar(15));

create table Product(Product_id varchar(20), 
Product_Name varchar(20) not null,  Price int(20));

create table Orders(Customer_id varchar(25), constraint fk_cust foreign key(Customer_id) references Customer(Customer_id),
Product_id varchar(20), constraint fk_prod foreign key(Product_id) references Product(Product_id),  
Quantity int(20), Total_amount int(20));

alter table Product add column Category varchar(20);

alter table Orders add column OrderDate timestamp default now();

show tables;
