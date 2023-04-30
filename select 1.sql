/*-----------------<select>-----------------*/
select * from student_study_mst; /*select 다음 column 명 선택해서 그거만 조회 가능 *은 전부*/
select id from student_study_mst;
select `name` from `student_study_mst`; /*색깔다른 이유 : 예약어(이미sql에서 쓰고 있다)*/
/*백커터로 감싸줘서 혹시라도 일어날 충돌을 방지한다.*/
select age from student_study_mst;

select
	id,
	`name`,
    age
from
	`student_study_mst`
where
	id = 4;
    
    
/*조건 설정 1*/
select
	*
from
	`student_study_mst`
where
	age > 30;
    
/*조건 설정 2*/
select
	*
from
	`student_study_mst`
where
	`name` like '경%'; /*이름중 앞쪽에 포함하는가*/ 
    
/*조건 설정 3*/
select
	*
from
	`student_study_mst`
where
	`name` like '%경%' /*이름 중 가운데에 포함하는가*/ 
and
	`name` like '%미';

/*조건 설정 3*/
select
	*
from
	`student_study_mst`
where
	`name` like '%경%' /*이름 중 가운데에 포함하는가*/ 
or
	`name` like '민%';

/*범위지정*/
select
	*
from
	`student_study_mst`
where
-- 	age > 30
-- and age < 34;
	age between 30 and 34; /*위와같음*/


select
	*
from
	`student_study_mst`
where
	age not between 30 and 34 /*not 은 반대*/
and not age = 26; /*연산자를 쓸때는 이렇게 not을 앞에 붙인다*/

select
	*
from
	`student_study_mst`
where
	-- age is null;
	age is not null;
	-- age is null;










