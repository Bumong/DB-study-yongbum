select
	`name`,
    email,
    0 as score
from
	user_dtl
where
	`name` = '김준일'
    
union  /*union : 중복되는 값 빼고 밑으로 합침 union all : 중복되는 값도 다 합침 (!! 컬럼의 형식이랑 순서가 같아야 함 !!)*/
    
select 
	`name`,
    null as email,
    score
from
	score_mst
where
	score > 80;
