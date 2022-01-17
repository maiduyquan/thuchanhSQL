create database AZBank
go
use AZBank
go
create table Customer(
 CustomerID int NOT NULL primary key,
 name Nvarchar(50),
 city Nvarchar(50),
 country Nvarchar(50),
 phone Nvarchar(15),
 email Nvarchar(50)
)
insert into Customer
values (1,N'nguyễn Văn A','Hanoi','VietNam','12345678','***@gmail.com'),
       (2,N'Mai Văn B','ThanhHoa','VietNam','12645678','***1@gmail.com'),
	   (3,N'Trần Thị C','NamDinh','VietNam','52345678','***2@gmail.com')
	   
select*from Customer
create table CustomerAccount(
 AccountNumber char(9) Not NULL primary key,
 CustomerID int NOT NULL,
 Balance money NOT NULL,
 MinAccount money
)
insert into CustomerAccount
values ('101',1,'2000',1000),('202',2,'3000',4000),('303',3,'4000',5000)
select*from CustomerAccount
Create table CustomerTransaction(
 TransactionID int primary key NOT NULL,
 AccountNumber char(9),
 TransactionDate smalldatetime,
 Amount Money,
 DepositorWithDraw bit,
 check (TransactionID>456)
)
insert into CustomerTransaction
values(459,'101',null,4000,null),
      (457,'102',null,4000,null),
	  (458,'103',null,4000,null),
	  (564,'104',null,6000,null)
select*from CustomerTransaction
drop table CustomerTransaction



Select*from Customer where city='Hanoi'

create view viewCusaccount as
select TransactionID,AccountNumber
from CustomerTransaction
where Amount='4000';
select*from viewCusaccount