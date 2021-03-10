#1. GROUP BY, COUNT (고양이와 개의 수를 구하기, 고양이를 개보다 먼저 조회하기)

SELECT animal_type, COUNT(animal_type) count
FROM animal_ins
GROUP BY animal_type
ORDER BY FIELD (animal_type, 'Cat', 'Dog');


/*
 2. GROUPBY, HAVING  (GROUPBY와 WHERE 같이 못 쓰는 것 명심)
동물 보호소에 들어온 동물 이름 중 두 번 이상 쓰인 이름과 해당 이름이 쓰인 횟수를 조회하는 SQL문을 작성해주세요.
이때 결과는 이름이 없는 동물은 집계에서 제외하며, 결과는 이름 순으로 조회해주세요.*/

SELECT DISTINCT name, COUNT(name) COUNT
FROM animal_ins
GROUP BY name
HAVING COUNT(name)>=2
ORDER BY name;


/*
 3. HOUR FUNCTION
보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다.
09:00부터 19:59까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 이때 결과는 시간대 순으로 정렬해야 합니다.*/

SELECT HOUR(datetime) 'HOUR', COUNT(animal_id) 'COUNT'
FROM animal_outs
GROUP BY HOUR(datetime)
HAVING (HOUR >=9) AND (HOUR<=20)
ORDER BY HOUR(datetime);


/*
  4. 
 보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다. 
 0시부터 23시까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 이때 결과는 시간대 순으로 정렬해야 합니다.*/

 

