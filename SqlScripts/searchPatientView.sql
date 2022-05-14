CREATE VIEW _patient
AS (
    SELECT patientid, REGEXP_REPLACE( CONCAT(firstname, ' ', middleinitial,' ',lastname, ' ', TO_CHAR(dateofbirth, 'mm/dd/yyyy') ),'[ ]+',' ') 
    AS name_birth
    FROM patient
);