/*Alumni*/
CREATE TABLE [Smith.Alumni] ( 
uid Numeric(9) NOT NULL, 
almFName VARCHAR(20) NOT NULL, 
almMName VARCHAR(20), 
almLName VARCHAR(20) NOT NULL, 
dOB DATE NOT NULL, 
gender CHAR(10) NOT NULL, 
address VARCHAR(100) NOT NULL, 
email VARCHAR(100) NOT NULL, 
phone Numeric(10), 
initialVisaStatus VARCHAR(10) NOT NULL, 
alumniLinkdin VARCHAR(100),           
CONSTRAINT pk_Smith_Alumni_uid PRIMARY KEY (uid)); 
 
/*School Information (Weak Entity, No PK, FK=uid)*/
CREATE TABLE [Smith.SchoolInformation] ( 
uid NUMERIC(9) NOT NULL, 
startDate Date,  
endDate Date, 
gpa Numeric(3), 
elective VARCHAR(50), 
assistantship Char(5) 
Constraint fk_Smith_SchoolInfo_uid FOREIGN KEY(uid) REFERENCES [Smith.Alumni] (uid) ON DELETE NO ACTION ON UPDATE CASCADE); 
 
/*Expertise*/ 
CREATE TABLE [Smith.Expertise] ( 
uid Numeric(9) NOT NULL, 
technicalSkill VARCHAR(50), 
softSkillPrimary VARCHAR(100), 
softSkillSecondary VARCHAR(100), 
certification VARCHAR(100), 
Constraint fk_Smith_Expertise_uid FOREIGN KEY(uid) REFERENCES [Smith.Alumni] (uid) ON DELETE NO ACTION ON UPDATE NO ACTION 
); 
 
/*Company*/ 
CREATE TABLE [Smith.Company] (  
seqNum int identity(1001,1),  
comName VARCHAR(50),  
visaSponsorship VARCHAR(10)  
CONSTRAINT pk_Smith_Company_seqNum PRIMARY KEY (seqNum)   
);  
 
 




/*Job*/ 
CREATE TABLE [Smith.Job] (   
uid Numeric(9) not null,  
seqNum int not null,  
jobId int identity(5001,1) not null,  
jobTitle VARCHAR(50),  
network VARCHAR(100),  
jobDesc VARCHAR(200),  
rating Numeric(10,2),  
industry VARCHAR(50),  
CONSTRAINT pk_Smith_Job_jobId PRIMARY KEY (jobId),  
Constraint fk_Smith_Job_uid FOREIGN KEY(uid) REFERENCES [Smith.Alumni] (uid) ON DELETE CASCADE ON UPDATE CASCADE,  
Constraint fk_Smith_Job_seqNum FOREIGN KEY(seqNum) REFERENCES [Smith.Company] (seqNum) ON DELETE NO ACTION ON UPDATE NO ACTION  
);  
 
/*Job Status  (Weak associative entity, No PK, FK=uid,jobId )*/
CREATE TABLE [Smith.JobStatus] ( 
uid Numeric(9), 
jobId Int, 
Constraint fk_Smith_JobS_uid FOREIGN KEY(uid) REFERENCES [Smith.Alumni] (uid) ON DELETE NO ACTION ON UPDATE NO ACTION, 
Constraint fk_Smith_JobS_jobId FOREIGN KEY(jobId) REFERENCES [Smith.Job] (jobId) ON DELETE CASCADE ON UPDATE CASCADE, 
CONSTRAINT pk_Smith_JobStatus PRIMARY KEY(uid,jobId) 
); 
 
/*Work Full Time (Weak subtype entity, No PK, FK=uid,jobId ) */
CREATE TABLE [Smith.WorkFullTime] ( 
uid Numeric(9), 
jobId Int, 
salary Money, 
startDate Date, 
Constraint fk_Smith_WFT_uid FOREIGN KEY(uid) REFERENCES [Smith.Alumni] (uid) ON DELETE NO ACTION ON UPDATE NO ACTION, 
Constraint fk_Smith_WFT_jobId FOREIGN KEY(jobId) REFERENCES [Smith.Job] (jobId) ON DELETE CASCADE ON UPDATE CASCADE 
); 
 
/*Work Internship (Weak subtype entity, No PK, FK=uid,jobId ) */
CREATE TABLE [Smith.WorkInternship] ( 
uid Numeric(9), 
jobId Int, 
payPerHour Money, 
startDate Date, 
endDate Date, 
Constraint fk_Smith_WI_uid FOREIGN KEY(uid) REFERENCES [Smith.Alumni] (uid) ON DELETE NO ACTION ON UPDATE NO ACTION, 
Constraint fk_Smith_WI_jobId FOREIGN KEY(jobId) REFERENCES [Smith.Job] (jobId) ON DELETE CASCADE ON UPDATE CASCADE 
);
