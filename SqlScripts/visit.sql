-- addVisit
INSERT INTO VISIT(patientid, visit_date, status, nurse_id, doctor_id, visit_reason, symptoms, visit_summary, created_by) 
VALUES(:patientid, :visit_date, :status, :nurse_id, :doctor_id, :visit_reason, :symptoms, :visit_summary, :created_by);

-- selectVisit
SELECT * FROM VISIT
WHERE patientid = :patientid;

-- deleteVisit
DELETE FROM VISIT
WHERE visit_id = :visit_id;