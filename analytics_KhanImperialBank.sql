use KhanImperialBank;

select * from cards;

-- 1
select CONCAT(c.first_name, ' ', c.last_name) as fio, a.AccNumber, a.balance,  a.CurrencyID  from Accounts as a
join Clients as c
on c.Client_id = a.client_id

-- 2
select  sum(balance) as summa, CurrencyID from Accounts
group by CurrencyID


select * from Accounts

SELECT 
    card_id, 
    'Номер карты: ' + card_number AS CardInfo, 
    'Срок до: ' + CONVERT(VARCHAR, expiry_date, 104) AS ExpiryFormatted
FROM cards;

select AccNumber, balance,
    case 
    when balance > 50000 then 'VIP Account'
    when balance>=10000 and balance <= 50000 then 'Standard Account'
    else 'Basic Account'
    end as AccountCategory
from Accounts

----  посчитаем, какой будет доход по каждому депозиту за 1 год
SELECT DepositID,
    InitialAmount AS [Сумма вклада],
    InterestRate AS [Процентная ставка],
    (InitialAmount * InterestRate / 100) AS [Доход за год],
    InitialAmount + (InitialAmount * InterestRate / 100) AS [Итого через год]
FROM Deposits
WHERE status = 'Active';

exec sp_rename 'deposits.depostid', 'DepositID', 'COLUMN';

--- Запрос на проверку остатка долга
select  l.Loan_id, l.total_amount as [Выданный кредит],
isnull(sum(p.Amount), 0) as [Всего выплачено],
l.total_amount - ISNULL(sum(p.PrincipalAmount), 0) as [Остаток долга]
from loans as l
left join LoanPayments as p
on p.LoanID = l.Loan_id
group by l.Loan_id, l.total_amount ;


select * from loans;


select * from LoanPayments;


select * from Transactions

select * from Accounts

select * from Branches

-- 5
select b.BranchID, b.BranchName, sum(a.balance) as summa_filialov, a.CurrencyID from Branches as b
join Accounts as a
on b.BranchID = a.branchId
group by b.BranchID, b.BranchName, a.CurrencyID

-- 6
select CONCAT(c.first_name, ' ', c.last_name) as fio, sum(t.amount) as summa_amount
from clients as c
join Accounts as a
on a.client_id = c.Client_id
join Transactions as t
on t.from_account_id = a.Account_id
group by c.first_name, c.last_name
having sum(t.amount) > 500

-- 7
select count(from_account_id) as [от кого:],
count(to_account_id) as [к кому:], Transaction_Type, cast(Tran_date as date) as days
from Transactions
group by Transaction_Type, tran_date

select * from Transactions;

select * from clients;
----- 1)Где деньги?
select CONCAT(c.first_name, ' ', c.last_name) as fio, a.AccNumber, cur.CurrencyName, a.balance, b.BranchName, c.Registration_Date
from Accounts as a
join Clients as c
on c.Client_id = a.client_id
join Currencies as cur
on cur.CurrencyID = a.CurrencyID
join Branches as b
on b.BranchID = a.BranchID


----  Проблемные кредиты

select CONCAT(c.first_name, ' ', c.last_name) as fio,  sum(l.total_amount) as summa_credit,
DATEDIFF(MONTH, l.start_date, GETDATE()) as count_back_month, st.StatusName
from Clients as c
join Loans as l
on l.client_id = c.Client_id
join entityTypes as et
on et.TypeID = l.typeid
join Statuses as st
on st.StatusID = l.statusid
where st.statusname='overdue'
group by c.first_name, c.last_name, l.total_amount, st.StatusName, l.start_date


-------  След мошенника

select t.from_account_id, sum(t.amount) as sum_transaction, f.Reason, concat(e.first_name, ' ', e.last_name) as fio_sotrudnik, s.StatusName
from Transactions as t
join Accounts as a
on a.Account_id = t.from_account_id
join FraudLog as f
on f.Transaction_ID = t.Transaction_id
join Employees as e
on e.EmployeeID = t.CreatedByEmployeeID
join Statuses as s
on s.StatusID = e.StatusID
group by  t.from_account_id, f.Reason, e.first_name, e.last_name, s.StatusName

select * from FraudLog

select * from EntityTypes

select * from Statuses

select * from Employees

select * from StatusCategories

select * from loans

select * from Currencies

select * from clients;

select * from Accounts;

select * from Branches;

select * from Transactions

select * from AuditLogs