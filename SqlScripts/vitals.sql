-- addVitals
INSERT INTO vitals (visit_id, patientid, systolic, diastolic, pulse, blood_oxygen, temp, created_by)
VALUES (:visit_id, :patientid, :systolic, :diastolic, :pulse, :blood_oxygen, :temp, :created_by);

-- deleteVitals
DELETE FROM vitals 
WHERE vitals_id = :vitals_id;

-- getVitals
SELECT * FROM vitals
WHERE visit_id= :visit_id;