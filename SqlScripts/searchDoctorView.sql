CREATE VIEW _doctor
AS (
    SELECT employeeid, REGEXP_REPLACE( CONCAT(firstname, ' ', middleinitial,' ',lastname, ' ', TO_CHAR(dateofbirth, 'mm/dd/yyyy') ),'[ ]+',' ') 
    AS name_birth
    FROM employee
    WHERE position = 'doctor'
)