/*Count Statements*/
SELECT COUNT(*) AS 'Alumni Records'
FROM [Smith.Alumni]

SELECT COUNT(*) AS 'Company Records'
FROM [Smith.Company]

SELECT COUNT(*) AS 'Alumni Expertise'
FROM [Smith.Expertise]

SELECT COUNT(*) AS 'Alumni Job Details'
FROM [Smith.Job]

SELECT COUNT(*) AS 'Alumni Job ID and UID'
FROM [Smith.JobStatus]

SELECT COUNT(*) AS 'Alumni Job ID and UID'
FROM [Smith.SchoolInformation]

SELECT COUNT(*) AS 'Alumni’’s Personal School Information'
FROM [Smith.SchoolInformation]

SELECT COUNT(*) AS 'Alumni Full Time Work Information'
FROM [Smith.WorkFullTime]

SELECT COUNT(*) AS 'Alumni Internship Work Information'
FROM [Smith.WorkInternship]

/*What is the First name, Last name, contact number, Visa status, Job title, Network, Industry and Company of an Alumni whose First Name is ‘John’?*/
SELECT ALMFNAME, ALMLNAME, PHONE, INITIALVISASTATUS, JOBTITLE, NETWORK, INDUSTRY, COMNAME
FROM SMITH_ALL
WHERE ALMFNAME ='JOHN';
/*What is the First name, Last name, contact number, Job title and Company of  all the Alumni whose Job title contains the word ‘analyst’?*/
SELECT ALMFNAME, ALMLNAME, JOBTITLE, COMNAME 
FROM SMITH_ALL
WHERE JOBTITLE LIKE '%ANALYST%';
/*What is the First name, Last name, Company Name, Job title and Salary of all the Alumni for the top 5 salaries?*/
SELECT DISTINCT TOP 5 ALMFNAME, ALMLNAME, COMNAME, JOBTITLE, SALARY FROM SMITH_ALL
ORDER BY SALARY DESC;
/* What is the First name, Last name, contact number, Visa status, Job title, Network, Industry and Company of all the Alumni whose Company is ‘ZS’?*/
SELECT ALMFNAME, ALMLNAME, PHONE, INITIALVISASTATUS, JOBTITLE, NETWORK, INDUSTRY, COMNAME
FROM SMITH_ALL
WHERE COMNAME='ZS';

/* What is the average salary for the full-time job profile?*/

SELECT AVG(SALARY) FROM [SMITH.WORKFULLTIME] AS "AVERAGE SALARY";

/* What is the First name, Last name, Company Name of all the Alumni who work in the ‘consulting’ industry?*/
SELECT ALMFNAME, ALMLNAME, COMNAME FROM SMITH_ALL
WHERE INDUSTRY='CONSULTING';

/* What is the First name, Last name, contact number, Visa status, Job title, Network, Industry and Company of all the Alumni whose Initial Visa Status is ‘F1’?*/
SELECT ALMFNAME, ALMLNAME, PHONE, INITIALVISASTATUS, JOBTITLE, NETWORK, INDUSTRY, COMNAME
FROM SMITH_ALL
WHERE INITIALVISASTATUS='F1';

