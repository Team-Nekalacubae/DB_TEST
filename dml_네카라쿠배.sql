-- insert

INSERT INTO MEMBERS (USER_CODE, USER_ID, USER_PW, USER_NAME, USER_PHONE, USER_EMAIL, USER_TYPE) 
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
   
INSERT INTO MEMBERS VALUES (123, 'Admin01', 'password01', '고길동', '010-1234-5678', 'gogildong@gmail.com', 1);
INSERT INTO MEMBERS VALUES (124, 'Admin02', 'password02', '희동이', '010-8765-4321', 'goheedong@gmail.com', 2);
INSERT INTO MEMBERS VALUES (11, 'User01', 'pwd01', '두치', null, null, 2);
INSERT INTO MEMBERS VALUES (22, 'User02', 'pwd02', '뿌꾸', null, null, 2);
INSERT INTO MEMBERS VALUES (33, 'User03', 'pwd03', '프랑켄', null, 'frankfrank@gmail.com', 2);
INSERT INTO MEMBERS VALUES (44, 'User04', 'pwd04', '미라', '010-0001-1000', null, 2);

INSERT INTO BOOKS VALUES (157, '아기공룡 둘리', '김수정', '코믹', '만화', '대성');
INSERT INTO BOOKS VALUES (158, '두치와 뿌꾸', '김재원', '판타지', '만화', '대원');
INSERT INTO BOOKS VALUES (159, '파란의 상속녀', '해아한', '로맨스', '웹소설', '네이버');
INSERT INTO BOOKS VALUES (160, '나쁜 남편', '헤이다', '로맨스', '웹소설', '네이버');

INSERT INTO SEARCH VALUES ('제목', '아기공룡 둘리', '2023-12-20', 33, 157);
INSERT INTO SEARCH VALUES ('작가', '김재원', '2024-01-05', 44, 158);

SELECT * FROM MEMBERS;
SELECT * FROM BOOKS;
SELECT * FROM SEARCH;
-- update

UPDATE MEMBERS
   SET USER_TYPE = 2
 WHERE USER_CODE = 1;
 
 UPDATE BOOKS
	SET BOOK_GENRE = '스릴러'
  WHERE BOOK_CODE = 1;
  
UPDATE MEMBERS
SET USER_TYPE = 1
WHERE USER_NAME = '희동이';

DELETE FROM MEMBERS
WHERE USER_NAME = '뿌꾸';

-- delete

DELETE					-- LIMIT을 이용한 1행 삭제	
	FROM MEMBERS
	ORDER BY USER_NAME
	LIMIT 1;
    
DELETE
	FROM BOOKS
    ORDER BY BOOK_CODE
    LIMIT 3;

DELETE 					-- 단일 행 삭제
	FROM MEMBERS
   WHERE USER_CODE = 2;
   
DELETE
	FROM BOOKS
   WHERE BOOK_CODE = 1;
   