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
--LIKE _R%
SELECT * FROM PM.Projects WHERE Title like '%_R%'
SELECT * FROM PM.Projects WHERE Title like '%_R_%'
SELECT * FROM PM.Projects WHERE InitialCost like '%_5%'
--TOP
SELECT TOP 3 * From PM.Projects
SELECT TOP 2 PERCENT * From PM.Projects
--ORDER BY
SELECT TOP 3 * From PM.Projects
SELECT * FROM PM.Projects ORDER BY StartDate;
SELECT * FROM PM.Projects ORDER BY StartDate DESC;
SELECT * FROM PM.Projects ORDER BY InitialCost, StartDate DESC;
--GROUP BY
SELECT Title,COUNT(*) FROM PM.Projects GROUP BY Title;
SELECT ManagerId,COUNT(*) FROM PM.Projects GROUP BY ManagerId;
SELECT ManagerId,COUNT(*) FROM PM.Projects WHERE Parked = 0 GROUP BY ManagerId HAVING COUNT(*) >= 2;


