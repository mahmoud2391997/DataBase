USE PMDB;
GO
INSERT INTO PM.Companies (CRNNO,CompanyName) VALUES (10,N'Company A');
INSERT INTO PM.Companies (CompanyName,CRNNO) VALUES (N'Company B',100);
INSERT INTO PM.Companies  VALUES (1030,N'Company A');
INSERT INTO PM.Companies  VALUES 
              (1040,N'Company D'),
		      (1050,N'Company E'),
			  (1060,N'Company F'),
			  (1070,N'Company G');
GO
--SELECT
SELECT  [PRJNO], [Title], [ManagerId], [StartDate], [InitialCost], [Parked], [CRNNO]
FROM PM.Projects
SELECT  *
FROM PM.Projects
SELECT [PRJNO], [Title]
FROM PM.Projects
SELECT *
FROM PM.Projects
WHERE InitialCost >= 1000000;
SELECT *
FROM PM.Projects
WHERE NOT InitialCost >= 1000000;
SELECT *
FROM PM.Projects
WHERE InitialCost >= 1000000 AND StartDate >= '2022-03-01';

SELECT *
FROM PM.Projects
WHERE InitialCost >= 1000000 OR StartDate >= '2022-03-01';
-- LIKE (%,_)
--xx% starts with
SELECT * FROM PM.Projects WHERE Title like 'C%'
--%xx starts with
SELECT * FROM PM.Projects WHERE Title like '%P'
--%xx% starts with
SELECT * FROM PM.Projects WHERE Title like '%DESK%'
