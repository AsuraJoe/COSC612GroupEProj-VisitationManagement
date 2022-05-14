-- SELECT p.patient_id AS patient_id, p.patient_name AS patient_name,
-- v.visit_date AS visit_date, n.staff_name AS nurse, d.staff_name AS doctor, v.status AS status
-- FROM patients AS p JOIN 
-- (
--     SELECT * FROM visitation WHERE visit_date IN (
--     SELECT Max(visit_date) as visit_date
--     FROM visitation
--     GROUP BY patient_id )
-- ) v ON p.patient_id = v.patient_id
-- JOIN staff AS n ON v.nurse_id = n.staff_id
-- JOIN staff AS d ON v.doctor_id = d.staff_id
-- ORDER BY visit_date DESC

SELECT *
FROM (patient AS p JOIN 
(
    SELECT * FROM visit WHERE visit_date IN (
    SELECT Max(visit_date) as visit_date
    FROM visit
    GROUP BY patientid )
) v ON p.patientid = v.patientid)
LEFT OUTER JOIN employee AS n ON v.nurse_id = n.employeeid
LEFT OUTER JOIN employee AS d ON v.doctor_id = d.employeeid
ORDER BY visit_date DESC