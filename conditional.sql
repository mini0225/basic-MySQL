select * from student_study_mst;

/*<<<<<<<<<<조건문, 제어문>>>>>>>>>>*/
/*
	1. if : 단 하나의 조건만, 삼항 연산자
    if(조건, 참일때의 결과, 거짓일때의 결과)
*/

select
	id as 아이디,
    name as 이름,
    age as 나이,
	if(age between 20 and 29, '20대 입니다.','20대가 아닙니다.') as age_flag,/*알리아스(Alias)=별칭*/
    1 as num
    /*기존의 column이 아니기떄문에 뒤에 붙는다*/
from
	student_study_mst;
    
/*
	2. case
    case 
		when 조건1 then 조건1이 참일 때 결과 
		when 조건2 then 조건2가 참일 때 결과
        else 위의 모든 조건이 아닐 때 결과
	end
*/
select
	*,
    case
		when age between 10 and 19 then '10대'
		when age between 20 and 29 then '20대'
		when age between 30 and 39 then '30대'
		else '10~30대가 아님'
	end as 'age_flag'
from
	student_study_mst;
    
/* 많이쓰임
	3. ifnull(null인지 확인할 대상 + 만약 확인 대상이 null이 아니면 그대로 출력,
				확인 대상이 null이면 출력할 결과)
*/
select
	if(age is null, 0, age) as `if`,
    ifnull(age,0) as `ifnull`
from
	student_study_mst;

/*
	4. nullif(A, B) A와 B가 서로 같으면 null을 결과로 출력, 다르면 A를 출력
*/
select distinct /*distinct 결과에서 중복을 제거 해줌*/
	if(age=26, null, age) as `if`,
    nullif(age,26) as `nullif`
from
	student_study_mst;










