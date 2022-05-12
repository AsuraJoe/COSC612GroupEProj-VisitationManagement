CREATE OR ALTER VIEW _queue 
AS (
    SELECT p.patient_id as patient_id, CONCAT(p.first_name, ' ', p.middle_initial,' ', p.last_name) AS patient_name,
v.visit_date AS visit_date, CONCAT(n.first_name, ' ', n.middle_initial,' ', n.last_name) AS nurse, 
CONCAT(d.first_name, ' ', d.middle_initial,' ', d.last_name) AS doctor, v.status AS status
FROM patient AS p JOIN 
(
    SELECT * FROM visit WHERE visit_date IN (
    SELECT Max(visit_date) as visit_date
    FROM visit
    GROUP BY patient_id )
) v ON p.patient_id = v.patient_id
JOIN employee AS n ON v.nurse_id = n.employee_id
JOIN employee AS d ON v.doctor_id = d.employee_id
ORDER BY visit_date DESC
);