/*
Create Read Update Delete

 INSERT(추가)  = CREATE
 SELECT(조회)  = READ
 UPDATE(수정)  = UPDATE
 DELETE(삭제)  = DELETE

데이터베이스는 카멜X  스네이크O
*/

INSERT INTO product_mst
/*(id, product_name, product_price) */
VALUES
(0, '스타벅스 블랙 머그컵', 15000),
(0, '스타벅스 화이트 머그컵', 20000),
(0, '스타벅스 블루 머그컵', 25000);

SELECT
	id, 
	product_name, 
	product_price 
FROM 
	product_mst;
	
INSERT INTO student_mst
VALUE
(0, '임지현', 1, 80),
(0, '신경수', 2, 90),
(0, '고희주', 3, 75),
(0, '문승주', 1, 85),
(0, '장건녕', 2, 95),
(0, '박수현', 3, 90),
(0, '황석민', 1, 80),
(0, '박준현', 2, 85),
(0, '이승아', 3, 90),
(0, '김수현', 1, 75);

SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	student_year = 1 and score > 80 
	OR (student_year = 3 AND score = 75);

SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	'name' LIKE '%수%'
	AND  'name' not LIKE '%수';
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	student_year not IN(1, 2);
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	score BETWEEN 80 AND 90; 
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	'name' IS NOT NULL;
	
	

	

	

