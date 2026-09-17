-- SOFTWARE MANAGEMENT SYSTEM
-- DML SCRIPT
-- SQLite

INSERT INTO Department
VALUES
(1, 'Software Development', 'Hyderabad'),
(2, 'Testing', 'Vijayawada'),
(3, 'Artificial Intelligence', 'Visakhapatnam'),
(4, 'Human Resources', 'Guntur');


INSERT INTO Employee
VALUES
(101, 'Rahul', 'rahul@gmail.com', '9876543210', 'Developer', 1),
(102, 'Priya', 'priya@gmail.com', '9876543211', 'Tester', 2),
(103, 'Arjun', 'arjun@gmail.com', '9876543212', 'AI Engineer', 3),
(104, 'Sneha', 'sneha@gmail.com', '9876543213', 'Developer', 1),
(105, 'Kiran', 'kiran@gmail.com', '9876543214', 'HR Manager', 4);


INSERT INTO Client
VALUES
(201, 'ABC Technologies', '9000000001',
 'abc@gmail.com', 'Hyderabad'),

(202, 'XYZ Solutions', '9000000002',
 'xyz@gmail.com', 'Bangalore'),

(203, 'Global Soft', '9000000003',
 'global@gmail.com', 'Chennai');


INSERT INTO Project
VALUES
(301, 'Bank Management System', 201,
 '2026-01-10', '2026-06-30', 'Completed'),

(302, 'Hospital Management System', 202,
 '2026-02-15', '2026-08-30', 'In Progress'),

(303, 'AI Chatbot', 203,
 '2026-03-01', '2026-09-30', 'In Progress');


INSERT INTO Task
VALUES
(401, 301, 'Database Design', 101,
 'Completed', '2026-02-10'),

(402, 301, 'Frontend Development', 104,
 'Completed', '2026-04-15'),

(403, 302, 'Requirement Analysis', 102,
 'Completed', '2026-03-20'),

(404, 302, 'Testing', 102,
 'In Progress', '2026-08-15'),

(405, 303, 'AI Model Development', 103,
 'In Progress', '2026-07-30');


INSERT INTO Team
VALUES
(501, 'Bank Project Team', 301),
(502, 'Hospital Project Team', 302),
(503, 'AI Project Team', 303);


INSERT INTO Milestone
VALUES
(601, 301, 'Database Completed',
 '2026-02-10', 'Completed'),

(602, 301, 'Final Testing',
 '2026-05-20', 'Completed'),

(603, 302, 'Prototype Completed',
 '2026-05-30', 'Completed'),

(604, 303, 'AI Model Ready',
 '2026-08-15', 'In Progress');


INSERT INTO Resource
VALUES
(701, 'Development Laptop', 'Hardware', 'Available', 501),

(702, 'Testing Server', 'Server', 'Available', 502),

(703, 'GPU Server', 'Hardware', 'In Use', 503),

(704, 'Database Server', 'Server', 'Available', 501);
