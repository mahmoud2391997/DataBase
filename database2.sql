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
--DISTINCT
SELECT DISTINCT Title FROM PM.Projects;
SELECT DISTINCT InitialCost FROM PM.Projects;
--tables JOIN
SELECT * FROM PM.Projects;
--PRJNO,TITLE, MANAGER_EMAIL
SELECT * FROM PM.Projects,PM.Managers;
SELECT PRJNO, Title, Email FROM PM.Projects,PM.Managers;--cartidisn product
SELECT PRJNO, Title, Email,PM.Managers.Id,PM.Projects.ManagerId FROM PM.Projects, PM.Managers 
WHERE PM.Projects.ManagerId = PM.Managers.Id;

--INNER JOIN match in two tables
SELECT PRJNO AS N'رقم المشروع'
, Title AS N'عنوان المشروع'
, Email AS N'البريد الالكتروني لمدير المشروع'
FROM PM.Projects AS P INNER JOIN PM.Managers AS M 
ON P.ManagerId = M.Id;
--LEFT JOIN all rows from left table even no match
SELECT * FROM PM.Projects;
SELECT * FROM PM.Companies;

SELECT P.PRJNO 
, P.Title 
, C.CompanyName
FROM PM.Projects AS P LEFT JOIN PM.Companies AS C 
ON P.CRNNO = C.CRNNO;
SELECT P.PRJNO 
, P.Title 
,C.CRNNO
, C.CompanyName
FROM  PM.Companies AS C  LEFT JOIN PM.Projects AS P 
ON P.CRNNO = C.CRNNO;
--RIGHT JOIN all rows from left table even no match
SELECT P.PRJNO 
, P.Title 
, C.CompanyName
FROM PM.Projects AS P RIGHT JOIN PM.Companies AS C 
ON P.CRNNO = C.CRNNO;
SELECT P.PRJNO 
, P.Title 
, C.CompanyName
FROM PM.Projects AS P FULL JOIN PM.Companies AS C 
ON P.CRNNO = C.CRNNO;

