CREATE VIEW SMITH_ALL
AS
SELECT A.UID, A.ALMFNAME , A.ALMLNAME, A.DOB, A.GENDER, A.ADDRESS, A.EMAIL, A.PHONE, A.INITIALVISASTATUS, A.ALUMNILINKDIN, J.JOBID, J.JOBTITLE, J.NETWORK, J.JOBDESC, J.RATING, J.INDUSTRY,C.SEQNUM,C.COMNAME,C.VISASPONSORSHIP,F.SALARY,I.PAYPERHOUR,E.CERTIFICATION
FROM [Smith.Alumni] A INNER JOIN [Smith.Job] J ON A.UID=J.UID 
LEFT JOIN [Smith.Company] C ON J.SEQNUM=C.SEQNUM
LEFT JOIN [Smith.Expertise] E ON A.UID=E.UID
LEFT JOIN [Smith.WorkFullTime] F ON J.JOBID=F.JOBID
LEFT JOIN [Smith.WorkInternship] I ON J.JOBID=I.JOBID;


CREATE VIEW SMITH_UC
AS
SELECT A.ALMFNAME, A.ALMLNAME, A.PHONE, A.INITIALVISASTATUS, J.JOBTITLE, J.NETWORK, J.INDUSTRY, C.COMNAME
FROM [Smith.Alumni] A INNER JOIN [Smith.Job] J ON A.UID=J.UID 
LEFT JOIN [Smith.Company] C ON J.SEQNUM=C.SEQNUM;

