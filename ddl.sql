-- SOFTWARE MANAGEMENT SYSTEM
-- DDL SCRIPT
-- SQLite

DROP TABLE IF EXISTS Resource;
DROP TABLE IF EXISTS Milestone;
DROP TABLE IF EXISTS Team;
DROP TABLE IF EXISTS Task;
DROP TABLE IF EXISTS Project;
DROP TABLE IF EXISTS Client;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Department;

CREATE TABLE Department (
    Department_ID INTEGER PRIMARY KEY,
    Department_Name VARCHAR(100) NOT NULL,
    Location VARCHAR(100)
);

CREATE TABLE Employee (
    Employee_ID INTEGER PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    Role VARCHAR(50),
    Department_ID INTEGER,
    FOREIGN KEY (Department_ID)
        REFERENCES Department(Department_ID)
);

CREATE TABLE Client (
    Client_ID INTEGER PRIMARY KEY,
    Client_Name VARCHAR(100) NOT NULL,
    Contact VARCHAR(15),
    Email VARCHAR(100) UNIQUE,
    Address VARCHAR(200)
);

CREATE TABLE Project (
    Project_ID INTEGER PRIMARY KEY,
    Project_Name VARCHAR(100) NOT NULL,
    Client_ID INTEGER,
    Start_Date DATE,
    End_Date DATE,
    Status VARCHAR(50),
    FOREIGN KEY (Client_ID)
        REFERENCES Client(Client_ID)
);

CREATE TABLE Task (
    Task_ID INTEGER PRIMARY KEY,
    Project_ID INTEGER,
    Task_Name VARCHAR(150) NOT NULL,
    Assigned_To INTEGER,
    Status VARCHAR(50),
    Deadline DATE,
    FOREIGN KEY (Project_ID)
        REFERENCES Project(Project_ID),
    FOREIGN KEY (Assigned_To)
        REFERENCES Employee(Employee_ID)
);

CREATE TABLE Team (
    Team_ID INTEGER PRIMARY KEY,
    Team_Name VARCHAR(100) NOT NULL,
    Project_ID INTEGER UNIQUE,
    FOREIGN KEY (Project_ID)
        REFERENCES Project(Project_ID)
);

CREATE TABLE Milestone (
    Milestone_ID INTEGER PRIMARY KEY,
    Project_ID INTEGER,
    Milestone_Name VARCHAR(150) NOT NULL,
    Due_Date DATE,
    Status VARCHAR(50),
    FOREIGN KEY (Project_ID)
        REFERENCES Project(Project_ID)
);

CREATE TABLE Resource (
    Resource_ID INTEGER PRIMARY KEY,
    Resource_Name VARCHAR(100) NOT NULL,
    Type VARCHAR(50),
    Availability VARCHAR(50),
    Team_ID INTEGER,
    FOREIGN KEY (Team_ID)
        REFERENCES Team(Team_ID)
);
