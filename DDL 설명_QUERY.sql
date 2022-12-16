/*
	계정생성 DDL
    CREATE USER '계정아이디'@localhost identified by '비밀번호'; -> 내부 IP 접속
    CREATE USER '계정아이디'@% identified by '비밀번호'; -> 외부 IP 접속
		> create user 'junil@localhost identified by 'root';
        > grant all privaileges on *.* to junil@localhost;
        > flush privialeges;
        
	DCL(권한관련)
    1. GRANT(데이터베이스, 테이블 사용자권한 부여)
     - GRANT 권한 TO 사용자 계정
     - GRANT 권한 ON 객체명(데이터베이스.테이블명) TO 사용자 계정
		> GRANT ALL PRIVILEGES ON SUBQUERY_STUDY.BOARD_MST TO root@localhost -> 내부IP(현재 PC에서만 접근 가능)
		> GRANT ALL PRIVILEGES ON SUBQUERY_STUDY.BOARD_MST TO root@% -> 외부IP(다른 PC에서도 접근 가능)
		> GRANT ALL PRIVILEGES ON SUBQUERY_STUDY.BOARD_MST TO root@200.100.% -> 외부IP(해당 IP를 포함하고있는 PC에서만 접근 가능)
        
    2. REVOKE(데이터베이스, 테이블 사용자 권한 회수)
     - REVOKE 권한 TO 사용자 계정
     - REVOKE 권한 ON 객체명(데이터베이스.테이블명) TO 사용자 계정
		>REVOKE insert, update, create ON *.*(모든 DB에 모든 테이블) TO root@localhost;(insert, update, create 권한 해제)
		>REVOKE ALL ON *.*(모든 DB에 모든 테이블) TO root@localhost;(모든 권한 해제)
        
        
    
*/