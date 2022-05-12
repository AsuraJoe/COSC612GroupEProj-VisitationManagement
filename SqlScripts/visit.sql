-- addVisit
INSERT INTO VISIT(patient_id, visit_date, status, nurse_id, doctor_id, visit_reason, symptoms, visit_summary, created_by) 
VALUES(:patient_id, :visit_date, :status, :nurse_id, :doctor_id, :visit_reason, :symptoms, :visit_summary, :created_by);

-- selectVisit
SELECT * FROM VISIT
WHERE patient_id = :patient_id;

-- deleteVisit
DELETE FROM VISIT
WHERE visit_id = :visit_id;