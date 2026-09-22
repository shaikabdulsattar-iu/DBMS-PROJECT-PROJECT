-- SOFTWARE MANAGEMENT SYSTEM
-- SQL QUERIES


-- 1. Display all employees
SELECT * FROM Employee;


-- 2. Display all projects
SELECT * FROM Project;


-- 3. Display all teams
SELECT * FROM Team;


-- 4. Display all team members
SELECT * FROM Team_Member;


-- 5. Display all sprints
SELECT * FROM Sprint;


-- 6. Display all tasks
SELECT * FROM Task;


-- 7. Display all bugs
SELECT * FROM Bug;


-- 8. Employee with Project
SELECT
    E.employee_id,
    E.first_name,
    E.last_name,
    P.project_name,
    P.status
FROM Employee E
JOIN Project P
ON E.employee_id = P.manager_id;


-- 9. Project with Client
-- Not applicable because Client table is not included
-- in the current database design.


-- 10. Project with Team
SELECT
    P.project_name,
    T.team_name
FROM Project P
JOIN Team T
ON P.project_id = T.project_id;


-- 11. Team with Team Leader
SELECT
    T.team_name,
    E.first_name,
    E.last_name
FROM Team T
JOIN Employee E
ON T.lead_id = E.employee_id;


-- 12. Display Team Members with Names
SELECT
    T.team_name,
    E.first_name,
    E.last_name,
    TM.joined_date
FROM Team_Member TM
JOIN Team T
ON TM.team_id = T.team_id
JOIN Employee E
ON TM.employee_id = E.employee_id;


-- 13. Project with Sprint
SELECT
    P.project_name,
    S.sprint_name,
    S.status
FROM Project P
JOIN Sprint S
ON P.project_id = S.project_id;


-- 14. Task with Employee
SELECT
    T.task_id,
    T.task_title,
    E.first_name,
    E.last_name,
    T.status
FROM Task T
JOIN Employee E
ON T.assigned_to = E.employee_id;


-- 15. Display Bugs with Assigned Employees
SELECT
    B.bug_id,
    B.title,
    B.severity,
    E.first_name,
    E.last_name
FROM Bug B
JOIN Employee E
ON B.assigned_to = E.employee_id;


-- 16. Count Employees
SELECT COUNT(*) AS Total_Employees
FROM Employee;


-- 17. Count Projects
SELECT COUNT(*) AS Total_Projects
FROM Project;


-- 18. Count Teams
SELECT COUNT(*) AS Total_Teams
FROM Team;


-- 19. Count Tasks
SELECT COUNT(*) AS Total_Tasks
FROM Task;


-- 20. Count Bugs
SELECT COUNT(*) AS Total_Bugs
FROM Bug;


-- 21. Count Tasks for Each Sprint
SELECT
    sprint_id,
    COUNT(*) AS Total_Tasks
FROM Task
GROUP BY sprint_id;


-- 22. Count Employees in Each Team
SELECT
    team_id,
    COUNT(*) AS Employee_Count
FROM Team_Member
GROUP BY team_id;


-- 23. Count Projects Managed by Each Employee
SELECT
    manager_id,
    COUNT(*) AS Total_Projects
FROM Project
GROUP BY manager_id;


-- 24. Display Completed Projects
SELECT *
FROM Project
WHERE status = 'Completed';


-- 25. Display Projects In Progress
SELECT *
FROM Project
WHERE status = 'In Progress';


-- 26. Display High Priority Tasks
SELECT *
FROM Task
WHERE priority = 'High';


-- 27. Display Open Bugs
SELECT *
FROM Bug
WHERE status = 'Open';


-- 28. Display Employees with Salary Greater Than 35000
SELECT *
FROM Employee
WHERE salary > 35000;


-- 29. Project with Number of Tasks
SELECT
    P.project_name,
    COUNT(T.task_id) AS Total_Tasks
FROM Project P
JOIN Sprint S
ON P.project_id = S.project_id
LEFT JOIN Task T
ON S.sprint_id = T.sprint_id
GROUP BY P.project_id, P.project_name;


-- 30. Display Employees in Each Designation
SELECT
    designation,
    COUNT(*) AS Employee_Count
FROM Employee
GROUP BY designation;


-- 31. Display Bugs with Severity
SELECT
    title,
    severity,
    status
FROM Bug
ORDER BY severity;


-- 32. Display Tasks Due Before a Specific Date
SELECT *
FROM Task
WHERE due_date < '2026-06-30';


-- 33. Display Employees Earning Above Average Salary
SELECT *
FROM Employee
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
);


-- 34. Display Employees Without Assigned Tasks
SELECT
    E.employee_id,
    E.first_name,
    E.last_name
FROM Employee E
LEFT JOIN Task T
ON E.employee_id = T.assigned_to
WHERE T.task_id IS NULL;


-- 35. UPDATE Project Status
UPDATE Project
SET status = 'Completed'
WHERE project_id = 2;


-- 36. UPDATE Employee Salary
UPDATE Employee
SET salary = 55000
WHERE employee_id = 1;


-- 37. UPDATE Task Status
UPDATE Task
SET status = 'Done'
WHERE task_id = 3;


-- 38. UPDATE Bug Status
UPDATE Bug
SET status = 'Resolved'
WHERE bug_id = 1;


-- 39. DELETE Bug Record
DELETE FROM Bug
WHERE bug_id = 4;


-- 40. DELETE Team Member Record
DELETE FROM Team_Member
WHERE team_id = 4
AND employee_id = 5;
