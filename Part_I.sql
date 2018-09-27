/*parte 1*/
/*Create a tablespace with name 'quiz' and three datafiles. Each datafile of 15Mb.*/
CREATE TABLESPACE quiz
    DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\quiz.DBF' SIZE 15M,
     'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\quiz1.DBF' SIZE 15M,
     'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\quiz2.DBF' SIZE 15M
    EXTENT MANAGEMENT LOCAL AUTOALLOCATE;
    
/*Create a profile with idle time of 20 minutes, the name of the profile should be 'student'*/    
CREATE PROFILE student LIMIT IDLE_TIME 20;

/*3. Create an user named "usuario_1" with password "usuario_1". 
	- The user should be able to connect
	- The user should has the profile "student"
	- The user should be associated to the tablespace "quiz"
	- The user should be able to create tables WITHOUT USING THE DBA ROLE. */
CREATE USER usuario_1
IDENTIFIED BY usuario_1 
DEFAULT TABLESPACE quiz
QUOTA UNLIMITED ON quiz
PROFILE student;

CREATE ROLE DBA;
GRANT CONNECT TO DBA;
GRANT CONNECT TO usuario_1;
GRANT CREATE TABLE TO usuario_1;

/*4. Create an user named "usuario_2" with password "usuario_2"
	- The user should be able to connect
	- The user should has the profile "student"
	- The user should be associated to the tablespace "quiz"
	- The user shouldn't be able to create tables.*/
CREATE USER usuario_2
IDENTIFIED BY usuario_2 
DEFAULT TABLESPACE quiz
QUOTA UNLIMITED ON quiz
PROFILE student;

GRANT CONNECT TO usuario_2;

/*parte 1*/
CREATE TABLE ATTACKS
(
id INTEGER NOT NULL,
URL VARCHAR2(2048),
IP_ADDRESS VARCHAR2(255),
NUMBER_CF_ATTACKS INTEGER,
TIME_OF_LAST_ATTACKS TIMESTAMP,
CONSTRAINT ATTACKS_PK PRIMARY KEY (id)
);

/*3*/
--1
SELECT COUNT(URL) AS CANTIDAD
FROM ATTACKS
WHERE URL LIKE 'https%'
--2
    
    


    
    
    
    
    
    
    
    
    
    
    
    
    


/*CREATE ROL DESARROLLADOR*/
CREATE ROLE DESARROLLADOR;

GRANT CONNECT TO DESARROLLADOR;

GRANT DESARROLLADOR TO mguti;

GRANT CREATE TABLE TO DESARROLLADOR;


CREATE SEQUENCE agencies_seq
    START WITH 500
    INCREMENT BY 2
    NOCYCLE;
 /*MUESTRA EL ULTIMO VALOR CREDO*/   
SELECT agencies_seq.CURRVAL FROM DUAL;
/*INCREMENTA LA SECUENCIA*/
SELECT agencies_seq.NEXTVAL FROM DUAL;
    
    
    