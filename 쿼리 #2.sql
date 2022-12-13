SELECT
	product_name,
	COUNT(*),
	SUM(stock),
	MIN(stock),
	MAX(stock),
	SUM(stock) / COUNT(1),
	AVG(stock)
FROM
	ORDER_mst
GROUP BY
	product_name;
/*----------------------------------------------------------------*/	
SELECT
	product_name,
	sum(price * stock) AS total_price
FROM
	order_mst
GROUP BY
	product_name;
	
/*----------------------------------------------------------------*/	
	

SELECT
	product_name,
	price * stock AS total_price
FROM
	order_mst;
	
/*----------------------------------------------------------------*/	

SELECT
	product_name,
	COUNT(*) AS order_count,
	SUM(stock) AS stock_sum,
	MIN(stock),
	MAX(stock) AS MAX_stock,
	SUM(stock) / COUNT(1),
	AVG(stock)
FROM
	ORDER_mst
WHERE
	stock > 50
GROUP BY
	product_name
HAVING
	MAX_stock > 49
ORDER BY
	order_count desc,
	stock_sum desc
LIMIT 0, 2;

/*----------------------------------------------------------------*/	

SELECT
	*
FROM
	ORDER_mst
LIMIT 3, 3;

	
INSERT INTO 
	board_mst
VALUEs
	(0, '제목1', '개시글 내용1', 0, 1),
	(0, '제목2', '개시글 내용2', 0, 1),
	(0, '제목3', '개시글 내용3', 0, 1),
	(0, '제목1', '개시글 내용1', 0, 2),
	(0, '제목2', '개시글 내용2', 0, 2),
	(0, '제목3', '개시글 내용3', 0, 2),
	(0, '제목4', '개시글 내용4', 0, 1),
	(0, '제목5', '개시글 내용5', 0, 1),
	(0, '제목6', '개시글 내용6', 0, 1),
	(0, '제목4', '개시글 내용4', 0, 2),
	(0, '제목5', '개시글 내용5', 0, 2),
	(0, '제목6', '개시글 내용6', 0, 2);
	
SELECT
	*,
	(SELECT COUNT(1) FROM board_mst bm2 WHERE bm2.writer_id = bm.writer_id) as writer_count
FROM
	board_mst bm;
	
SELECT
	bm.id,
	bm.title,
	bm.content,
	bm.read_count,
	bm.writer_id,
	wc.writer_count
FROM
	board_mst bm
	LEFT OUTER JOIN (SELECT
		writer_id,
		COUNT(1) AS writer_count
	FROM 
		board_mst
	GROUP BY 
		writer_id) wc ON(wc.writer_id = bm.writer_id);
		
SET profiling = 1;		
SHOW PROFILES;


	
