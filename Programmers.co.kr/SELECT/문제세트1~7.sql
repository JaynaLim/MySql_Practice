#1. 모든 레코드 조회하기
SELECT * FROM ANIMAL_INS ORDER BY ANIMAL_ID;

#2. 역순으로 정렬하기
SELECT NAME, DATETIME FROM ANIMAL_INS ORDER BY ANIMAL_ID DESC;

#3. 조건을 만족하는 값을 찾기 (특정 값과 같은 행)
SELECT animal_id,name FROM ANIMAL_INS
WHERE INTAKE_CONDITION ='Sick'
order by animal_id;

#4. 조건을 만족하는 값을 찾기 (특정 값이 아닌 행)
SELECT animal_id, name from animal_ins
where intake_condition != 'Aged'
order by animal_id;

#5. 정렬하기
SELECT animal_id, name from animal_ins
order by animal_id;

# 6. 두 개 이상의 column 기준으로 정렬하기
SELECT animal_id, name, datetime from animal_ins 
order by name, datetime desc;


# 7. 상위 n 개의 값만 출력하기 (날짜가 현재와 가장 가까운 순서대로)
SELECT name from animal_ins 
order by datetime limit 1;
