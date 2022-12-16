/*
	인덱스(INDEX)
    테이블의 동작속도(조회)를 높여주는 자료구조
    
*/

insert into delivery_mst
values
	(202212160001, '부산 동래구 교대역점'),
	(202212160002, '부산 동래구 교대역점'),
	(202212160003, '부산 동래구 교대역점'),
	(202212160004, '부산 동래구 교대역점');
    
select * from delivery_mst;

create index order_id on delivery_mst(`주문번호`);
show index from delivery_mst;

