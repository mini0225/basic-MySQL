/*
	DML
    insert C 데이터 추가
    select R 데이터 조회
    update U 데이터 수정
	delete D 데이터 삭제

*/
set sql_safe_updates = 0; /*테이블 권한 수정?? 오른쪽 하단에 read Only 풀어주기위해서 실시*/

SELECT * FROM student_study_mst;

/*-----------------<insert>-----------------*/
insert into student_study_mst
	(id, name, age) 
values
	(1, '경민', 33); /*column명 작성*/

insert into student_study_mst(name, id, age) values ('민영', 3, 31); /*column 명 순서대로 작성하면 데이터 들어감*/
insert into student_study_mst(name, id) values ('경효', 26); /*원하는 데이터 삽입가능*/
insert into student_study_mst values (4, '창우', 26); /*value가 순서대로 들어오면 column 명 생략 가능*/
/*여러개 데이터 넣기*/
insert into student_study_mst
values 
	(6, '혜민', 27),
	(7, '선현', 34),
	(8, '경영', 34);
    
/*-----------------<update>-----------------*/
select * from student_study_mst;

update student_study_mst /*어떤 데이터를 바꿀지 선택을 안했기 때문에 전체 데이터를 바꿔버린다*/
set
	name = '건완',
	age = 22
where
	id = 6;

update student_study_mst
set
	age = age+1
where
	id = 6;

/*-----------------<delete>-----------------*/
select * from student_study_mst;

delete
from
	student_study_mst
where
	id = 1;


/*-----------------<select>-----------------*/



















