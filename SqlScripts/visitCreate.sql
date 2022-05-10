create table if not exists staff (
    staff_id VARCHAR(20) not null,
    staff_name VARCHAR(20),
    job VARCHAR(20),
    PRIMARY KEY (staff_id)
);

create table if not EXISTS patients (
    patient_id VARCHAR(20) not null,
    patient_name VARCHAR(20),
    PRIMARY KEY (patient_id)
);

CREATE TABLE IF NOT EXISTS visitation (
    visit_id VARCHAR(20) not null,
    visit_date TIMESTAMP,
    status VARCHAR(30),
    patient_id VARCHAR(20) not null,
    nurse_id VARCHAR(20),
    doctor_id VARCHAR(20),
    PRIMARY KEY (visit_id),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (nurse_id) REFERENCES staff(staff_id),
    FOREIGN KEY (doctor_id) REFERENCES staff(staff_id)
);

CREATE TABLE IF NOT EXISTS vitals (
    patient_id VARCHAR(20) not null,
    visit_id VARCHAR(20) not null,
    systolic int,
    diastolic int,
    pulse int,
    temp float,
    PRIMARY KEY (patient_id,visit_id),
    FOREIGN KEY(patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (visit_id) REFERENCES visitation(visit_id)
);

CREATE TABLE IF NOT EXISTS diagnosis(
    patient_id VARCHAR(20),
    visit_id VARCHAR(20),
    doctor_id VARCHAR (20),
    details VARCHAR(50),
    FOREIGN KEY(patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (visit_id) REFERENCES visitation(visit_id),
    FOREIGN KEY (doctor_id) REFERENCES staff(staff_id)
);

CREATE TABLE IF NOT EXISTS bill(
    bill_id VARCHAR(20),
    patient_id VARCHAR(20),
    accountant_id VARCHAR(20),
    cost FLOAT,
    PRIMARY KEY (bill_id),
    FOREIGN KEY(patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (accountant_id) REFERENCES staff(staff_id)
);