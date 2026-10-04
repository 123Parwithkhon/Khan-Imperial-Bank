# Khan Imperial Bank — Core Banking System 🏦

## 🌟 Project Overview

**Khan Imperial Bank** is a relational banking database project developed using Microsoft SQL Server and T-SQL.

The project models the core data structures and business processes of a banking system, including multi-currency accounts, transactions, loans, audit logging, fraud monitoring, and branch management.

The main goal of the project is to demonstrate practical skills in database design, SQL development, data integrity, and financial data analysis.

---

## 🏗 Key Architecture Features

- **3NF Database Design** — Data is structured according to relational database principles to reduce redundancy and maintain data consistency.
- **Centralized Status Management** — A unified system of status reference data is used for different entities such as accounts, employees, and loans.
- **Multi-Currency Support** — Centralized currency management with exchange-rate information.
- **Audit & Security** — Audit logs are used to track changes, while a dedicated fraud log stores information about suspicious transactions.

---

## 📊 Business Problems Solved

The repository contains SQL solutions for several banking-related tasks:

1. **Security Audit** — Identifying suspicious transactions and analyzing employee-related actions.
2. **Credit Analytics** — Analyzing loans, payments, and overdue debt.
3. **Financial Reporting** — Analyzing branch balances and segmenting clients based on account balances.
4. **Data Integrity** — Using primary keys, foreign keys, constraints, and relationships to maintain consistent financial data.

---

## 📁 Project Structure

```text
Khan-Imperial-Bank/
│
├── create_KhanImperialBank.sql
├── inserts_KhanImperialBank.sql
├── analytics_KhanImperialBank.sql
├── Khan_Imperial_Bank_ERD.png
└── README.md
```

---

# 🇷🇺 Русская версия

# Khan Imperial Bank — Ядро банковской системы 🏦

## 🌟 Обзор проекта

**Khan Imperial Bank** — это реляционный проект банковской базы данных, разработанный с использованием Microsoft SQL Server и T-SQL.

Проект моделирует основные структуры данных и бизнес-процессы банковской системы, включая мультивалютные счета, транзакции, кредиты, аудит изменений, мониторинг мошенничества и управление филиалами.

Основная цель проекта — продемонстрировать практические навыки проектирования баз данных, разработки SQL-запросов, обеспечения целостности данных и финансовой аналитики.

---

## 🏗 Ключевые особенности архитектуры

- **Проектирование базы данных в 3НФ** — данные организованы в соответствии с принципами реляционных баз данных для уменьшения избыточности и повышения согласованности данных.
- **Централизованное управление статусами** — единая система справочных статусов используется для различных сущностей, включая счета, сотрудников и кредиты.
- **Поддержка мультивалютности** — централизованное управление валютами и информацией о курсах обмена.
- **Аудит и безопасность** — журнал аудита используется для отслеживания изменений, а отдельный журнал мошенничества хранит информацию о подозрительных транзакциях.

---

## 📊 Решаемые бизнес-задачи

В репозитории представлены SQL-решения для следующих банковских задач:

1. **Security Audit** — поиск подозрительных транзакций и анализ действий сотрудников.
2. **Credit Analytics** — анализ кредитов, платежей и просроченной задолженности.
3. **Financial Reporting** — анализ балансов филиалов и сегментация клиентов на основе размера баланса.
4. **Data Integrity** — использование первичных и внешних ключей, ограничений и связей для обеспечения целостности финансовых данных.

---

## 📁 Структура проекта

```text
Khan-Imperial-Bank/
│
├── create_KhanImperialBank.sql
├── inserts_KhanImperialBank.sql
├── analytics_KhanImperialBank.sql
├── Khan_Imperial_Bank_ERD.png
└── README.md
