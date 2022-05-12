-- Insert for employee
INSERT INTO employee VALUES(1, 'Silas', null, 'Stone', 'doctor');
INSERT INTO employee VALUES(2, 'Nick', null, 'Cave',  'doctor');
INSERT INTO employee VALUES(3, 'David', null, 'Hensley',  'nurse');
INSERT INTO employee VALUES(4, 'PJ', null, 'Harvey', 'nurse');
INSERT INTO employee VALUES(5, 'Taylor', null, 'Tomison',  'nurse');
INSERT INTO employee VALUES(6, 'Lorraine', null, 'Thorton',  'nurse');
INSERT INTO employee VALUES(7, 'Thomas', null, 'Anderson',  'accountant');
INSERT INTO employee VALUES(8, 'James', null, 'Kirk',  'receptionist');

-- Insert for patient
INSERT INTO patient VALUES(1, 'Troy V Leeuwen');
INSERT INTO patient VALUES(2, 'Kristoff Kirsterson', '');
INSERT INTO patient VALUES(3, 'Michael Angelo');
INSERT INTO patient VALUES(4, 'Sydney Barrett');
INSERT INTO patient VALUES(5, 'Troy Sanders');
INSERT INTO patient VALUES(6, 'Brenda Li');
INSERT INTO patient VALUES(7, 'Sharon Stone');


-- Insert for visit
INSERT INTO visit VALUES(1, 1, '2022-04-22 09:06:20', 'Waiting for triage');
INSERT INTO visit VALUES(2, 1, '2022-04-22 10:30:18', 'Waiting for doctor', 3);
INSERT INTO visit VALUES(3, 2,'2022-04-22 11:30:18', 'Waiting for triage');
INSERT INTO visit VALUES(4, 4,'2022-04-22 12:07:18', 'Waiting for doctor', 5, 1);
INSERT INTO visit VALUES(5, 1,'2022-04-22 13:20:18', 'Waiting for doctor', 4, 2);
INSERT INTO visit VALUES(6, 2,'2022-04-22 14:30:18', 'Waiting for doctor', 3, 1);
INSERT INTO visit VALUES(7, 3,'2022-04-22 16:30:18', 'Ready for Checkout', 6, 1);
INSERT INTO visit VALUES(8, 5,'2022-04-23 10:30:18', 'Waiting for payment', 4, 1);
INSERT INTO visit VALUES(9, 1,'2022-04-23 10:30:18', 'Waiting for doctor', 3, 2);
