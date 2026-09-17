-- SOFTWARE MANAGEMENT SYSTEM
-- SQL QUERIES


-- 1. Display all departments
SELECT * FROM Department;


-- 2. Display all employees
SELECT * FROM Employee;


-- 3. Display all clients
SELECT * FROM Client;


-- 4. Display all projects
SELECT * FROM Project;


-- 5. Display all tasks
SELECT * FROM Task;


-- 6. Employee with Department
SELECT
    E.Employee_ID,
    E.Name,
    E.Role,
    D.Department_Name
FROM Employee E
JOIN Department D
ON E.Department_ID = D.Department_ID;


-- 7. Project with Client
SELECT
    P.Project_ID,
    P.Project_Name,
    C.Client_Name,
    P.Status
FROM Project P
JOIN Client C
ON P.Client_ID = C.Client_ID;


-- 8. Task with Employee
SELECT
    T.Task_ID,
    T.Task_Name,
    E.Name AS Employee_Name,
    T.Status,
    T.Deadline
FROM Task T
JOIN Employee E
ON T.Assigned_To = E.Employee_ID;


-- 9. Project with Team
SELECT
    P.Project_Name,
    T.Team_Name
FROM Project P
JOIN Team T
ON P.Project_ID = T.Project_ID;


-- 10. Project with Milestone
SELECT
    P.Project_Name,
    M.Milestone_Name,
    M.Due_Date,
    M.Status
FROM Project P
JOIN Milestone M
ON P.Project_ID = M.Project_ID;


-- 11. Count employees
SELECT COUNT(*) AS Total_Employees
FROM Employee;


-- 12. Count projects
SELECT COUNT(*) AS Total_Projects
FROM Project;


-- 13. Count tasks for each project
SELECT
    Project_ID,
    COUNT(*) AS Total_Tasks
FROM Task
GROUP BY Project_ID;


-- 14. Count employees in each department
SELECT
    Department_ID,
    COUNT(*) AS Employee_Count
FROM Employee
GROUP BY Department_ID;


-- 15. Completed projects
SELECT *
FROM Project
WHERE Status = 'Completed';


-- 16. Projects in progress
SELECT *
FROM Project
WHERE Status = 'In Progress';


-- 17. Employees in Software Development
SELECT
    E.Name,
    E.Role
FROM Employee E
JOIN Department D
ON E.Department_ID = D.Department_ID
WHERE D.Department_Name = 'Software Development';


-- 18. Resources currently in use
SELECT *
FROM Resource
WHERE Availability = 'In Use';


-- 19. Project with number of tasks
SELECT
    P.Project_Name,
    COUNT(T.Task_ID) AS Total_Tasks
FROM Project P
LEFT JOIN Task T
ON P.Project_ID = T.Project_ID
GROUP BY P.Project_ID, P.Project_Name;


-- 20. UPDATE example
UPDATE Project
SET Status = 'Completed'
WHERE Project_ID = 302;


-- 21. UPDATE employee phone
UPDATE Employee
SET Phone = '9999999999'
WHERE Employee_ID = 101;


-- 22. DELETE example
DELETE FROM Milestone
WHERE Milestone_ID = 604;
