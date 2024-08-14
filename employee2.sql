
-- COMMIT - 삽입, 수정, 삭제 후 반드시 명시해야한다
-- ROLLBACK - 삽입, 수정, 삭제 후 취소할 때 사용함(단, COMMIT 하기 전에 수행해야함)
-- 데이터만 날리는 게 DELETE, 테이블을 날리는 게 DROP

-- 테이블은 유지되고 데이터만 삭제됨(DROP - 테이블이 삭제됨)
DELETE FROM employee;
SELECT * FROM employee;
ROLLBACK;
SELECT * FROM employee;


-- 검색) 문자열 검색 - LIKE '%포함된문자%' +) SELECT는 COMMIT; 안함
SELECT * FROM employee WHERE name like '%박%';


-- 문제) '김사원'의 급여를 320만원 수정하시오
UPDATE employee SET salary = 3200000 WHERE salary = 3000000;
UPDATE employee SET salary = 3200000 WHERE name = '김사원';
UPDATE employee SET salary = 3200000 WHERE emp_id = 'e101';

-- DML 언어(수정 - UPDATE 테이블이름 SET 칼럼명='값' WHERE 칼럼명)
-- '이사원'의 이름을 '이나라'로 변경하시오(UPDATE)
UPDATE employee SET name ='이나라' WHERE name = '이사원';
-- 정렬(SELECT * FROM employee ORDER BY 칼럼명 DESC) (내림차순- DESC, 오름차순 - 생략 또는 ASC)

-- 검색) 급여가 많은 순으로 정렬하시오.
SELECT * FROM employee ORDER BY salary DESC
SELECT * FROM employee ORDER BY salary ASC;

-- 검색) 급여가 350만원 이상인 직원 정보를 검색하시오
SELECT * FROM employee WHERE salary >= 3500000;

COMMIT;

-- 검색) 이름이 '이사원'의 정보를 검색하시오
SELECT * FROM employee WHERE name = '이사원';

-- DML언어 (검색 - SELECT * FROM 테이블이름)
SELECT * FROM employee;

-- DML언어 (삽입 - INSERT INTO 테이블이름(칼럼이름) VALUES(값1, 값2))
-- 문자는 홑따옴표만 가능
INSERT INTO employee(emp_id, name, salary) VALUES('e101', '김사원', 3000000);
INSERT INTO employee(emp_id, name, salary) VALUES('e102', '이사원', 3500000);
INSERT INTO employee(emp_id, name, salary) VALUES('e103', '박대리', 4000000);

-- DML언어 (삭제 - DELETE FROM 테이블이름 WHERE 칼럼이름)
DELETE FROM employee WHERE emp_id = 'e103'; 


SELECT * FROM WHERE name = '이사원';
