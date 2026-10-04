# Khan Imperial Bank

A relational database project for a fictional banking system, developed using Microsoft SQL Server.

The project demonstrates database design, SQL programming, data management, relationships between entities, and analytical queries for banking operations.

---

## 📌 Project Overview

**Khan Imperial Bank** is an educational banking database project designed to simulate the core data structures and operations of a banking system.

The database contains information about:

- Clients
- Bank accounts
- Cards
- Transactions
- Loans
- Branches
- Currencies
- Fraud detection
- Employees
- Statuses
- Entity types
- Audit logs

The main goal of the project is to practice relational database design and advanced SQL queries using a realistic business domain.

---

## 🎯 Project Goals

The project was created to practice:

- Relational database design
- Primary and foreign keys
- Table relationships
- Data integrity and constraints
- SQL queries
- Aggregations and grouping
- JOIN operations
- Subqueries
- Common Table Expressions (CTEs)
- Views
- Indexes
- Transactions
- Stored procedures
- Triggers
- Database normalization
- Financial data analysis
- Fraud-related data analysis

---

## 🛠 Technologies

- **Microsoft SQL Server**
- **T-SQL**
- Relational Database Design
- SQL Server Management Studio (SSMS)

---

## 🗄 Database Structure

The database is organized around several core entities.

### Main entities

| Entity | Description |
|---|---|
| Clients | Customer information |
| Accounts | Bank accounts and balances |
| Cards | Cards connected to bank accounts |
| Transactions | Transfers and other account operations |
| Loans | Customer loans |
| Branches | Bank branches |
| Currencies | Supported currencies and exchange rates |
| FraudLog | Suspicious transaction records |
| Employees | Bank employees |
| AuditLogs | Changes made to important entities |

The database uses primary and foreign keys to maintain relationships between entities.

---

## 🔗 Main Relationships

Examples of relationships in the database:

- A client can have multiple accounts.
- An account can have multiple cards.
- Accounts are connected to bank branches.
- Transactions can reference source and destination accounts.
- Loans belong to clients and branches.
- Transactions can be associated with employees.
- Fraud records are linked to transactions.
- Accounts and loans use predefined statuses and entity types.
- Accounts reference currencies through `CurrencyID`.

---

## 📊 Analytics

The project includes analytical SQL queries for different banking scenarios.

Examples include:

### Account analysis

- Displaying client accounts and balances
- Calculating balances by currency
- Categorizing customers based on account balance
- Finding accounts connected to specific branches

### Transaction analysis

- Counting transactions
- Calculating transaction amounts
- Analyzing transfers between accounts
- Finding clients with high transaction volumes

### Loan analysis

- Calculating loan-related information
- Analyzing loan payments
- Identifying overdue loans

### Fraud analysis

- Finding suspicious transactions
- Displaying fraud risk levels
- Connecting suspicious transactions with clients, accounts and employees

### Branch analysis

- Analyzing account balances by branch
- Comparing banking activity between branches

---

## 🧠 SQL Concepts Demonstrated

This project demonstrates practical usage of:

```text
SELECT
WHERE
JOIN
GROUP BY
HAVING
ORDER BY
CASE
Subqueries
CTE
Views
Indexes
Transactions
Stored Procedures
Triggers
Constraints
Primary Keys
Foreign Keys
Normalization

# Khan Imperial Bank — Enterprise Core Banking System 🏦

## 🌟 Обзор проекта
**Khan Imperial Bank** — это комплексная модель ядра банковской системы, разработанная на MS SQL Server. Проект демонстрирует архитектуру масштабируемого банка с поддержкой мультивалютности, многоуровневого аудита, системы антифрода и управления кредитным портфелем.

## 🏗 Ключевые особенности архитектуры
- **Нормализация 3NF**: Данные организованы в соответствии с лучшими практиками для минимизации дублирования.
- **Enterprise Status Management**: Единая система справочников статусов для всех сущностей (счета, сотрудники, кредиты).
- **Multi-Currency Engine**: Централизованное управление валютами и курсами для мгновенного расчета ликвидности.
- **Deep Audit & Security**: Полное логирование изменений (`AuditLogs`) и специализированный модуль для отслеживания подозрительных операций (`FraudLog`).

## 📊 Решенные бизнес-задачи
В репозитории представлены SQL-решения для следующих задач:
1. **Security Audit**: Поиск «следа мошенника» и аудит действий сотрудников.
2. **Credit Analytics**: Мониторинг просроченной задолженности и расчет длительности просрочки.
3. **Financial Reporting**: Отчеты по ликвидности филиалов и сегментация клиентов по категориям (VIP/Standard).
4. **Data Integrity**: Использование Foreign Keys и Constraints для обеспечения финансовой точности.

## 📁 Структура проекта
- `create_KhanImperialBank.sql` — Схема базы данных (DDL).
- `inserts_KhanImperialBank.sql` — Тестовые данные для симуляции банковской активности (DML).
- `analytics_KhanImperialBank.sql` — Аналитические запросы и отчеты.
- `Khan_Imperial_Bank_ERD.png` — Визуальная диаграмма связей (ER-диаграмма).

## 🛠 Технологии
- MS SQL Server / T-SQL
- Database Design & Modeling
- Security Auditing
