create table Customer(
id int primary key identity(1,1) not null,
Name varchar(50) not null,
Zipcode int not null,
Email  varchar(50) not null
);

select * from Customer;

create table Login(
id int primary key identity(1,1) not null,
CustomerId int references Customer(id) not null,
Username varchar(50) not null,
Password  varchar(50) not null
);

select * from Login;

create proc spAddNewCustomer 
@Name varchar(50),
@Zipcode int,
@Email varchar(50),
@Username varchar(50),
@Password varchar(50)
as
Begin
	set nocount on;
	Declare @ID int;
     insert into Customer(Name,Zipcode,Email) values(@Name,@Zipcode,@Email);
	set @ID =  scope_identity();
     insert into Login(CustomerId,Username,Password) values(@ID,@Username,@Password);
end

spAddNewCustomer "Aman",382440,"aman@gmail.com","aman18","aman1234"