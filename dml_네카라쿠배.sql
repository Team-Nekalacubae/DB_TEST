-- insert

INSERT INTO USERS (USER_CODE, USER_ID, USER_PW, USER_NAME, USER_PHONE, USER_EMAIL, USER_TYPE) 
VALUES
(1, 'KOO', 'KOO1234', '구예성', NULL, NULL, 1),
(2, 'KANG', 'KANG1234', '강민서', NULL, NULL, 2),
(3, 'LEE', 'LEE1234', '이수진', NULL, NULL, 2),
(4, 'KWON', 'KWON1234', '권순상', NULL, NULL, 2);

INSERT INTO BOOKS (BOOK_CODE, BOOK_NAME, BOOK_AUTHOR, BOOK_GENRE, BOOK_TYPE, BOOK_PUBLISHER)
VALUES
(1, '신네렐라', '몰라', '로맨스', '동화', '디크니'),
(2, '라튼젤', '몰라', '로맨스', '동화', '디크니'),
(3, '총,균,새', '재래드 사파이어', '논픽션', '도서', '김행사'),
(4, '멸살법', '빙숑', '판타지', '웹툰', '데이버');
   
   
   
-- update

UPDATE USERS
   SET USER_TYPE = 2
 WHERE USER_CODE = 1;
 
 UPDATE BOOKS
	SET BOOK_GENRE = '스릴러'
  WHERE BOOK_CODE = 1;
  
  
  
-- delete

DELETE					-- LIMIT을 이용한 1행 삭제	
	FROM USERS
	ORDER BY USER_NAME
	LIMIT 1;
    
DELETE
	FROM BOOKS
    ORDER BY BOOK_CODE
    LIMIT 3;

DELETE 					-- 단일 행 삭제
	FROM USERS
   WHERE USER_CODE = 2;
   
DELETE
	FROM BOOKS
   WHERE BOOK_CODE = 1;
   
DELETE FROM USERS;		-- 테이블 전체 행 삭제

DELETE FROM BOOKS;



-- join

SELECT					-- LEFT 조인
		A. USER_NAME,
	    B. BOOK_NAME
	FROM USERS A
    LEFT JOIN BOOKS B ON A.USER_CODE;
    
SELECT 					-- RIGHT 조인
		A. USER_NAME,
        B. BOOK_NAME
	FROM BOOKS B
    RIGHT JOIN USERS A ON B.BOOK_CODE;
    
SELECT 					-- CROSS 조인
		A.USER_NAME,
        B.BOOK_NAME
	FROM USERS A
	CROSS JOIN BOOKS B;
    

    