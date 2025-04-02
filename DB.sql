drop database if exists AM_DB_25_03;
create database AM_DB_25_03;
use AM_DB_25_03;

create table article (
                         id int(10) unsigned not null primary key auto_increment,
                         regDate datetime not null,
                         updateDate datetime not null,
                         title char(100) not null,
                         `body` text not null
);

create table `member` (
                          id int(10) unsigned not null primary key auto_increment,
                          regDate datetime not null,
                          updateDate datetime not null,
                          loginId char(30) not null,
                          loginPw CHAR(200) not null,
                          `name` char(100) not null
);

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
title = '제목1',
`body` = '내용1';

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
title = '제목2',
`body` = '내용2';

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
title = '제목3',
`body` = '내용3';

insert into `member`
set regDate = now(),
updateDate = now(),
loginId = 'test1',
loginPw = 'test1',
`name` = '김철수';

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test2',
loginPw = 'test2',
`name` = '홍길동';



######################################################################

select *
from article
order by id desc;

SELECT *
FROM `member`;

select count(*) > 0
from `member`
where loginId = 'test2';

select 1 + 1;
select 1 >= 1;

select COUNT(*) > 0 from `member` where loginId = 'test3';

select now();

select '제목1';

select concat('제목',' 1');

select substring(RAND() * 1000 from 1 for 2);

insert into articleset regDate = now(),updateDate = now(),title = concat('제목',substring(RAND() * 1000 from 1 for 2)),`body` = concat('내용',substring(RAND() * 1000 from 1 for 2));

insert into article
set regDate = now(),
updateDate = now(),
title = concat('제목',substring(RAND() * 1000 from 1 for 2)),
`body` = concat('내용',substring(RAND() * 1000 from 1 for 2));

insert into `member`
set regDate = now(),
updateDate = now(),
loginId = concat('loginId ',substring(RAND() * 1000 from 1 for 2)),
loginPw = concat('loginPw ',substring(RAND() * 1000 from 1 for 2)),
`name` = CONCAT('name ',SUBSTRING(RAND() * 1000 FROM 1 FOR 2));

update article
set updateDate = now(),
    title = 'title1',
    `body` = 'body1'
where id = 3;

update article
set updateDate = now(),
    `body` = 'body1'
where id = 1;

select * from article;

select count(*)
from article
where id = 5;

UPDATE article
SET updateDate = NOW(),
    title = 'title1',
    `body` = 'body1'
WHERE id = 5;


