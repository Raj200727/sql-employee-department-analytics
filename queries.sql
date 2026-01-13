/* =====================================================
   1. Employee & Department Report
   ===================================================== */

SELECT
    E.full_name,
    E.hire_date AS DOJ,
    E.designation,
    D.dep_name,
    D.dep_manager,
    D.place
FROM EMP_DETAILS E
INNER JOIN DEP_DETAILS D
    ON E.dep_id = D.dep_id;


/* =====================================================
   2. Employees Hired in or After 2019 (Latest First)
   ===================================================== */

SELECT
    E.full_name,
    E.hire_date,
    E.designation,
    D.dep_name
FROM EMP_DETAILS E
INNER JOIN DEP_DETAILS D
    ON E.dep_id = D.dep_id
WHERE E.hire_date >= '2019-01-01'
ORDER BY E.hire_date DESC;


/* =====================================================
   3. Employees Managed by Pooja Gupta
   ===================================================== */

SELECT
    E.full_name,
    E.designation,
    D.dep_manager
FROM EMP_DETAILS E
INNER JOIN DEP_DETAILS D
    ON E.dep_id = D.dep_id
WHERE D.dep_manager = 'Pooja Gupta';


/* =====================================================
   4. Employee Count per Department
   ===================================================== */

SELECT
    D.dep_id,
    D.dep_name,
    COUNT(E.emp_id) AS employee_count
FROM DEP_DETAILS D
LEFT JOIN EMP_DETAILS E
    ON D.dep_id = E.dep_id
GROUP BY
    D.dep_id,
    D.dep_name
ORDER BY
    employee_count DESC;
