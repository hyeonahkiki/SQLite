-- 데이터 베이스를 생성
.database

-- cav파일을 읽어오기
.mode csv
.import hellodb.csv examples

-- 예쁘게 보기
.headers on
.mode column

-- 테이블 조회(문법이기 때문에 ; 붙여야함)
SELECT * FROM examples;

