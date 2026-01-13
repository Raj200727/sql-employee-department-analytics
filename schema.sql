/* =====================================================
   Department Table
   ===================================================== */

CREATE TABLE DEP_DETAILS (
    dep_id INT PRIMARY KEY,
    dep_name VARCHAR(100),
    dep_manager VARCHAR(100),
    place VARCHAR(100),
    budget INT,
    created_date DATE
);

/* =====================================================
   Employee Table
   ===================================================== */

CREATE TABLE EMP_DETAILS (
    emp_id INT PRIMARY KEY,
    emp_code INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    full_name VARCHAR(100),
    gender VARCHAR(10),
    date_of_birth DATE,
    hire_date DATE,
    employment_status VARCHAR(50),
    designation VARCHAR(50),
    job_level INT,
    salary INT,
    bonus INT,
    email VARCHAR(100),
    phone VARCHAR(20),
    residence VARCHAR(50),
    city VARCHAR(50),
    postal_code VARCHAR(20),
    country VARCHAR(50),
    dep_id INT,
    CONSTRAINT fk_emp_dep
        FOREIGN KEY (dep_id)
        REFERENCES DEP_DETAILS(dep_id)
);
