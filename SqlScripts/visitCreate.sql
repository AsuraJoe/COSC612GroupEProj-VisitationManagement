CREATE TABLE IF NOT EXISTS employee (
    employee_id serial PRIMARY KEY,
    first_name VARCHAR(50),
    middle_initial CHAR,
    last_name VARCHAR(50),
    position VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS patient (
    patient_id serial PRIMARY KEY,
    first_name VARCHAR(50),
    middle_initial CHAR,
    last_name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS visit (
    visit_id serial PRIMARY KEY,
    patient_id INT NOT NULL,
    visit_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(30),
    nurse_id INT,
    doctor_id INT,
    visit_reason VARCHAR(200),
    symptoms VARCHAR(500),
    visit_summary VARCHAR,
    created_by INT,

    FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
    FOREIGN KEY (nurse_id) REFERENCES employee(employee_id),
    FOREIGN KEY (doctor_id) REFERENCES employee(employee_id),
    FOREIGN KEY (created_by) REFERENCES employee(employee_id)
);

CREATE TABLE IF NOT EXISTS vitals (
    vitals_id serial PRIMARY KEY,
    patient_id INT not null,
    visit_id INT not null,
    systolic INT,
    diastolic INT,
    pulse FLOAT,
    temp FLOAT,
    blood_oxygen INT,
    created_by INT,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY(patient_id) REFERENCES patient(patient_id),
    FOREIGN KEY (visit_id) REFERENCES visit(visit_id),
    FOREIGN KEY (created_by) REFERENCES employee(employee_id)
);

CREATE TABLE IF NOT EXISTS diagnosis(
    diagnosis_id serial PRIMARY KEY,
    icd19_code VARCHAR(10),
    visit_id INT NOT NULL,
    created_by INT,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (visit_id) REFERENCES visit(visit_id),
    FOREIGN KEY (created_by) REFERENCES employee(employee_id)
);

-- CREATE TABLE IF NOT EXISTS visit_billing(
--     visit_billing_id serial PRIMARY KEY ,
--     visit_id INT NOT NULL,
--     patient_id INT,
--     created_by INT,
--     cost FLOAT,
--     FOREIGN KEY (visit_id)
--     FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
--     FOREIGN KEY (accountant_id) REFERENCES employee(employee_id)
-- );