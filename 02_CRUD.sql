CREATE TABLE classmates (
  name TEXT,
  age INT,
  address TEXT);


-- create
INSERT INTO classmates(name, age, address)
VALUES ('공현아', 27, '광주');

-- 데이터확인
SELECT * FROM classmates;

-- create
INSERT INTO classmates(name, address)
VALUES ('공현아', '광주');

-- create
INSERT INTO classmates
VALUES('홍길동', 24, '서울');

-- id자동으로 생성
SELECT rowid, * FROM classmates;

DROP TABLE classmates;

.tables
CREATE TABLE classmates(
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INT NOT NULL,
    address TEXT NOT NULL);

INSERT INTO classmates
VALUES('현아', 27, '광주');

-- 데이터확인
SELECT rowid, * FROM classmates;

DROP TABLE classmates;
.tables
CREATE TABLE classmates(
    name TEXT NOT NULL,
    age INT NOT NULL,
    address TEXT NOT NULL);

INSERT INTO classmates
VALUES('홍길동', 30, '서울'),
('김철수', 23, '대전'), ('박나래', 23, '광주'), ('이요셉', 33, '구미');

-- 데이터확인(rowid, name 두개를 보여주는 것)
SELECT rowid, name FROM classmates;

-- 데이터확인(두개를 스킵하고 1개를 보여줌==>3번째가 보임)
SELECT rowid, name FROM classmates LIMIT 1 OFFSET 2;

-- 데이터확인(주소가 서울인 값을 보여줌)
SELECT rowid, name FROM classmates WHERE address='서울';

-- 전체
SELECT * FROM classmates;
-- 중복제거(dis+무엇을 기준으로+)
SELECT DISTINCT age FROM classmates;

-- 삭제하기(delete)
DELETE FROM classmates WHERE rowid=4;
-- 바로 삽입
INSERT INTO classmates VALUES('수분이', 25, '전주');
-- 수정하기(update)
UPDATE classmates SET name='홍길동', address='제주도' WHERE rowid=4;
-- 데이터 확인
SELECT rowid,* FROM classmates;


DROP TABLE classmates;