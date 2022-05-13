-- CREATE TABLE IF NOT EXISTS employee (
--     employeeid serial PRIMARY KEY,
--     first_name VARCHAR(50),
--     middle_initial CHAR,
--     last_name VARCHAR(50),
--     position VARCHAR(20)
-- );

-- CREATE TABLE IF NOT EXISTS patient (
--     patientid serial PRIMARY KEY,
--     first_name VARCHAR(50),
--     middle_initial CHAR,
--     last_name VARCHAR(50)
-- );

CREATE TABLE IF NOT EXISTS visit (
    visit_id serial PRIMARY KEY,
    patientid uuid NOT NULL,
    visit_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(30),
    nurse_id uuid,
    doctor_id uuid,
    visit_reason VARCHAR(200),
    symptoms VARCHAR(200),
    visit_summary VARCHAR,
    created_by uuid,

    FOREIGN KEY (patientid) REFERENCES patient(patientid),
    FOREIGN KEY (nurse_id) REFERENCES employee(employeeid),
    FOREIGN KEY (doctor_id) REFERENCES employee(employeeid),
    FOREIGN KEY (created_by) REFERENCES employee(employeeid)
);

CREATE TABLE IF NOT EXISTS vitals (
    vitals_id serial PRIMARY KEY,
    patientid uuid not null,
    visit_id INT not null,
    systolic INT,
    diastolic INT,
    pulse FLOAT,
    temp FLOAT,
    blood_oxygen INT,
    created_by uuid,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY(patientid) REFERENCES patient(patientid),
    FOREIGN KEY (visit_id) REFERENCES visit(visit_id) ON DELETE CASCADE,
    FOREIGN KEY (created_by) REFERENCES employee(employeeid)
);

CREATE TABLE IF NOT EXISTS diagnosis(
    diagnosis_id serial PRIMARY KEY,
    icd19_code VARCHAR(10),
    visit_id INT NOT NULL,
    created_by uuid,
    date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (visit_id) REFERENCES visit(visit_id) ON DELETE CASCADE,
    FOREIGN KEY (created_by) REFERENCES employee(employeeid)
);

-- CREATE TABLE IF NOT EXISTS visit_billing(
--     visit_billing_id serial PRIMARY KEY ,
--     visit_id INT NOT NULL,
--     patientid INT,
--     created_by INT,
--     cost FLOAT,
--     FOREIGN KEY (visit_id)
--     FOREIGN KEY (patientid) REFERENCES patient(patientid),
--     FOREIGN KEY (accountant_id) REFERENCES employee(employeeid)
-- );