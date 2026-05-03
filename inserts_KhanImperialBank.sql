insert into clients(first_name, last_name, tax_id, email)
values ('alisher', 'rahimov', 100200301, '100200301'),
(N'Мадина', N'Саидова', 400500602, 'madina@mail.tj'),
(N'Иван', N'Петров', 700800903, 'ivan@mail.ru');

insert into Accounts(client_id, AccNumber, Currency, balance, status)
values (1, '2020297200001', 'TJS', 5000.00, 'Active'),
(2, '2020297200002', 'TJS', 10500.50, 'Active'), 
(3, '2020281000003', 'RUB', 85000.00, 'Active');

insert into cards(Account_id, Card_number, Expiry_Date, CVV, is_pinned)
values(1, '4444555566667777', '2028-12-31', '123', 1),
(3, '5555666677778888', '2027-06-01', '999', 0);

insert into Deposits(AccountID, InterestRate, StartDate, MaturityDate, InitialAmount, status)
values(3, 12.50, '2026-01-01', '2027-01-01', 50000.00, 'Active');

insert into Loans(client_id, total_amount, interest_rate, TerMonths)
values (2, 20000.00, 18.00, 24);

insert into LoanPayments(LoanID, Amount, PrincipalAmount, InterestAmount)
values(1, 1000.00, 700.00, 300.00);

insert into Transactions(from_account_id, to_account_id, amount, Transaction_Type)
values(1, 3, 1000.00, 'Transfer'),
(3, 2, 500.00, 'Payment');

insert into FraudLog(Transaction_ID, Reason, Risk_Level, is_confirmed)
values(1, N'High amount transfer', 5, 0);

INSERT INTO Branches (BranchName, City, Address) VALUES 
(N'Головной офис', N'Душанбе', N'пр. Рудаки 1'),
(N'Худжандский филиал', N'Худжанд', N'ул. Ленина 10'),
(N'Бохтарский офис', N'Бохтар', N'ул. Вахш 5');

INSERT INTO Clients (first_name, last_name, tax_id, email) VALUES 
(N'Сомон', N'Эмомали', 500100200, 'somon@bank.tj'),
(N'Зарина', N'Курбонова', 600200300, 'zarina@bank.tj'),
(N'Рустам', N'Азизов', 700300400, 'rustam@bank.tj');

UPDATE Accounts SET BranchID = 1 WHERE Account_ID % 2 = 0;
UPDATE Accounts SET BranchID = 2 WHERE BranchID IS NULL;

INSERT INTO Transactions (from_account_id, to_account_id, amount, Transaction_Type, Tran_date)
VALUES 
(1, 2, 50.00, 'Payment', '2025-06-10T08:30:00'),
(2, 3, 120.00, 'Transfer', '2025-06-11T08:30:00'),
(3, 1, 300.00, 'ATM', '2025-06-12T08:30:00'),
(1, 3, 450.00, 'Payment', '2025-06-13T08:30:00'),
(2, 1, 10.00, 'Transfer', '2025-06-14T08:30:00');



INSERT INTO StatusCategories (CategoryName) VALUES ('Account'), ('Employee'), ('Loan'), ('Branch');

INSERT INTO Statuses (CategoryID, StatusName, Description) VALUES 
(1, 'Active', 'Счет активен'), (1, 'Blocked', 'Заблокирован'),
(2, 'On_Duty', 'На смене'), (2, 'On_Leave', 'В отпуске'),
(3, 'Approved', 'Одобрен'), (3, 'Overdue', 'Просрочен'),
(4, 'Open', 'Филиал работает'), (4, 'Maintenance', 'Тех. перерыв');

INSERT INTO EntityTypes (Category, TypeName, InterestRateChange) VALUES 
('Account', 'Savings', 0.00), 
('Account', 'Checking', 0.00),
('Loan', 'Mortgage', 12.50), 
('Loan', 'Personal', 18.00);

INSERT INTO Roles (RoleName, AccessLevel) VALUES 
('Manager', 10), ('Teller', 5), ('Security Officer', 7);

INSERT INTO Branches (BranchName, City, Address) VALUES 
(N'Центральный Худжанд', N'Худжанд', N'ул. Ленина 50');

INSERT INTO Employees (BranchID, StatusID, first_name, last_name, Position) VALUES 
(1, 3, N'Дилшод', N'Ахмедов', N'Старший менеджер');

INSERT INTO EmployeeRolesLink (EmployeeID, RoleID) VALUES (1, 1);

INSERT INTO Clients (first_name, last_name, tax_id, email) VALUES 
(N'Малика', N'Мансурова', 900800700, 'malika@mail.tj');

INSERT INTO Accounts (client_id, AccNumber, Currency, balance, BranchID, statusid, typeid) VALUES 
(4, '2020297200004', 'TJS', 15000.00, 1, 1, 1); 

select * from Accounts 

select * from clients

INSERT INTO Clients (Client_id, first_name, last_name, tax_id, email) VALUES 
(4, N'Мадина', N'Алиева', 988800722, 'madinka@mail.ru');

set identity_insert clients on;
set identity_insert clients off;

set identity_insert accounts on

insert into Currencies(code, CurrencyName, ExchangeRateToTJS)
values ('TJS', N'Таджикский Сомони', 1.0000),
('USD', N'Доллар США', 10.9000),
('RUB', N'Российский Рубль', 0.1200);

insert into Accounts(client_id, AccNumber, balance, branchid, statusid, typeid, CurrencyID, CreatedByEmployeeID) 
VALUES 
(1, '2020297200005', 2500.00, 1, 1, 2, 2, 1);

insert into AuditLogs(TableName, EntityID, OldStatusID, NewStatusID, ChangedByEmployeeID, ActionType)
VALUES 
('Accounts', 1, 1, 2, 1, 'UPDATE');

INSERT INTO Clients (first_name, last_name, tax_id, email) VALUES 
(N'Алишер', N'Каримов', 111222333, 'alisher@gmail.com'),
(N'Зарина', N'Саидова', 444555666, 'zarina@mail.tj'),
(N'Парвиз', N'Назаров', 777888999, 'parviz@it.tj'),
(N'Нигора', N'Умарова', 222333444, 'nigora@bank.tj');

INSERT INTO Branches (BranchName, City, Address) VALUES 
(N'Душанбе-Сити', N'Душанбе', N'проспект Рудаки 12'),
(N'Исфара-Центр', N'Исфара', N'ул. Сомони 5');

INSERT INTO Employees (BranchID, StatusID, first_name, last_name, Position) VALUES 
(2, 3, N'Олим', N'Рахимов', N'Менеджер по кредитам'),
(3, 3, N'Ситора', N'Хакимова', N'Операционист'),
(2, 4, N'Комрон', N'Шарипов', N'Специалист СБ');

INSERT INTO EmployeeRolesLink (EmployeeID, RoleID) VALUES (2, 2), (3, 2), (4, 3);

INSERT INTO Accounts (client_id, AccNumber, balance, BranchID, statusid, typeid, CurrencyID, CreatedByEmployeeID) VALUES 
(1, '2020297200006', 50000.00, 1, 1, 1, 1, 1),
(2, '2020297200007', 1200.00, 2, 1, 2, 2, 2),  
(3, '2020297200008', 350000.00, 3, 1, 1, 3, 3), 
(4, '2020297200009', 5.50, 1, 2, 2, 1, 1);

INSERT INTO Loans (client_id, total_amount, interest_rate, TerMonths, start_date, BranchID, statusid, typeid) VALUES 
(1, 15000.00, 22.5, 12, '2026-01-10', 1, 5, 4),
(3, 100000.00, 15.0, 60, '2025-12-01', 3, 6, 3);

INSERT INTO Transactions (from_account_id, to_account_id, amount, Transaction_Type, Tran_date, CreatedByEmployeeID) VALUES 
(1, 2, 1500.00, 'Transfer', GETDATE(), 2),
(3, 1, 10000.00, 'Payment', GETDATE(), 3),
(2, 4, 50.00, 'ATM', GETDATE(), 2);

INSERT INTO FraudLog (Transaction_ID, Reason, Risk_Level, detect_date, is_confirmed) VALUES 
(1, N'Крупный перевод ночью', 10, GETDATE(), 0);
INSERT INTO AuditLogs (TableName, EntityID, OldStatusID, NewStatusID, ChangedByEmployeeID, ActionType) VALUES 
('Accounts', 4, 1, 2, 4, 'UPDATE');

dbcc CHECKIDENT('Transactions', reseed, 0 ); 

insert into Accounts(Account_id, client_id, AccNumber, balance, status, BranchID, statusid, typeid, CurrencyID, CreatedByEmployeeID)
values(4, 12, 2020297200010, 750, 'active', 3, 2, 2, 3, 3)


-----------------------------------------------------------------------
begin try
begin transaction

select * from students
where class_id=(select class_id from classes where class_name='5a')

insert into students(last_name, first_name, middle_name, gender, birth_date, phone, address, 
class_id = (select class_id from classes where class_name='5A'))
values ('aliev', 'vali', 'abduvaliev', 'мард', '2009-01-08', '+992369852147', 'Хуҷанд, кӯчаи 8', 5);

update students 
set class_id=(select class_id from classes where class_name='6A')
where class_id=(select class_id from classes where class_name='5A') and gender='мард'

update students
set class_id=(select class_id from classes where class_name='7A')
where class_id=(select class_id from classes where class_name='5A') and gender='зан'

delete from grades as g
where grade_value=2 and 

end try
begin catch
rollback
end catch


select * from students as s
join classes as c
on c.class_id = s.class_id
--------------------------------------------------------------------------------