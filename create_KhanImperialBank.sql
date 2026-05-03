create database KhanImperialBank;

use KhanImperialBank;


create table Clients(
	Client_id int primary key identity(1,1),
	first_name nvarchar(200) not null,
	last_name nvarchar(200) not null,
	tax_id int unique not null,
	email nvarchar(200),
	Registration_Date datetime default getdate()
);

create table Accounts(
	Account_id int primary key identity(1,1),
	client_id int foreign key references clients(client_id),
	AccNumber varchar(30) unique not null,
	Currency varchar(30) check(currency in ('USD', 'EUR', 'TJS', 'RUB')),
	balance decimal(18, 2) default 0.00,
	status varchar(18) default 'Active' check(status in ('Active', 'Blocked'))
);

create table cards(
card_id int primary key identity(1,1),
Account_id int foreign key references Accounts(account_id),
Card_number nvarchar(20) not null,
Expiry_Date Date not null,
CVV varchar(10),
is_pinned bit default 0
);

create table Transactions(
	Transaction_id int primary key identity(1,1),
	from_account_id int foreign key references accounts(account_id),
	to_account_id int foreign key references accounts(account_id),
	amount decimal(18, 2) check(amount > 0),
	Transaction_Type varchar(15) check (Transaction_Type in ('Transfer', 'ATM', 'Payment')),
	Tran_date datetime default getdate()
);

create table Loans(
	Loan_id int primary key identity(1,1),
	client_id int foreign key references clients(client_id),
	total_amount decimal(18, 2) not null,
	interest_rate decimal(5, 2),
	TerMonths int,
	start_date datetime default getdate()
);


create table FraudLog(
	Log_id int primary key identity(1,1),
	Transaction_ID int foreign key references Transactions(Transaction_ID),
	Reason nvarchar(250),
	Risk_Level int check (risk_level between 1 and 10),
	detect_date datetime default getdate(),
	is_confirmed bit default 0
);


create table Branches(
    BranchID int primary key identity(1,1),
    BranchName nvarchar(100) not null,
    City nvarchar(50) not null,
    Address nvarchar(255) 
);

alter table Accounts add BranchID int foreign key references Branches(BranchID);
alter table Loans add BranchID int foreign key references Branches(BranchID);

alter table Accounts drop column status;
alter table Accounts add statusid int foreign key references statuses(statusid);
alter table Accounts add typeid int foreign key references EntityTypes(typeid);

alter table Loans add statusid int foreign key references statuses(statusid);
alter table loans add typeid int foreign key references EntityTypes(typeid);


create table Currencies(
	CurrencyID int primary key identity(1,1),
	Code char(3) unique not null,
	CurrencyName nvarchar(50),
	ExchangeRateToTJS decimal(18,4)
);

create table AuditLogs(
	logID int primary key identity(1,1),
	TableName nvarchar(50),
	entityID int,
	OldStatusID int,
	NewStatusID int,
	ChangedByEmployeeID int foreign key references Employees(EmployeeID),
	ChangeDate datetime default getdate(),
	ActionType nvarchar(40)
);

alter table accounts
drop constraint CK__Accounts__Curren__5070F446

alter table accounts drop column Currency;
alter table accounts add CurrencyID int foreign key references currencies(CurrencyID);
alter table accounts add CreatedByEmployeeID int foreign key references Employees(EmployeeID);

alter table transactions add CreatedByEmployeeID int foreign key references Employees(EmployeeID);



select * from Accounts