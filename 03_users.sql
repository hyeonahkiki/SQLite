.mode csv
.import users.csv users
.tables
-- 전체 출력
-- SELECT * FROM users;

.headers on

-- .read 03_users.sql

-- 나이가 30 이상인 사람
-- SELECT * FROM users WHERE age>=30;

-- 나이가 30이상인 사람의 이름
-- SELECT first_name FROM users WHERE age>=30;

-- 나이가 30이상이면서 성이 김인 사람의 성과 나이만
-- SELECT last_name, age FROM users WHERE age>=30 and last_name='김';

--users가 총 몇명인지
-- SELECT COUNT(*) FROM users;

--나이가 30이상이고 성이 김인 사람은 몇명인지
-- SELECT COUNT(*) FROM users WHERE age>=30 and last_name='김';

--나이가 30이상인사람들의 평균나이
-- SELECT AVG(age) FROM users WHERE age>=30;

--계좌잔액이 가장 높은사람과 액수는?
-- SELECT first_name, MAX(balance) FROM users;

--30살이상인 사람의 계좌 평균 잔액은?
-- SELECT AVG(balance) FROM users WHERE age>=30;

-- .schema users

--나이가 20대인 사람은 몇명인지
-- SELECT COUNT(*) FROM users WHERE age LIKE'2_';

-- 지역번호가 02인 사람만
-- SELECT COUNT(*) FROM users WHERE phone LIKE'02-%';

--이름이 '준'으로 끝나는 사람만
-- SELECT COUNT(*) FROM users WHERE first_name LIKE'%준';

--중간번호가 5114인 사람
-- SELECT COUNT(*) FROM users WHERE phone LIKE'%-5114-%';

--나이순으로 오름차순 정렬하여 상위 10개만 뽑아보면
-- SELECT age FROM users ORDER BY age ASC LIMIT 10;

--나이순, 성 순으로 오름차순 정렬하여 상위 10개만
-- SELECT age, last_name FROM users ORDER by age, last_name ASC LIMIT 10;

--계좌 잔액순으로 내림차순 정렬하여 해당하는 사람의 성과 이름을 10개
SELECT last_name, first_name, balance FROM users ORDER BY balance DESC LIMIT 10;


DROP TABLE users;