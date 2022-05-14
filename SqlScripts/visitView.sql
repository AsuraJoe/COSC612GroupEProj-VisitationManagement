CREATE VIEW _queue 
AS (
SELECT v.visit_id as visit_id, p.patientid as patientid, CONCAT(p.firstname, ' ', p.middleinitial,' ', p.lastname) AS patient_name,
v.visit_date AS visit_date, CONCAT(n.firstname, ' ', n.middleinitial,' ', n.lastname) AS nurse, 
CONCAT(d.firstname, ' ', d.middleinitial,' ', d.lastname) AS doctor, v.status AS status
FROM patient AS p JOIN 
(
    SELECT * FROM visit WHERE visit_date IN (
    SELECT Max(visit_date) as visit_date
    FROM visit
    GROUP BY patientid )
) v ON p.patientid = v.patientid
LEFT OUTER JOIN employee AS n ON v.nurse_id = n.employeeid
LEFT OUTER JOIN employee AS d ON v.doctor_id = d.employeeid
ORDER BY visit_date DESC
);