/* 실행이 안되면 맨윗줄에서 실행
*/
INSERT INTO employee(emp_id, name) VALUES('e104', '고신입');
SELECT * FROM employee;

-- INSERT -> UPDATE -> DELETE 순서

-- 테이블 생성 (--가 주석. like 파이썬 #)
/* 여러단 주석 처리 방법
칼럼이름은 소문자
테이블 생성
DDL 언어 - CREATE TABLE 테이블 이름(칼럼이름 자료형)
자료형 - 숫자(INTEGER), 문자(TEXT)
기본키(PRIMARY KEY) 설정 - 중복 체크, NOT NULL
사원(employee) 테이블 - 아이디(emp_id), 이름(name), 급여(salary)
*/ 

CREATE TABLE employee(
	emp_id  TEXT PRIMARY KEY,
	name TEXT NOT NULL,
	salary INTEGER
); 

-- DML언어 (검색 - SELECT * FROM 테이블이름)
SELECT * FROM employee;

-- DML언어 (삽입 - INSERT INTO 테이블이름(칼럼이름) VALUES(값1, 값2))
-- 문자는 홑따옴표만 가능
-- 칼럼값이 전체일 경우 테이블명 다음의 칼럼명 생략가능함(보통 안쓰고 안전하게 할 경우는 다 씀)
INSERT INTO employee VALUES('e101', '김사원', 3000000);
INSERT INTO employee(emp_id, name, salary) VALUES('e102', '이사원', 3500000);
INSERT INTO employee(emp_id, name, salary) VALUES('e103', '박대리', 4000000);
INSERT INTO employee(emp_id, name) VALUES('e104', '고신입');

-- 검색) 이름이 '이사원'의 정보를 검색하시오
SELECT * FROM employee WHERE name = '이사원';

COMMIT;

-- 검색) 급여가 350만원 이상인 직원 정보를 검색하시오
SELECT * FROM employee WHERE salary >= 3500000;

-- 검색) 급여가 많은 순으로 정렬하시오.
SELECT * FROM employee ORDER BY salary DESC
SELECT * FROM employee ORDER BY salary ASC;

-- DML 언어(수정 - UPDATE 테이블이름 SET 칼럼명='값' WHERE 칼럼명)
-- '이사원'의 이름을 '이나라'로 변경하시오(UPDATE)
UPDATE employee SET name ='이나라' WHERE name = '이사원';
-- 정렬(SELECT * FROM employee ORDER BY 칼럼명 DESC) (내림차순- DESC, 오름차순 - 생략 또는 ASC)


-- 문제) '김사원'의 급여를 320만원 수정하시오
-- 오답 UPDATE employee SET salary = 3200000 WHERE salary = 3000000; -> 급여가 공통일 경우가 있음
-- 오답 UPDATE employee SET salary = 3200000 WHERE name = '김사원';  -> 김사원이 또 있을 수 있음
UPDATE employee SET salary = 3200000 WHERE emp_id = 'e101';

-- 검색) 문자열 검색 - LIKE '%포함된문자%' +) SELECT는 COMMIT; 안함
SELECT * FROM employee WHERE name like '%박%';

-- COMMIT - 삽입, 수정, 삭제 후 반드시 명시해야한다
-- ROLLBACK - 삽입, 수정, 삭제 후 취소할 때 사용함(단, COMMIT 하기 전에 수행해야함)
-- 데이터만 날리는 게 DELETE, 테이블을 날리는 게 DROP

-- 테이블은 유지되고 데이터만 삭제됨(DROP - 테이블이 삭제됨)
DELETE FROM employee;
SELECT * FROM employee;
ROLLBACK;
SELECT * FROM employee;

-- 테이블 삭제 (DROP TABLE 테이블이름)
DROP TABLE employee;
SELECT * FROM employee;