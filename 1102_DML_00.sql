create database study_db default charset utf8;
show databases;

use study_db;

create TABLE book ( 
bookid INT PRIMARY KEY AUTO_INCREMENT,
bookname VARCHAR(32) NOT NULL, 
publisher VARCHAR(32) NOT NULL, 
price VARCHAR(32) NOT NULL
);
ALTER table book MODIFY COLUMN price INT;

DESC book;

create TABLE orders ( 
orderid INT PRIMARY KEY AUTO_INCREMENT,
custid INT, 
bookid INT, 
saleprice INT,
orderdate DATE
);
desc orders;

create TABLE customer ( 
custid INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(20) NOT NULL, 
address VARCHAR(50) NOT NULL, 
phone varchar(13) not null
);
desc customer;

insert into book(bookname, publisher, price) values("축구의 역사", "굿스포츠", 7000);
insert into book(bookname, publisher, price) values("축구아는 여자", "나무수", 13000);
insert into book(bookname, publisher, price) values("축구의 이해", "대한미디어", 22000);
insert into book(bookname, publisher, price) values("골프 바이블", "대한미디어", 35000);
insert into book(bookname, publisher, price) values("축구의 역사", "굿스포츠", 8000);
insert into book(bookname, publisher, price) values("축구의 역사", "굿스포츠", 6000);
insert into book(bookname, publisher, price) values("축구의 역사", "이상미디어", 20000);
insert into book(bookname, publisher, price) values("축구의 역사", "이상미디어", 13000);
insert into book(bookname, publisher, price) values("축구의 역사", "삼성당", 7500);
insert into book(bookname, publisher, price) values("축구의 역사", "Person", 13000);

insert into orders(custid, bookid, saleprice, orderdate) values(1, 1, 6000, '2019-07-01');
insert into orders(custid, bookid, saleprice, orderdate) values(1, 3, 21000, '2019-07-03');
insert into orders(custid, bookid, saleprice, orderdate) values(2, 5, 8000, '2019-07-03');
insert into orders(custid, bookid, saleprice, orderdate) values(3, 6, 6000, '2019-07-04');
insert into orders(custid, bookid, saleprice, orderdate) values(4, 7, 20000, '2019-07-05');
insert into orders(custid, bookid, saleprice, orderdate) values(1, 2, 12000, '2019-07-01');
insert into orders(custid, bookid, saleprice, orderdate) values(4, 8, 13000, '2019-07-01');
insert into orders(custid, bookid, saleprice, orderdate) values(3, 10, 12000, '2019-07-01');
insert into orders(custid, bookid, saleprice, orderdate) values(2, 10, 7000, '2019-07-01');
insert into orders(custid, bookid, saleprice, orderdate) values(2, 10, 7000, '2019-07-01');
insert into orders(custid, bookid, saleprice, orderdate) values(3, 8, 13000, '2019-07-01');

insert into customer(name, address, phone) values("박지성", "영국 맨체스터", "000-0000-0000");
insert into customer(name, address, phone) values("김연아", "대한민국 서울", "000-0000-0000");
insert into customer(name, address, phone) values("장미란", "대한민국 강원도", "000-0000-0000");
insert into customer(name, address, phone) values("추신수", "미국 클리블랜드", "000-0000-0000");
insert into customer(name, address, phone) values("박세리", "대한민국 대전", "null");

select * from book;

select *
from book
where price < 20000;

select phone from customer where name="김연아";
