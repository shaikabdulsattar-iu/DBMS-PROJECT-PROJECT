USE Software_Management_System;

-- 1. Insert Employee Records
INSERT INTO Employee
(first_name, last_name, designation, email, experience_years, salary)
VALUES
('Abdul', 'Sattar', 'Project Manager', 'abdul@gmail.com', 3, 50000),
('Naveen', 'Kumar', 'Developer', 'naveen@gmail.com', 2, 35000),
('Harsha', 'Vardhan', 'Tester', 'harsha@gmail.com', 1, 30000),
('Syam', 'Kumar', 'Developer', 'syam@gmail.com', 2, 38000),
('Rahul', 'Sharma', 'Designer', 'rahul@gmail.com', 4, 45000),
('Priya', 'Reddy', 'Software Engineer', 'priya@gmail.com', 3, 42000);


-- 2. Insert Project Records
INSERT INTO Project
(project_name, description, start_date, end_date, status, manager_id)
VALUES
('Software Management System', 'DBMS project', '2026-01-01', '2026-06-30', 'In Progress', 1),
('Online Banking System', 'Banking application', '2026-02-01', '2026-08-30', 'Planning', 1),
('E-Commerce Website', 'Online shopping platform', '2026-03-01', '2026-09-30', 'In Progress', 2);


-- 3. Insert Team Records
INSERT INTO Team
(team_name, project_id, lead_id)
VALUES
('Development Team', 1, 2),
('Testing Team', 1, 3),
('Banking Team', 2, 4),
('Web Design Team', 3, 5);


-- 4. Insert Team_Member Records
INSERT INTO Team_Member
(team_id, employee_id, joined_date)
VALUES
(1, 1, '2026-01-01'),
(1, 2, '2026-01-02'),
(1, 4, '2026-01-03'),
(2, 3, '2026-01-05'),
(2, 6, '2026-01-06'),
(3, 1, '2026-02-01'),
(3, 4, '2026-02-02'),
(4, 5, '2026-03-01');


-- 5. Insert Sprint Records
INSERT INTO Sprint
(sprint_name, project_id, start_date, end_date, goal, status)
VALUES
('Sprint 1', 1, '2026-01-01', '2026-01-15', 'Database Design', 'Completed'),
('Sprint 2', 1, '2026-01-16', '2026-01-30', 'SQL Development', 'Active'),
('Sprint 3', 2, '2026-02-01', '2026-02-15', 'Banking Module', 'Planned'),
('Sprint 4', 3, '2026-03-01', '2026-03-15', 'Website Design', 'Active');


-- 6. Insert Task Records
INSERT INTO Task
(sprint_id, assigned_to, task_title, description, priority,
 story_points, status, due_date, completion_date)
VALUES
(1, 2, 'Create Database', 'Create database tables', 'High', 5, 'Done', '2026-01-10', '2026-01-09'),
(1, 3, 'Test Database', 'Test database operations', 'Medium', 3, 'Done', '2026-01-15', '2026-01-14'),
(2, 4, 'Write SQL Queries', 'Develop SQL queries', 'High', 8, 'In Progress', '2026-01-25', NULL),
(2, 6, 'Validate Data', 'Validate database records', 'Medium', 5, 'Todo', '2026-01-28', NULL),
(3, 4, 'Banking Module', 'Develop banking module', 'High', 8, 'Todo', '2026-02-12', NULL),
(4, 5, 'Design Website', 'Create website layout', 'Low', 3, 'In Progress', '2026-03-12', NULL);


-- 7. Insert Bug Records
INSERT INTO Bug
(task_id, reported_by, assigned_to, title, severity, status,
 reported_date, resolved_date)
VALUES
(1, 3, 2, 'Database Connection Error', 'High', 'Resolved', '2026-01-05', '2026-01-08'),
(2, 6, 3, 'Validation Error', 'Medium', 'Open', '2026-01-12', NULL),
(3, 3, 4, 'Query Execution Error', 'High', 'Open', '2026-01-20', NULL),
(5, 1, 4, 'Login Error', 'Critical', 'Open', '2026-02-05', NULL);
