-- Insert for staff
INSERT INTO staff VALUES('d0001', 'Silas Stone', 'doctor');
INSERT INTO staff VALUES('d0002', 'Nick Cave', 'doctor');
INSERT INTO staff VALUES('n0001', 'David Hensley', 'nurse');
INSERT INTO staff VALUES('n0002', 'PJ Harvery', 'nurse');
INSERT INTO staff VALUES('n0003', 'Taylor Tomison', 'nurse');
INSERT INTO staff VALUES('n0004', 'Lorraine Thorton', 'nurse');
INSERT INTO staff VALUES('a0001', 'Thomas Anderson', 'accountant');

-- Insert for patients
INSERT INTO patients VALUES('p0001', 'Troy V Leeuwen');
INSERT INTO patients VALUES('p0002', 'Kristoff Kirsterson');
INSERT INTO patients VALUES('p0003', 'Michael Angelo');
INSERT INTO patients VALUES('p0004', 'Sydney Barrett');
INSERT INTO patients VALUES('p0005', 'Troy Sanders');
INSERT INTO patients VALUES('p0006', 'Brenda Li');
INSERT INTO patients VALUES('p0007', 'Sharon Stone');


-- Insert for visitation
INSERT INTO visitation VALUES('v0001', '2022-04-22 09:06:20', 'Waiting for triage', 'p0001');
INSERT INTO visitation VALUES('v0002', '2022-04-22 10:30:18', 'Waiting for doctor', 'p0001', 'n0002');
INSERT INTO visitation VALUES('v0003', '2022-04-22 11:30:18', 'Waiting for triage', 'p0002');
INSERT INTO visitation VALUES('v0004', '2022-04-22 12:07:18', 'Waiting for doctor', 'p0004', 'n0001', 'd0001');
INSERT INTO visitation VALUES('v0005', '2022-04-22 13:20:18', 'Waiting for doctor', 'p0001', 'n0002', 'd0002');
INSERT INTO visitation VALUES('v0006', '2022-04-22 14:30:18', 'Waiting for doctor', 'p0002' , 'n0003', 'd0001');
INSERT INTO visitation VALUES('v0007', '2022-04-22 16:30:18', 'Ready for Checkout', 'p0003' , 'n0002', 'd0002');
INSERT INTO visitation VALUES('v0008', '2022-04-23 10:30:18', 'Waiting for payment', 'p0005' , 'n0002', 'd0001');
INSERT INTO visitation VALUES('v0009', '2022-04-23 10:30:18', 'Waiting for doctor', 'p0001', 'n0001', 'd0002');
