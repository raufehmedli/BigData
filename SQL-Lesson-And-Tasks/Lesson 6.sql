select 
substr('telim merkezi',1,instr('telim merkezi',' ',1,1))||''||
substr('telim merkezi',instr('telim merkezi',' ',1,2)+1,
instr('telim merkezi',' ',1,3)- instr('telim merkezi',' ',1,2)-1)||' '||
substr('telim merkezi',instr ('telim merkezi',' ',1,1)+1,
instr('telim merkezi',' ',1,2)- instr('telim merkezi',' ',1,1)-1)||' '||
substr('telim merkezi', instr('telim merkezi',' ',1,3)+1,
length('telim merkezi')- instr('telim merkezi',' ',1,3)) as a
from dual;

--round
SELECT ROUND(145.87) FROM DUAL;

--floor
SELECT FLOOR(145.87) FROM DUAL;

--ceil
SELECT CEIL(145.87) FROM DUAL;

--trunc
SELECT TRUNC(145.87) FROM DUAL;

--sqrt
SELECT SQRT(256) FROM DUAL;

--median
SELECT MEDIAN(SALARY) FROM EMPLOYEE;

--mean
SELECT AVG(SALARY) FROM EMPLOYEE;

--variance
SELECT VARIANCE(SALARY) FROM EMPLOYEE;

--stddev
SELECT STDDEV(SALARY) FROM EMPLOYEE;

--ntile
SELECT NTILE(2) OVER(ORDER BY SALARY) FROM EMPLOYEE;

--instr
SELECT INSTR('SALAM DUNYA','L') FROM DUAL;

SELECT INSTR('SALAM DUNYA','A',1) FROM DUAL;

SELECT INSTR('SALAM DUNYA','A',1,2) FROM DUAL;

--substr
SELECT SUBSTR('SALAM DUNYA',1,5) FROM DUAL;

SELECT SUBSTR('SALAM DUNYA',7,5) FROM DUAL;

select substr('Rauf Ehmedli' , 1 , 
instr('Rauf Ehmedli', ' ' , 1 , 1)-1) from dual;

--replace
SELECT REPLACE('123SALAM','SALAM','456') FROM DUAL;
