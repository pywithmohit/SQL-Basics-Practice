# SQL Practice — Employee Table (CRUD + Aggregation)

A hands-on SQL exercise covering table creation, `UPDATE`, `DELETE`, `ALTER TABLE`, `INSERT`, and `GROUP BY` aggregation on a simple `employee` table.

## Schema

```sql
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    city VARCHAR(30)
);
```

Later altered to add `email` (VARCHAR) and `age` (INT) columns, and `city` was renamed to `location`.

## Seed Data

| emp_id | name | department | salary | city |
|---|---|---|---|---|
| 101 | Rohit | IT | 35000 | Jaipur |
| 102 | Amit | HR | 30000 | Delhi |
| 103 | Priya | IT | 45000 | Mumbai |
| 104 | Neha | Sales | 28000 | Jaipur |
| 105 | Rahul | Finance | 50000 | Delhi |

## Exercises Covered

1. Update a single employee's salary
2. Update a single employee's city
3. Bulk update — give a whole department a raise
4. Update an employee's department
5. Bulk update by city
6–10. Delete rows by id, by name, by city, by department, and by a salary threshold
11–13. `ALTER TABLE` — add `email` column, rename `city` → `location`, add `age` column
14. Populate the new `email`/`age` columns
15. Insert new employee rows
16. Multi-column update (department + salary together)
17. Aggregation — total salary by department
18. Aggregation — average salary by department
19. `SELECT DISTINCT` — list unique departments
20. `GROUP BY ... HAVING` — locations with 2+ employees

## Note on Q6–Q10 (Deletes)

These deletes were written as independent exercises but run sequentially against the same table, so they cascade: by Q6 only Rohit and Priya are left, which means Q9 (delete HR dept) and Q10 (delete salary < 35000) end up deleting 0 rows since their targets were already removed by earlier deletes. To test each `DELETE` in isolation, re-seed the table (or work from a fresh copy) before each one.

## Final Aggregation Results

**Total salary by department**

| department | total_salary |
|---|---|
| HR | 268000 |
| IT | 180000 |
| Finance | 180000 |
| Sales | 88000 |

**Average salary by department**

| department | avg_salary |
|---|---|
| Finance | 180000 |
| HR | 134000 |
| IT | 60000 |
| Sales | 88000 |

**Distinct departments:** IT, HR, Sales, Finance

**Locations with ≥ 2 employees:** Jaipur (3), Delhi (2)
