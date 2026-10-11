# QA Portfolio — Natali Partsvania

Manual QA Engineer portfolio built through self-directed practice projects covering the full testing workflow: test planning, test case design, bug reporting, API testing, and database validation. Every project below was performed on publicly available practice applications.

**Contact:** nataliepartsvania@yahoo.com · www.linkedin.com/in/natali-partsvania

---

## Projects at a Glance

| # | Project | What it shows | Tools |
|---|---|---|---|
| 1 | [UI Test Documentation — SauceDemo](./test-plan) | Test planning, test case design, traceability, summary reporting | Google Docs, Google Sheets |
| 2 | [Bug Reports](./bug-reports) | Exploratory testing, defect reporting, severity/priority judgment | Jira |
| 3 | [API Testing — reqres.in](./api-testing) | Request/response validation, negative testing, automated assertions | Postman |
| 4 | [SQL Data Validation](./sql-validation) | Finding duplicates, orphaned records, and invalid data | MySQL |

---

## 1. UI Test Documentation — SauceDemo

Full manual test cycle on [saucedemo.com](https://www.saucedemo.com), covering Login, Product Sorting, and Checkout.

- **Test Plan** with scope, approach, environment, entry/exit criteria, and risks
- **37 test cases** in a structured table (steps, test data, expected/actual results, status, priority)
- **Results:** 35 passed, 2 failed (94.59% pass rate)
- **Test Summary Report** with findings and release recommendation

## 2. Bug Reports

**6 defects** found through exploratory testing with the `problem_user` and `visual_user` accounts, each logged with reproduction steps, expected vs. actual results, severity, priority, and screenshots/recordings.

Highlights:
- **Critical:** product links open the wrong product details page
- **High:** typing in the Last Name field overwrites the First Name field
- **Minor:** item total shows excess decimals (`$105.96000000000001`)

## 3. API Testing — reqres.in

Postman collection covering GET, POST, PUT, and DELETE, with positive and negative test cases and automated assertions on every request.

- Documented test cases with pass/fail results
- Key finding: `POST` returns `201 Created`, but the record can't be retrieved afterwards

## 4. SQL Data Validation

Custom e-commerce database (users, products, orders, order_items) with validation queries that find data integrity problems the UI cannot show.

- Duplicate accounts by email
- Orphaned foreign keys in orders and order items
- NULL values in required fields
- Invalid negative quantities

---

## Skills Demonstrated

- Test planning and test case design (positive, negative, boundary)
- Requirement traceability
- Exploratory testing and defect reporting
- API testing and assertion scripting in Postman
- SQL for data validation (JOINs, GROUP BY, HAVING, NULL checks)
- Test reporting and documentation

## Repository Structure

```
/qa-portfolio
├── README.md
├── Test-Plan/
├── Test-Cases/
├── Bug-Reports/
├── API-Testing/
└── SQL-Validation/
└── Test-Summary-Report/
```
