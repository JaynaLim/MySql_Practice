
# 1. 최댓값 구하기 (가장 최근에 들어온 동물)
SELECT MAX(datetime) FROM animal_ins;

#2. 최솟값 구하기 (가장 먼저 들어온 동물)
SELECT MIN(datetime) FROM animal_ins;

#3. COUNT (동물 보호소에 동물이 몇마리 들어왔을까)
SELECT COUNT(*) as count FROM animal_ins;

#4. NULL 값을 제외하고 중복되지 않는 값의 개수를 구하기
SELECT COUNT(DISTINCT name) FROM animal_ins;
