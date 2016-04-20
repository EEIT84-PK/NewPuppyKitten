use PuppyKitten

drop table member
CREATE TABLE member
(MEM_ID int PRIMARY KEY IDENTITY ( 5001 , 1 ),
MEM_NAME varchar(10),
MEM_ACCOUNT varchar(20),
MEM_PASSWORD varbinary(20),
MEM_EMAIL varchar(30),
MEM_BIRTHDAY datetime,
MEM_IDCARD varchar(15),
MEM_ADD varchar(50),
MEM_PHONE varchar(20),
MEN_STATUS Bit)

drop table blockade
CREATE TABLE blockade
(BLOCKADE_MENID int PRIMARY KEY,
 BLOCKADE_THING varchar(30)
)

DROP TABLE pet_Friendship
CREATE TABLE pet_Friendship 
(PET_ID int PRIMARY KEY IDENTITY ( 4001 , 1 ),
PET_OWN_ID int,
PET_NAME varchar(10),
PET_AGE datetime,
PET_WEIGHT integer,
PET_KING varchar(10),
PET_SORT_ID varchar(20) ,
PET_SEX varchar(5),
PET_BODY varchar(300) );

DROP TABLE pet_Friendship_img
CREATE TABLE pet_Friendship_img
(PET_ID int ,
PET_IMAGE varchar(150));

drop table interest
CREATE TABLE interest
(INT_MENID_MYSELF varchar(15),
INT_MENID_LIKE varchar(15),
INT_STATUS varchar(10)
PRIMARY KEY(INT_MENID_MYSELF, INT_MENID_LIKE)
);

DROP TABLE pet_SortName_Cat
CREATE TABLE pet_SortName_Cat
(PET_SORT_ID varchar(20) PRIMARY KEY,
PET_SORT_NAME varchar(20));

DROP TABLE pet_SortName_Dog
CREATE TABLE pet_SortName_Dog
(PET_SORT_ID varchar(20) PRIMARY KEY,
PET_SORT_NAME varchar(20));
									
DROP TABLE GoogleMap;
CREATE TABLE GoogleMap (
   MAP_ID   integer identity(3001,1) primary key,
   MAP_KIND     varchar(20),
   MAP_NAME    varchar(40),
   MAP_PHONE     varchar(30),
   MAP_CITY    varchar(20),
   MAP_AREA    varchar(20),
   MAP_ADD    varchar(80),
   MAP_BODY    varchar(600)
);

DROP TABLE Article;
CREATE TABLE Article (
   ART_ID   integer identity(1001,1) primary key,
   ART_MEM_ID  varchar(20),
   ART_KIND     varchar(20),
   ART_TITLE    varchar(40),
   ART_BODY     varchar(600),
   ART_TIME    Datetime,
   ART_HOT    Integer,
   ART_IMG    varchar(100)
);

DROP TABLE Message;
CREATE TABLE Message (
	MSG_ID int identity(1101,1) primary key,
   MSG_ART_ID  varchar(20),
   MSG_MEM_ID  varchar(20),
   MSG_BODY     varchar(300),
   MSG_REBODY    varchar(300),
   MSG_TIME     Datetime
);

DROP TABLE Product_body;
create table Product_body
(
BUY_ID integer identity(21000001,1) not null Primary key,
BUY_PRO_ID integer,
BUY_USER_ID integer,
BUY_NAME varchar(100),
BUY_NUMBER integer,
BUY_OLD_PRICE integer,
BUY_NEW_PRICE integer,
BUY_LITTLE_TOTAL integer,
BUY_LARGE_TOTAL integer
)


DROP TABLE Product_buy_body;
create table Product_buy_body
(
PRO_ID integer identity(2001,1) not null primary key,
PRO_ANIMAL varchar(30) ,
PRO_KIND varchar(30) ,
PRO_NAME varchar(60) ,
PRO_PROJECT varchar(20) ,
PRO_WEIGHT varchar(20) ,
PRO_PRICE integer ,
PRO_BUY1 integer ,
PRO_BUY2 integer ,
PRO_STOCK integer ,
PRO_IMAGE varchar(200) ,
PRO_BODY varchar(600)
)


DROP TABLE Product_order_body;
create table Product_order_body
(
ORDER_ID integer identity(22000001,1) not null Primary key,
ORDER_PRO_ID integer,
ORDER_USER_NAME varchar(30),
ORDER_USER_ADD varchar(150),
ORDER_USER_PHONE varchar(30),
ORDER_DATE datetime,
ORDER_BUY_BODY varchar(500),
ORDER_PRO_NAME varchar(100),
ORDER_BUY_NUMBER integer,
ORDER_OLD_PRICE integer,
ORDER_NEW_PRICE integer,
ORDER_TOTAL_PRICE integer
)

INSERT INTO MEMBER values ('陳冠廷','eeit8406',CAST('sa123456' AS VARBINARY(MAX)),'eeit8406@gmail.com','1991-04-01','A122840606','新北市三重區大同南路49巷3之1號4樓','0984068406',1);
INSERT INTO MEMBER values ('許誌中','eeit8403',CAST('sa123456' AS VARBINARY(MAX)),'eeit8403@gmail.com','1989-12-10','A122840303','新北市中和區德光路15巷15號3樓','0984038403',1);
INSERT INTO MEMBER values ('陳資文','eeit8410',CAST('sa123456' AS VARBINARY(MAX)),'eeit8410@gmail.com','1992-01-03','A122841010','台北市文山區羅斯福路五段97巷19號5樓之7','0984108410',1);
INSERT INTO MEMBER values ('林昭懿','eeit8426',CAST('sa123456' AS VARBINARY(MAX)),'eeit8426@gmail.com','1992-12-28','A122842626','新北市萬里區野柳里港東路112號3樓','0984268426',1);
INSERT INTO member VALUES ('ChaoiLin','username',CAST('password' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Andy','username2',CAST('password2' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Mary','username3',CAST('password3' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Jason','username4',CAST('password4' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Aaron','username5',CAST('password5' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Abbott','username6',CAST('password6' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Abel','username7',CAST('password7' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Abner','username8',CAST('password8' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Adair','username9',CAST('password9' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Abraham','username10',CAST('password10' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Adolph','username11',CAST('password11' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Addison','username12',CAST('password12' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Allen','username13',CAST('password13' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Amos','username14',CAST('password14' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Andrew','username15',CAST('password15' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Ansel','username16',CAST('password16' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Augus','username17',CAST('password17' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Archer','username18',CAST('password18' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Abigail','username19',CAST('password19' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Ada','username20',CAST('password20' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Adela','username21',CAST('password21' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Adelaide','username22',CAST('password22' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Afra','username23',CAST('password23' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Alva','username24',CAST('password24' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Anastasia','username25',CAST('password25' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Angela','username26',CAST('password26' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('April','username27',CAST('password27' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Arabela','username28',CAST('password28' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Aurora','username29',CAST('password29' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Beatrice','username30',CAST('password30' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Belinda','username31',CAST('password31' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Betty','username32',CAST('password32' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Blanche','username33',CAST('password33' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Bblythe','username34',CAST('password34' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Breenda','username35',CAST('password35' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Brook','username36',CAST('password36' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Candice','username37',CAST('password37' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Cathy','username38',CAST('password38' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Charlotte','username39',CAST('password39' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Clara','username40',CAST('password40' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Clementine','username41',CAST('password41' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Crystal','username42',CAST('password42' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Darlene','username43',CAST('password43' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',1);
INSERT INTO member VALUES ('Darlene','username44',CAST('password44' AS VARBINARY(MAX)),'b10057007@gmai.com','1992-12-28','F127224466','新北市萬里區野柳里港東路112號3樓','0919292820',0);

INSERT INTO pet_SortName_Cat(PET_SORT_ID,PET_SORT_NAME)values('4101','暹邏貓')
INSERT INTO pet_SortName_Cat(PET_SORT_ID,PET_SORT_NAME)values('4102','波斯貓')
INSERT INTO pet_SortName_Cat(PET_SORT_ID,PET_SORT_NAME)values('4103','布偶貓')
INSERT INTO pet_SortName_Cat(PET_SORT_ID,PET_SORT_NAME)values('4104','美國短毛貓')
INSERT INTO pet_SortName_Cat(PET_SORT_ID,PET_SORT_NAME)values('4105','俄羅斯藍貓')
INSERT INTO pet_SortName_Cat(PET_SORT_ID,PET_SORT_NAME)values('4106','美國捲耳貓')
INSERT INTO pet_SortName_Cat(PET_SORT_ID,PET_SORT_NAME)values('4107','土耳其安哥拉貓')

INSERT INTO pet_SortName_Dog(PET_SORT_ID,PET_SORT_NAME)values('4201','柴犬')
INSERT INTO pet_SortName_Dog(PET_SORT_ID,PET_SORT_NAME)values('4202','巴哥')
INSERT INTO pet_SortName_Dog(PET_SORT_ID,PET_SORT_NAME)values('4203','貴賓犬')
INSERT INTO pet_SortName_Dog(PET_SORT_ID,PET_SORT_NAME)values('4204','吉娃娃')
INSERT INTO pet_SortName_Dog(PET_SORT_ID,PET_SORT_NAME)values('4205','哈士奇')
INSERT INTO pet_SortName_Dog(PET_SORT_ID,PET_SORT_NAME)values('4206','拉布拉多')
INSERT INTO pet_SortName_Dog(PET_SORT_ID,PET_SORT_NAME)values('4207','黃金獵犬')

INSERT INTO pet_Friendship values(5005,'寶寶1號','1992-12-28 00:00:00',10,'貓','4101','母','我是寶寶1號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5006,'寶寶2號','1993-12-28 00:00:00',11,'貓','4101','公','我是寶寶2號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5007,'寶寶3號','1994-12-28 00:00:00',12,'貓','4101','母','我是寶寶3號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5008,'寶寶4號','1995-12-28 00:00:00',13,'貓','4102','公','我是寶寶4號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5009,'寶寶5號','1996-12-28 00:00:00',14,'貓','4102','母','我是寶寶5號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5010,'寶寶6號','1997-12-28 00:00:00',15,'貓','4102','公','我是寶寶6號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5011,'寶寶7號','1998-12-28 00:00:00',16,'貓','4103','母','我是寶寶7號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5012,'寶寶8號','1999-12-28 00:00:00',17,'貓','4103','公','我是寶寶8號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5013,'寶寶9號','2000-12-28 00:00:00',18,'貓','4103','母','我是寶寶9號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5014,'寶寶10號','2001-12-28 00:00:00',19,'貓','4104','公','我是寶寶10號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5015,'寶寶11號','2002-12-28 00:00:00',20,'貓','4104','母','我是寶寶11號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5016,'寶寶12號','2003-12-28 00:00:00',21,'貓','4104','公','我是寶寶12號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5017,'寶寶13號','2004-12-28 00:00:00',22,'貓','4105','母','我是寶寶13號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5018,'寶寶14號','2005-12-28 00:00:00',23,'貓','4105','公','我是寶寶14號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5019,'寶寶15號','2006-12-28 00:00:00',24,'貓','4105','母','我是寶寶15號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5020,'寶寶16號','2007-12-28 00:00:00',25,'貓','4106','公','我是寶寶16號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5021,'寶寶17號','2008-12-28 00:00:00',26,'貓','4106','母','我是寶寶17號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5022,'寶寶18號','2009-12-28 00:00:00',27,'貓','4106','公','我是寶寶18號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5023,'寶寶19號','2010-12-28 00:00:00',28,'貓','4107','母','我是寶寶19號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5024,'寶寶20號','2011-12-28 00:00:00',29,'貓','4107','公','我是寶寶20號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5025,'寶寶21號','2012-12-28 00:00:00',30,'貓','4107','母','我是寶寶21號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5026,'寶寶22號','2013-12-28 00:00:00',31,'狗','4201','公','我是寶寶22號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5027,'寶寶23號','1992-12-28 00:00:00',32,'狗','4201','母','我是寶寶23號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5028,'寶寶24號','1993-12-28 00:00:00',33,'狗','4201','公','我是寶寶24號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5029,'寶寶25號','1994-12-28 00:00:00',34,'狗','4202','母','我是寶寶25號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5030,'寶寶26號','1995-12-28 00:00:00',35,'狗','4202','公','我是寶寶26號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5031,'寶寶27號','1996-12-28 00:00:00',36,'狗','4202','母','我是寶寶27號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5032,'寶寶28號','1997-12-28 00:00:00',37,'狗','4203','公','我是寶寶28號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5033,'寶寶29號','1998-12-28 00:00:00',38,'狗','4203','母','我是寶寶29號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5034,'寶寶30號','1999-12-28 00:00:00',39,'狗','4203','公','我是寶寶30號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5035,'寶寶31號','2000-12-28 00:00:00',40,'狗','4204','母','我是寶寶31號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5036,'寶寶32號','2001-12-28 00:00:00',41,'狗','4204','公','我是寶寶32號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5037,'寶寶33號','2002-12-28 00:00:00',42,'狗','4204','母','我是寶寶33號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5038,'寶寶34號','2003-12-28 00:00:00',43,'狗','4205','公','我是寶寶34號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5039,'寶寶35號','2004-12-28 00:00:00',44,'狗','4205','母','我是寶寶35號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5040,'寶寶36號','2005-12-28 00:00:00',45,'狗','4205','公','我是寶寶36號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5041,'寶寶37號','2006-12-28 00:00:00',46,'狗','4206','母','我是寶寶37號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5042,'寶寶38號','2007-12-28 00:00:00',47,'狗','4206','公','我是寶寶38號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5043,'寶寶39號','2008-12-28 00:00:00',48,'狗','4206','母','我是寶寶39號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5044,'寶寶40號','2009-12-28 00:00:00',49,'狗','4207','公','我是寶寶40號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5045,'寶寶41號','2010-12-28 00:00:00',50,'狗','4207','母','我是寶寶41號，我很溫馴聽話，希望可以找到適合的聯誼對象。')
INSERT INTO pet_Friendship values(5046,'寶寶42號','2011-12-28 00:00:00',51,'狗','4207','公','我是寶寶42號，我很溫馴聽話，希望可以找到適合的聯誼對象。')

insert into pet_Friendship_img values(4001,'/PuppyKitten/_400_images/4001.jpg')
insert into pet_Friendship_img values(4002,'/PuppyKitten/_400_images/4002.jpg')
insert into pet_Friendship_img values(4003,'/PuppyKitten/_400_images/4003.jpg')
insert into pet_Friendship_img values(4004,'/PuppyKitten/_400_images/4004.jpg')
insert into pet_Friendship_img values(4005,'/PuppyKitten/_400_images/4005.jpg')
insert into pet_Friendship_img values(4006,'/PuppyKitten/_400_images/4006.jpg')
insert into pet_Friendship_img values(4007,'/PuppyKitten/_400_images/4007.jpg')
insert into pet_Friendship_img values(4008,'/PuppyKitten/_400_images/4008.jpg')
insert into pet_Friendship_img values(4009,'/PuppyKitten/_400_images/4009.jpg')
insert into pet_Friendship_img values(4010,'/PuppyKitten/_400_images/4010.jpg')
insert into pet_Friendship_img values(4011,'/PuppyKitten/_400_images/4011.jpg')
insert into pet_Friendship_img values(4012,'/PuppyKitten/_400_images/4012.jpg')
insert into pet_Friendship_img values(4013,'/PuppyKitten/_400_images/4013.jpg')
insert into pet_Friendship_img values(4014,'/PuppyKitten/_400_images/4014.jpg')
insert into pet_Friendship_img values(4015,'/PuppyKitten/_400_images/4015.jpg')
insert into pet_Friendship_img values(4016,'/PuppyKitten/_400_images/4016.jpg')
insert into pet_Friendship_img values(4017,'/PuppyKitten/_400_images/4017.jpg')
insert into pet_Friendship_img values(4018,'/PuppyKitten/_400_images/4018.jpg')
insert into pet_Friendship_img values(4019,'/PuppyKitten/_400_images/4019.jpg')
insert into pet_Friendship_img values(4020,'/PuppyKitten/_400_images/4020.jpg')
insert into pet_Friendship_img values(4021,'/PuppyKitten/_400_images/4021.jpg')
insert into pet_Friendship_img values(4022,'/PuppyKitten/_400_images/4022.jpg')
insert into pet_Friendship_img values(4023,'/PuppyKitten/_400_images/4023.png')
insert into pet_Friendship_img values(4024,'/PuppyKitten/_400_images/4024.jpg')
insert into pet_Friendship_img values(4025,'/PuppyKitten/_400_images/4025.jpg')
insert into pet_Friendship_img values(4026,'/PuppyKitten/_400_images/4026.jpg')
insert into pet_Friendship_img values(4027,'/PuppyKitten/_400_images/4027.jpg')
insert into pet_Friendship_img values(4028,'/PuppyKitten/_400_images/4028.jpg')
insert into pet_Friendship_img values(4029,'/PuppyKitten/_400_images/4029.jpg')
insert into pet_Friendship_img values(4030,'/PuppyKitten/_400_images/4030.jpg')
insert into pet_Friendship_img values(4031,'/PuppyKitten/_400_images/4031.jpg')
insert into pet_Friendship_img values(4032,'/PuppyKitten/_400_images/4032.jpg')
insert into pet_Friendship_img values(4033,'/PuppyKitten/_400_images/4033.jpg')
insert into pet_Friendship_img values(4034,'/PuppyKitten/_400_images/4034.jpg')
insert into pet_Friendship_img values(4035,'/PuppyKitten/_400_images/4035.jpg')
insert into pet_Friendship_img values(4036,'/PuppyKitten/_400_images/4036.jpg')
insert into pet_Friendship_img values(4037,'/PuppyKitten/_400_images/4037.jpg')
insert into pet_Friendship_img values(4038,'/PuppyKitten/_400_images/4038.jpg')
insert into pet_Friendship_img values(4039,'/PuppyKitten/_400_images/4039.jpg')
insert into pet_Friendship_img values(4040,'/PuppyKitten/_400_images/4040.jpg')
insert into pet_Friendship_img values(4041,'/PuppyKitten/_400_images/4041.jpg')
insert into pet_Friendship_img values(4042,'/PuppyKitten/_400_images/4042.jpg')

insert into interest values('5005','5006','like')
insert into interest values('5005','5008','like')
insert into interest values('5005','5010','like')
insert into interest values('5005','5012','like')
insert into interest values('5005','5014','like')
insert into interest values('5005','5016','like')
insert into interest values('5005','5018','like')
insert into interest values('5005','5020','like')
insert into interest values('5005','5022','like')
insert into interest values('5005','5024','like')

insert into interest values('5007','5006','like')
insert into interest values('5007','5008','like')
insert into interest values('5007','5010','like')
insert into interest values('5007','5012','like')
insert into interest values('5007','5014','like')
insert into interest values('5007','5016','like')
insert into interest values('5007','5018','like')
insert into interest values('5007','5020','like')
insert into interest values('5007','5022','like')
insert into interest values('5007','5024','like')

insert into interest values('5009','5006','like')
insert into interest values('5009','5008','like')
insert into interest values('5009','5010','like')
insert into interest values('5009','5012','like')
insert into interest values('5009','5014','like')
insert into interest values('5009','5016','like')
insert into interest values('5009','5018','like')
insert into interest values('5009','5020','like')
insert into interest values('5009','5022','like')
insert into interest values('5009','5024','like')

insert into interest values('5011','5006','like')
insert into interest values('5011','5008','like')
insert into interest values('5011','5010','like')
insert into interest values('5011','5012','like')
insert into interest values('5011','5014','like')
insert into interest values('5011','5016','like')
insert into interest values('5011','5018','like')
insert into interest values('5011','5020','like')
insert into interest values('5011','5022','like')
insert into interest values('5011','5024','like')

insert into interest values('5013','5006','like')
insert into interest values('5013','5008','like')
insert into interest values('5013','5010','like')
insert into interest values('5013','5012','like')
insert into interest values('5013','5014','like')
insert into interest values('5013','5016','like')
insert into interest values('5013','5018','like')
insert into interest values('5013','5020','like')
insert into interest values('5013','5022','like')
insert into interest values('5013','5024','like')

insert into interest values('5015','5006','like')
insert into interest values('5015','5008','like')
insert into interest values('5015','5010','like')
insert into interest values('5015','5012','like')
insert into interest values('5015','5014','like')
insert into interest values('5015','5016','like')
insert into interest values('5015','5018','like')
insert into interest values('5015','5020','like')
insert into interest values('5015','5022','like')
insert into interest values('5015','5024','like')

insert into interest values('5017','5006','like')
insert into interest values('5017','5008','like')
insert into interest values('5017','5010','like')
insert into interest values('5017','5012','like')
insert into interest values('5017','5014','like')
insert into interest values('5017','5016','like')
insert into interest values('5017','5018','like')
insert into interest values('5017','5020','like')
insert into interest values('5017','5022','like')
insert into interest values('5017','5024','like')

insert into interest values('5019','5006','like')
insert into interest values('5019','5008','like')
insert into interest values('5019','5010','like')
insert into interest values('5019','5012','like')
insert into interest values('5019','5014','like')
insert into interest values('5019','5016','like')
insert into interest values('5019','5018','like')
insert into interest values('5019','5020','like')
insert into interest values('5019','5022','like')
insert into interest values('5019','5024','like')

insert into interest values('5021','5006','like')
insert into interest values('5021','5008','like')
insert into interest values('5021','5010','like')
insert into interest values('5021','5012','like')
insert into interest values('5021','5014','like')
insert into interest values('5021','5016','like')
insert into interest values('5021','5018','like')
insert into interest values('5021','5020','like')
insert into interest values('5021','5022','like')
insert into interest values('5021','5024','like')

insert into interest values('5023','5006','like')
insert into interest values('5023','5008','like')
insert into interest values('5023','5010','like')
insert into interest values('5023','5012','like')
insert into interest values('5023','5014','like')
insert into interest values('5023','5016','like')
insert into interest values('5023','5018','like')
insert into interest values('5023','5020','like')
insert into interest values('5023','5022','like')
insert into interest values('5023','5024','like')

insert into interest values('5025','5006','like')
insert into interest values('5025','5008','like')
insert into interest values('5025','5010','like')
insert into interest values('5025','5012','like')
insert into interest values('5025','5014','like')
insert into interest values('5025','5016','like')
insert into interest values('5025','5018','like')
insert into interest values('5025','5020','like')
insert into interest values('5025','5022','like')
insert into interest values('5025','5024','like')

insert into interest values('5026','5027','like')
insert into interest values('5026','5029','like')
insert into interest values('5026','5031','like')
insert into interest values('5026','5033','like')
insert into interest values('5026','5035','like')
insert into interest values('5026','5037','like')
insert into interest values('5026','5039','like')
insert into interest values('5026','5041','like')
insert into interest values('5026','5043','like')
insert into interest values('5026','5045','like')

insert into interest values('5028','5027','like')
insert into interest values('5028','5029','like')
insert into interest values('5028','5031','like')
insert into interest values('5028','5033','like')
insert into interest values('5028','5035','like')
insert into interest values('5028','5037','like')
insert into interest values('5028','5039','like')
insert into interest values('5028','5041','like')
insert into interest values('5028','5043','like')
insert into interest values('5028','5045','like')

insert into interest values('5030','5027','like')
insert into interest values('5030','5029','like')
insert into interest values('5030','5031','like')
insert into interest values('5030','5033','like')
insert into interest values('5030','5035','like')
insert into interest values('5030','5037','like')
insert into interest values('5030','5039','like')
insert into interest values('5030','5041','like')
insert into interest values('5030','5043','like')
insert into interest values('5030','5045','like')

insert into interest values('5032','5027','like')
insert into interest values('5032','5029','like')
insert into interest values('5032','5031','like')
insert into interest values('5032','5033','like')
insert into interest values('5032','5035','like')
insert into interest values('5032','5037','like')
insert into interest values('5032','5039','like')
insert into interest values('5032','5041','like')
insert into interest values('5032','5043','like')
insert into interest values('5032','5045','like')

insert into interest values('5034','5027','like')
insert into interest values('5034','5029','like')
insert into interest values('5034','5031','like')
insert into interest values('5034','5033','like')
insert into interest values('5034','5035','like')
insert into interest values('5034','5037','like')
insert into interest values('5034','5039','like')
insert into interest values('5034','5041','like')
insert into interest values('5034','5043','like')
insert into interest values('5034','5045','like')

insert into interest values('5036','5027','like')
insert into interest values('5036','5029','like')
insert into interest values('5036','5031','like')
insert into interest values('5036','5033','like')
insert into interest values('5036','5035','like')
insert into interest values('5036','5037','like')
insert into interest values('5036','5039','like')
insert into interest values('5036','5041','like')
insert into interest values('5036','5043','like')
insert into interest values('5036','5045','like')

insert into interest values('5038','5027','like')
insert into interest values('5038','5029','like')
insert into interest values('5038','5031','like')
insert into interest values('5038','5033','like')
insert into interest values('5038','5035','like')
insert into interest values('5038','5037','like')
insert into interest values('5038','5039','like')
insert into interest values('5038','5041','like')
insert into interest values('5038','5043','like')
insert into interest values('5038','5045','like')

insert into interest values('5040','5027','like')
insert into interest values('5040','5029','like')
insert into interest values('5040','5031','like')
insert into interest values('5040','5033','like')
insert into interest values('5040','5035','like')
insert into interest values('5040','5037','like')
insert into interest values('5040','5039','like')
insert into interest values('5040','5041','like')
insert into interest values('5040','5043','like')
insert into interest values('5040','5045','like')

insert into interest values('5042','5027','like')
insert into interest values('5042','5029','like')
insert into interest values('5042','5031','like')
insert into interest values('5042','5033','like')
insert into interest values('5042','5035','like')
insert into interest values('5042','5037','like')
insert into interest values('5042','5039','like')
insert into interest values('5042','5041','like')
insert into interest values('5042','5043','like')
insert into interest values('5042','5045','like')

insert into interest values('5044','5027','like')
insert into interest values('5044','5029','like')
insert into interest values('5044','5031','like')
insert into interest values('5044','5033','like')
insert into interest values('5044','5035','like')
insert into interest values('5044','5037','like')
insert into interest values('5044','5039','like')
insert into interest values('5044','5041','like')
insert into interest values('5044','5043','like')
insert into interest values('5044','5045','like')

insert into interest values('5046','5027','like')
insert into interest values('5046','5029','like')
insert into interest values('5046','5031','like')
insert into interest values('5046','5033','like')
insert into interest values('5046','5035','like')
insert into interest values('5046','5037','like')
insert into interest values('5046','5039','like')
insert into interest values('5046','5041','like')
insert into interest values('5046','5043','like')
insert into interest values('5046','5045','like')
INSERT INTO GoogleMap values ('寵物醫院','文心動物醫院','02-2236-0117','台北市','文山區','台北市文山區木柵路一段102號',NULL);
INSERT INTO GoogleMap values ('寵物用品店','凱朵寵物精品生活館','02-2358-3000','台北市','中正區','台北市中正區羅斯福路二段7之1號',NULL);
INSERT INTO GoogleMap values ('寵物餐廳','gobar狗吧寵物餐廳','02-2918-3696','新北市','新店區','新北市新店區環河路1-1號1F',NULL);
INSERT INTO GoogleMap values ('寵物用品店','喜羊羊寵物生活館','02-2933-7700','台北市','文山區','台北市文山區景興路169號',NULL);
INSERT INTO GoogleMap values ('寵物餐廳','貓咪先生的朋友','02-2731-8387','台北市','大安區','台北市大安區仁愛路四段345巷5弄15號',NULL);
INSERT INTO GoogleMap values ('寵物用品店','愛貓園','02-2735-8758','台北市','大安區','台北市大安區基隆路二段112號',NULL);
INSERT INTO GoogleMap values ('寵物餐廳','zoo cafe 動物園野餐咖啡','02-2721-9322 ','台北市','大安區','台北市大安區仁愛路四段345巷5弄15號',NULL);
INSERT INTO GoogleMap values ('寵物醫院','世安動物醫院','02-2236-0117','台北市','文山區','台北市文山區木柵路一段102號',NULL);
INSERT INTO GoogleMap values ('寵物醫院','路加動物醫院','02-2230-6841','台北市','文山區','台北市文山區興隆路三段298號',NULL);
INSERT INTO GoogleMap values ('寵物用品店','HAPET 好寵','02-2351-3645','台北市','大安區','台北市大安區永康街14巷4號',NULL);
INSERT INTO GoogleMap values ('寵物餐廳',' 跑飯店the Paw Hotel','02-2327-8536','台北市','中正區','台北市中正區濟南路2段64-2號',NULL);
INSERT INTO GoogleMap values ('寵物用品店','好狗命寵物用品','02-2948-5555','新北市','中和區','新北市中和區景平路404號',NULL);
INSERT INTO GoogleMap values ('寵物餐廳','安和65','02-2706-6565 ','台北市','大安區','台北市大安區安和路一段65號',NULL);
INSERT INTO GoogleMap values ('寵物醫院','達仁動物醫院','02-2937-1558','台北市','文山區','台北市文山區木柵路二段133號',NULL);
INSERT INTO GoogleMap values ('寵物餐廳','小春日和','02-8787-6920','台北市','松山區','台北市松山區延壽街361號',NULL);
INSERT INTO GoogleMap values ('寵物用品店','派弟寵物店','02-2913-1998','新北市','新店區','新北市新店區北新路二段187之1號',NULL);
INSERT INTO GoogleMap values ('寵物餐廳',' TWO HOUSE 兔子餐廳2店','02-2841-3790 ','台北市','士林區','台北市士林區至善路三段342號',NULL);
INSERT INTO GoogleMap values ('寵物用品店','中圓寵物家族','02-2733-0008','台北市','信義區','台北市信義區信安街99號',NULL);
INSERT INTO GoogleMap values ('寵物餐廳','熊燒 Bar餐酒館','02-2748-9682 ','台北市','松山區','台北市松山區市民大道五段159號',NULL);
INSERT INTO GoogleMap values ('寵物用品店','旺城寵物精品館','02-8988-3992','新北市','三重區','新北市三重區三和路四段23-1號',NULL);
INSERT INTO GoogleMap values ('寵物餐廳','喵吧咖啡廳','02-2753-1011 ','台北市','松山區','台北市松山區南京東路五段123巷1弄11號',NULL);
INSERT INTO GoogleMap values ('寵物醫院','台大維康動物醫院','02-2793-7293','台北市','內湖區','台北市內湖區成功路三段150號',NULL);
INSERT INTO GoogleMap values ('寵物用品店','普羅寵物生活館','02-8964-5359','新北市','板橋區','新北市板橋區四川路一段174號',NULL);
INSERT INTO GoogleMap values ('寵物餐廳','讀貓園','02-2736-9898 ','台北市','大安區','台北市大安區和平東路三段370號2樓',NULL);
INSERT INTO GoogleMap values ('寵物醫院','全國動物醫院','02-8791-8706','台北市','內湖區','台北市內湖區舊宗路一段30巷13號',NULL);
INSERT INTO GoogleMap values ('寵物醫院','聖安動物醫院','02-2277-6711','新北市','新莊區','新北市新莊區中港路256號',NULL);
INSERT INTO GoogleMap values ('寵物用品店','愛立寵物','02-8732-8295','台北市','大安區','台北市大安區樂業街124號',NULL);
INSERT INTO GoogleMap values ('寵物餐廳','甦活零工坊','02-2721-3057','台北市','大安區','台北市大安區延吉街97巷18號',NULL);
INSERT INTO GoogleMap values ('寵物醫院','躍犬綜合動物醫院','02-2933-0963','台北市','文山區','台北市文山區景文街88號',NULL);
INSERT INTO GoogleMap values ('寵物用品店','吉咪小舖','02-2747-7308','台北市','松山區','台北市松山區南京東路五段286巷1號',NULL);
INSERT INTO GoogleMap values ('寵物餐廳','貓藝家Cat.Art.Home','02-2924-2427','新北市','永和區','新北市永和區博愛街5號',NULL);
INSERT INTO GoogleMap values ('寵物用品店','御軒寵物用品店','02-2723-9639','台北市','信義區','台北市信義區松仁路184號',NULL);
INSERT INTO GoogleMap values ('寵物餐廳','蜜袋屋寵物主題餐廳','02-8732-8759','台北市','大安區','台北市大安區通化街39巷50弄90號',NULL);
INSERT INTO GoogleMap values ('寵物醫院','凡賽爾賽鴿寵物鳥醫院','02-2586-9933','台北市','大同區','台北市大同區民族西路53號',NULL);
INSERT INTO GoogleMap values ('寵物醫院','大直動物醫院','02-8509-6306','台北市','中山區','台北市中山區北安路468號',NULL);
INSERT INTO GoogleMap values ('寵物用品店','志誠寵物用品','02-2305-6634','台北市','萬華區','台北市萬華區萬大路536號',NULL);
INSERT INTO GoogleMap values ('寵物餐廳','洺樓咖啡館','02-2501-9393','台北市','中山區','台北市中山區松江路362巷5號',NULL);
INSERT INTO GoogleMap values ('寵物用品店','狗日子寵物精品','02-2769-6825','台北市','松山區','台北市松山區新東街20巷46號',NULL);
INSERT INTO GoogleMap values ('寵物餐廳','兜味','02-2557-3169','台北市','大同區','台北市大同區安西街36號',NULL);
INSERT INTO GoogleMap values ('寵物醫院','全家動物醫院','02-2266-1143','新北市','土城區','新北市土城區中央路一段63號',NULL);
INSERT INTO GoogleMap values ('寵物餐廳','貝殼海創意料理','02-2932-7776','台北市','文山區','台北市文山區羅斯福路五段293號',NULL);
INSERT INTO GoogleMap values ('寵物用品店','麻吉寵物用品有限公司','02-2876-3325','台北市','士林區','台北市士林區天母東路50巷20號',NULL);
INSERT INTO GoogleMap values ('寵物醫院','剛果非犬貓動物醫院','02-8665-5702','新北市','新店區','新北市新店區中興路三段259號',NULL);
INSERT INTO GoogleMap values ('寵物用品店','貓耳朵寵物美容坊','02-2986-9000','新北市','三重區','新北市三重區忠孝路二段94號',NULL);
INSERT INTO GoogleMap values ('寵物餐廳','GustavPUPPY_CAFE','02-2775-5677','台北市','大安區','台北市大安區光復南路348之1號',NULL);
INSERT INTO GoogleMap values ('寵物用品店','跟屁蟲寵物用品店','02-2855-6908','台北市','松山區','台北市松山區三民路74巷1-1號',NULL);
INSERT INTO GoogleMap values ('寵物餐廳','The Favorite café ','02-2971-4921','新北市','永和區','新北市永和區保安路292號',NULL);
INSERT INTO GoogleMap values ('寵物醫院','永春動物醫院','02-8789-8849','台北市','信義區','台北市信義區忠孝東路五段424號',NULL);
INSERT INTO GoogleMap values ('寵物用品店','Lets狗寵物店','02-2702-8678','台北市','大安區','台北市大安區信義路四段265巷13號',NULL);
INSERT INTO GoogleMap values ('寵物餐廳','寶新寵物客棧','02-2447-6904','新北市','土城區','新北市土城區中華路二段126號',NULL);
INSERT INTO GoogleMap values ('寵物醫院','廣慈動物醫院','02-2504-4236','台北市','中山區','台北市中山區錦州街371號',NULL);
INSERT INTO GoogleMap values ('寵物醫院','東宏動物醫院','02 2595 7366','台北市','中山區','台北市中山區吉林路432號',NULL);
INSERT INTO GoogleMap values ('寵物用品店','Awesome歐森寵物生活澡堂','02-2930-2778','台北市','文山區','台北市文山區景興路29號',NULL);
INSERT INTO GoogleMap values ('寵物餐廳','Gooddog寵物','02-2666-0178','新北市','新店區','新北市新店區永興路10-1號',NULL);
INSERT INTO GoogleMap values ('寵物醫院','五洲動物醫院','02-2707-9477','台北市','大安區','台北市大安區新生南路一段137-2號',NULL);
	
	
			
INSERT INTO Article values ('管理員','公告','清明連假公休','因4/2號開始為期4天的清明連假<br>宅配於清明連假間暫停送貨<br>最後收單日為4/1下午4點前<br>若清明連假間較晚到貨 還請各位見諒<br>超取部分正常寄送<br>店面也會在清明連假期間繼續為各位服務唷<br>造成不便，盡請見諒 <br>歡迎用LINE 訂購(@meow) 或電話訂購或店取<br>請電：0932-181272 (02)27840692 <br>地址：台北市大安區信義路四段30巷54號(大安捷運站後方)<br>營業時間:週一~週六 12:00~22:00 週日 14:00~22:00','2016-04-01 14:39:05.588','0',NULL);
INSERT INTO Article values ('管理員','活動','原野優越系列買大送小','親愛的喵爸喵媽們<br>原野優越廠商出了新活動囉 !!<br>4/1日起<br>凡是購買原野優越系列飼料<br>購買14LB一包 送300g嘗鮮包3包<br>購買25LB一包 送300g嘗鮮包5包<br>有需要的喵友們快點私訊小編訂購吧<br>歡迎用LINE 訂購(@meow) 或電話訂購或店取<br>請電：0932-181272 (02)27840692 <br>地址：台北市大安區信義路四段30巷54號(大安捷運站後方)<br>營業時間:週一~週六 12:00~22:00 週日 14:00~22:00','2016-04-01 18:51:14.675','0','/PuppyKitten/_100_images/原野優越.jpg');
INSERT INTO Article values ('許誌中','問題','請問貓咪如何表示好感呢','貓在表示好感方面不如狗狗直白,以至於我們經常認為貓是不友善和冷漠的<br>但是感覺得出來其實滿是會表露好感的,只是貓咪是怎樣對人表示好感呢?','2016-04-01 20:22:28.447','0',NULL);
INSERT INTO Article values ('何亭儀','心得','狗狗的餵食禁忌','１.不要讓幼犬有機會吞雞骨、排骨或魚骨、因為它們會滯留在咽喉裏，然後碎裂，如果不留在咽喉裏，就會滑進體內，刺穿胃壁和腸道。<br>２.不要讓幼犬吃人們的剩菜剩飯，因為愛犬對營養的需求和人類不同，若用人類的食譜調理狗食，不但費時費事，而且愛犬很難攝取到完整均衡的營養。<br>３.每餐飯之間不要給幼犬零食吃，如果牠服從其它訓練，可以給牠少許零食，以示鼓勵。<br>','2016-04-01 23:24:37.978','0',NULL);
INSERT INTO Article values ('管理員','公告','豆腐砂到貨囉','親愛的貓爸喵媽們<br>缺貨很久的豆腐砂終於到貨囉！！！！！<br>這次到貨數量沒有很多<br>有需要的趕快私訊小編line訂購吧^^<br>歡迎用LINE 訂購(@meow) 或電話訂購或店取<br>請電：<br>0932-181272 (02)27840692<br>地址：<br>台北市大安區信義路四段30巷54號(大安捷運站後方)<br>營業時間:週一~週六 12:00~22:00 週日 14:00~22:00<br>','2016-03-31 14:41:26.144','0','/PuppyKitten/_100_images/缺貨豆腐砂.jpg');
INSERT INTO Article values ('管理員','活動','買到賺到特惠活動','親愛的喵爸喵媽們<br>購買歐奇斯成幼貓5.25LB一包<br>即贈送一罐i show洗毛精及超火紅的熊本頭一顆<br>限量三個名額唷<br>數量有限，售完為止<br>歡迎用LINE 訂購(@meow) 或電話訂購或店取<br>請電：<br>0932-181272 (02)27840692<br>地址：<br>台北市大安區信義路四段30巷54號(大安捷運站後方)<br>營業時間:週一~週六 12:00~22:00 週日 14:00~22:00<br>','2016-03-11 18:04:45.451','0','/PuppyKitten/_100_images/洗毛精.jpg');
INSERT INTO Article values ('陳資文','問題','貓吐飼料求解','我家有兩隻貓<br>一隻最近不時會吐飼料<br>都還蠻完整的<br>平常都有訂時餵兩隻貓吃化毛膏<br>飼料也是化毛配方的<br>依我觀察<br>會吐的那隻吃飼料都沒什麼咬就吞了<br>是不是要換大顆一點的飼料？<br>還是可以教嗎？<br>','2016-02-22 15:18:06.457','0',NULL);
INSERT INTO Article values ('管理員','公告','228連假暫停出貨','親愛的喵爸喵媽們<br>因為228連假的關係<br>星期日星期一不出貨唷<br>這幾天有訂購的把拔馬麻們<br>可能就需要有耐心等候貨了 >"<<br>店面一樣正常營業<br>祝喵爸喵媽們連假愉快<br>歡迎用LINE 訂購(@meow) 或電話訂購或店取<br>請電：<br>0932-181272 (02)27840692<br>地址：<br>台北市大安區信義路四段30巷54號(大安捷運站後方)<br>營業時間:週一~週六 12:00~22:00 週日 14:00~22:00<br>','2016-02-26 12:25:31.857','0',NULL);
INSERT INTO Article values ('陳冠廷','心得','分享不錯的寵物用品網站','我一直都是習慣在動物王國網站買的<br>覺得上網買很方便 就不用特地跑出門<br>畢竟有時候太多 自己扛回來也是很重的<br>有專人送回來方便多了 <br>加上動物王國它們家的東西都很齊全<br>可以一次買到想要的東西 不需要分好多地方找<br>另外動物王國最近有開始一個24小時到貨的服務<br>有訂過飼料和零食那些 都還蠻快就送來了<br>只要下午三點前訂的話 隔天就會送到家<br> 連週末也都會幫忙送 就不用等那麼多天<br> 這是動物王國的網址www.17ipet.tw<br>你可以自己去看看喔~<br>','2016-03-03 18:55:03.333','0',NULL);
INSERT INTO Article values ('管理員','活動','即期品出清','買NB無穀地瓜鮭魚全犬(小顆粒)5.44公斤1包<br>獨特蛋白來源 低敏配方<br>經過醫學實驗<br>可幫助愛犬重建免疫系統<br>抗淚痕作用效果傑出<br>有效期限:2016/05<br>購買原包裝送<br>i SHOW 洗毛精兩罐<br>聖誕造型毯乙個<br>熊本暖手枕乙個<br>再享有免運費!!<br>※買分裝包3包也有送洗毛精一罐!<br>( 贈品隨機出貨 )<br>所以有需要的朋友可以搶購唷!!!<br>※ ※ ※ 贈品數量有限，送完為止 ※ ※ ※<br>歡迎用LINE 訂購(@meow) 或電話訂購或店取<br>請電：<br>0932-181272 (02)27840692<br>地址：<br>台北市大安區信義路四段30巷54號(大安捷運站後方)<br>營業時間:週一~週六 12:00~22:00 週日 14:00~22:00<br>','2016-02-11 15:35:17.421','0',NULL);
INSERT INTO Article values ('管理員','活動','新品優質貓砂上架囉','優質凝結松木貓砂-凱優紅標上架囉<br>凝結力好、除臭力佳<br>且貓砂中不含酚類 可以安心地給家中毛孩們使用<br>現貨有40LB (17公斤)<br>快私訊小編 米沃粉粉超值價$<br>※ 此款貓砂限店取唷<br>歡迎用LINE 訂購(@meow) 或電話訂購或店取<br>請電：<br>0932-181272 (02)27840692<br>地址：<br>台北市大安區信義路四段30巷54號(大安捷運站後方)<br>營業時間:週一~週六 12:00~22:00 週日 14:00~22:00<br>','2016-02-04 11:22:13.075','0',NULL);
INSERT INTO Article values ('管理員','公告 ','到貨通知','Natural Balance 主食罐<br>1.法式豪華 ( 鮪魚.白鮭魚.沙丁魚.干貝 )<br>2.米蘭輕食 ( 山雞鮮湯.菠菜.胡蘿蔔 )<br>3.西班牙熱情 ( 鮪魚.鮭魚.雞肉.鮮蝦 )<br>以上3款到貨囉 smile 表情符號<br>有需要的拔拔麻麻們，快來下訂唷~<br>這次到貨數量有限~賣完又要等很久囉>"<<br>歡迎用LINE 訂購(@meow) 或電話訂購或店取<br>請電：<br>0932-181272 (02)27840692<br>地址：<br>台北市大安區信義路四段30巷54號(大安捷運站後方)<br>營業時間:週一~週六 12:00~22:00 週日 14:00~22:00<br>','2016-01-22 15:26:05.681','0',NULL);
INSERT INTO Article values ('管理員','公告','LINE的緊急公告','各位拔拔麻麻<br>2/1日起 我們接收下單<br>只會接收 生活LINE的單唷>"<<br>避免2/1日後下單沒有接收到您的單<br>要麻煩各位拔拔麻麻幫我動動手指 幫我加一下 <br>生活LINE ID → @meow<br>或是直接用好友掃QR code smile 表情符號<br>感謝各位拔拔麻麻囉>"<<br>ps: 相簿裡有圖示唷<br>不會的朋友可以照圖示操作唷 smile 表情符號<br>','2016-01-22 10:10:10.555','0',NULL);
INSERT INTO Article values ('林昭懿','問題','登記如何處理','我想帶我的狗狗去登記<br>請問需要什麼資料<br>要到哪裡辦理呢?<br>','2016-03-02 13:25:16.123','0',NULL);




SET IDENTITY_INSERT [dbo].[Product_buy_body] ON 
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2005, N'汪星人', N'生活用品', N'8in1愛犬(抗菌除臭)乾洗慕斯', N'指定價格', N'250', 350, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000444402.jpg', N'<p>使用獨特配方，免用水清洗，即可乾淨除臭皮膚毛髮，無酒精配方可以取代愛犬傳統洗澡方式，</p><p>方便使用於8週以上幼犬及老犬，受傷之愛犬及不容易清洗的愛犬身上。</p><p>使用蘆薈及無油脂配方能安全有效的保養皮膚及毛髮，長效芬芳配方，使愛犬常保清新氣味 。</p><p>將乾洗慕斯避開眼睛，取適量塗抹於寵物身上，輕梳皮毛按摩，讓慕斯滲入至皮毛內，使用乾紙巾擦乾即可。</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2007, N'汪星人', N'衣著打扮', N'WOW 休閒帥氣(紅四足)服', N'指定價格', N'', 559, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000430068.jpg', N'<p>全日本生產，時尚兼具保暖連帽短外套，含後腳四足，腰部為帥氣皮帶設計，超舒適純棉毛質感</p><p>高質感布料與手工鏽花，精緻感獨特的設計 ，穿上後讓你的狗狗成為外出時注目的焦點。</p><p>品牌: 日本WOW&nbsp; LOCO DOG</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2008, N'汪星人', N'休閒玩具', N'afem 寵物雙環結繩玩具', N'指定價格', N'', 170, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000807091.jpg', N'<p>藉由啃咬能幫助寵物強健牠們的牙齒與牙齦，麻繩及熱塑性橡膠製成</p><p>牙齒不受傷。耐咬耐磨，環保無毒， 磨牙健齒玩具。<br /><br />此型號適合小型犬使用。</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2009, N'喵星人', N'主食乾糧', N'ANF 特級幼母貓主食', N'指定價格', N'3000', 750, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000941117.jpg', N'<p>&nbsp;嗜口性極佳的配方，高蛋白質及易消化的脂肪，富含平衡維生素及礦物質。<br />&nbsp;符合成長中幼貓及懷孕、哺乳母貓的嚴格營養需求。&nbsp;<br />&nbsp;添加多種維生素，能幫助愛貓順利成長。&nbsp;</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2010, N'喵星人', N'主食乾糧', N'紐頓 無穀鮭魚成貓配方T24', N'指定價格', N'1800', 1049, NULL, NULL, 100, N'/PuppyKitten/_200_images/img001025696.jpg', N'<p>38%蛋白質， 17% 脂肪，無穀挑嘴貓配方</p><p>三種顆粒形狀~圓形、三角形、Y字形，符合全貓口腔嚼咬須求)超優質天然糧</p><p>選用加拿大當地食材製作，嗜口性極佳。100%的無穀配方，不含馬鈴薯與麩質以低血糖指標來設計。</p><p>使用高品質蛋白質，新鮮肉材搭配蔬菜及水果，提供完整均衡的營養，嘗起來美味。</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2011, N'喵星人', N'主食乾糧', N'愛肯拿無穀貓(雞肉x小紅莓)', N'指定價格', N'1200', 579, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000170458.jpg', N'<p>提供大量的動物性蛋白質，讓寵物在健康與生理條件處於最佳狀態。</p><p>低碳水化合物，確保體內能量平衡。</p><p>製造商當地生產，提供的多樣化蔬菜及水果，至少含有30%的蔬果含量，含有維他命及礦物質等豐富營養素。</p><p>滋補的草本植物添加，能強化動物的身體機能，展現活力。</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2012, N'汪星人', N'主食乾糧', N'美士大地小型成犬配方', N'指定價格', N'729', 1800, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000156448.jpg', N'<p>&nbsp;針對一歲以上小型成犬，所推出的大地極品食糧 ( 針對代謝 / 齒垢堆積 / 皮膚敏感...等，量身特製 )。<br />&nbsp;採用最高等級的天然食材原料，包含雞肉 / 羔羊肉 /&nbsp;鮭魚肉 /&nbsp;糙米 /&nbsp;燕麥片為主成份。<br />&nbsp;並搭配多種健康蔬果 ( 亞麻仁籽 / 紫花苜蓿 / 蕃茄蔓越莓 / 甜菜纖維 )，能幫助寶貝健康成長。<br />&nbsp;自然派健康飲食食糧，添加益生菌，營養均衡豐富，香味十足口味佳，狗狗超愛。&nbsp;<br />&nbsp;完整的糙米及燕麥，提供愛犬完整的能量及精力。</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2013, N'汪星人', N'主食乾糧', N'美士大地減肥輕食配方', N'指定價格', N'2000', 729, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000156607.jpg', N'<p>&nbsp;採用最高等級的天然食材原料，包含雞肉 / 羔羊肉 /&nbsp;鮭魚肉 /&nbsp;糙米 /&nbsp;燕麥片為主成份&nbsp;。<br />&nbsp;並搭配多種健康蔬果 ( 亞麻仁籽 / 紫花苜蓿 / 蕃茄蔓越莓 / 甜菜纖維 )，能幫助寶貝健康成長。<br />&nbsp;自然派健康飲食食糧，添加益生菌，營養均衡豐富，香味十足口味佳，狗狗超愛。&nbsp;<br />&nbsp;完整的糙米及燕麥，提供愛犬完整的能量及精力。<br />&nbsp;提供寶貝所必需氨基酸，能幫助維持身體機能及肌肉發展。&nbsp;</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2014, N'喵星人', N'生活用品', N'EverClean 強效抗菌結塊貓砂', N'指定價格', N'250', 649, NULL, NULL, 100, N'/PuppyKitten/_200_images/img001017092.jpg', N'<p>粉塵超低，能維護貓咪的呼吸道唷！<br />低過敏又抗菌的貓砂，超適合過敏性的貓咪，愛貓上完廁所也不會沾到腳腳，讓您居家環境也能乾乾淨淨。<br />Antimicrobal 禁止氣味導致的細菌成長。</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2015, N'喵星人', N'生活用品', N'vita原味水晶砂', N'指定價格', N'5000', 260, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000058420.jpg', N'<p>德國vita原味不規則顆粒，不是圓的，所以不會被貓帶出盆外滾動，清潔環境較輕鬆，除臭效果強吸水力好</p><p>無粉塵，不易過敏，吸水、除臭及抗菌效果佳，無灰塵，不會造成人體及寵物呼吸問題，原色無味。</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2016, N'喵星人', N'衣著打扮', N'Petio貓小叮安全貓項圈-金魚', N'指定價格', N'', 249, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000395476.jpg', N'<p>&nbsp;日本 Petio 生產，品質有保障。<br />&nbsp;幸福金魚花色，全新貓小叮系列項圈。<br />&nbsp;下方垂綴小鈴鐺，貓咪在行走時，會發出悅耳的聲響。<br />&nbsp;特殊扣式設計，只要二步驟，即可輕鬆帶上頸圈。&nbsp;</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2017, N'喵星人', N'生活用品', N'莎金氏貓咪全效洗毛精', N'指定價格', N'532', 279, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000720153.jpg', N'<p>美國原裝，甜蜜雛菊香溫和不流淚配方，不刺激的均衡PH酸鹼值，最適合貓兒易敏感的肌膚。<br /><br /><strong>使用說明:</strong>先用溫水將寵物全身浸濕，倒入適量洗毛精於手中搓揉起泡，洗淨寵物全身，然後用清水沖淨烘乾毛髮即可!</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2018, N'喵星人', N'生活用品', N'沛蒂露 無痛梳毛寵物貝殼梳', N'指定價格', N'', 799, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000945566.jpg', N'<p>日本生產， 防靜電、抗菌設計， 圓弧形貝殼幅度設計，讓狗狗貓貓梳起來都不會有不舒服的感覺，倒鉤式設計能夠去除深層的雜毛</p><p>梳下的毛髮會卡在梳子上清潔好方便， 人體工學設計握把好握不疲勞。軟質梳頭推薦不愛梳毛的寵物，讓寶貝擁有健康毛髮也不疼痛。</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2019, N'汪星人', N'生活用品', N'Pet Esthe 竹炭蜂膠修復洗毛精', N'指定價格', N'400', 499, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000091093.jpg', N'<p>日本原產竹炭成份，具有吸附新陳代謝排出體外廢物的作用 ，炭能補充天然礦物質且釋放負離子</p><p>對惡臭有脫臭效果&nbsp;，可紓緩寵物情緒 ，而竹餾提取物的抑菌力，能清潔寵物毛皮，與法國巴黎同步</p><p>含竹炭提煉物、死海礦物鹽、蜂膠，具有吸附脫臭的效果，產生負離子的炭能緩和寵物情緒，如一般Shampoo使用法。</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2020, N'汪星人', N'生活用品', N'TRIXIE 三明治布按摩膠梳', N'指定價格', N'', 190, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000608402.jpg', N'<p>德國 TRIXIE 三明治按摩膠梳，是由高配戴性三明治網眼布所構成，透氣通風耐磨且堅固，並且是不易變型。</p><p>右手設計，輕鬆穿戴，用魔術貼固定手挽為安全合適，特別是軟橡膠技巧絕不堅硬，且面積大，全圓短安全膠頭不傷肌膚更可輕鬆將廢毛輕易清除。</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2021, N'喵星人', N'生活用品', N'Q-mi 可愛寶貝窩', N'指定價格', N'', 2999, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000456896.jpg', N'<p>充滿溫馨造型感的可愛寶貝窩，各種角度欣賞均會有不同風格，提供小寵物們不受拘束又安心的私人空間</p><p>是寵物窩也是家飾品。兼具美觀及功能性，讓可愛的寶貝和它的專屬小窩，貼心地陪伴您一起生活。</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2022, N'汪星人', N'生活用品', N'豹紋印地安寵物屋', N'指定價格', N'', 799, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000414203.jpg', N'<p>Pettoy的冬季新款，印地安式蒙古包造型，美觀又實用，經典豹紋花紋，放置在家中，不但高雅又不突兀</p><p>全綿布材質，底毛質底墊舖成，質感極佳，寶貝睡在上頭舒適無比。簡約大方的設計，即美觀又實用，清理也相當方便可水洗(加洗衣袋)</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2023, N'汪星人', N'精選罐頭', N'CoCo幼母犬高鈣雞餐罐', N'指定價格', N'150', 24, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000017639.jpg', N'<p>&nbsp;嫩雞為主原料，優質素材即開即食。<br />&nbsp;小型成犬一餐一罐。<br />添加 Oligo 寡糖消臭整腸，DHA 幫助腦部發育。<br />添加鈣質，幼母犬最佳營養補充主食。</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2024, N'汪星人', N'精選罐頭', N'UsDog 愛犬澳洲機能餐罐', N'指定價格', N'80', 38, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000548634.jpg', N'<p>含必要維生素和礦物質，提高愛犬抵抗力，全非疫區肉類製成的肉醬，幼犬、成犬、老犬均可安心食用。</p><p>低鹽，低脂健康機能補助肉品，最直接的營養補給，好吃有美味，嗜口性超強，添加整腸消臭的Oligo寡糖，是優良的健康食品。</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2025, N'汪星人', N'衣著打扮', N'WOW 休閒綠帽短外套', N'指定價格', N'', 499, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000429861.jpg', N'<p>全日本生產，時尚兼具保暖連帽短外套，超舒適純棉毛質感， 高質感布料與手工鏽花，衣上有兩個造型小口袋及鏽花布，精緻感獨特的設計 ，穿上後讓你的狗狗成為外出時注目的焦點。</p><p>品牌: 日本WOW&nbsp; LOCO DOG</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2026, N'喵星人', N'衣著打扮', N'日本和風手工項圈', N'指定價格', N'', 180, NULL, NULL, 100, N'/PuppyKitten/_200_images/img001040232.jpg', N'<p>日本進口印刷布料，手創縫製，不起毛球，外銷日本精緻項圈，招財貓鈴鐺，讓貓咪及小型狗狗走日系復古風。<br />可透過兩個結來調整適當大小，鈴噹則為銷售台灣市場，改發財貓造型。</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2027, N'喵星人', N'衣著打扮', N'歐規貓咪外出牽繩', N'指定價格', N'', 120, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000859499.jpg', N'<p>貓咪專用胸背，遛貓必用遛貓繩(牽繩+胸背套)<br /><br />專為貓咪體型設計的工字型溜貓繩，FREE Size 正常貓咪都可以使用，外銷歐美規格，大色系讓貓咪即使在戶外掙脫也可肉眼尋找。</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2028, N'汪星人', N'嚴選零嘴', N'寶路雙效X型潔牙骨7入', N'指定價格', N'', 75, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000252658.jpg', N'<p>日本熱賣，能有效抑制80%牙菌斑及牙結石，天然制菌三合一，天然綠色，葉綠素，尤加利油，夾鍊袋包裝。天天食用，維持口氣清新&nbsp;<br /><br />成份：&nbsp;<br />米粉，澱粉，甘油，明膠，阿拉伯膠，礦物質，鮪魚肝，纖維素&nbsp;<br />酵母，大豆油，維生素，綠茶萃取物，植物油</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2029, N'汪星人', N'嚴選零嘴', N'TWISTIX 恩棒原味潔牙骨', N'指定價格', N'', 165, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000916901.jpg', N'<p>雙效潔牙骨採螺旋狀設計更有咬勁，雙效潔牙骨採螺旋狀設計更有咬勁</p><p>薄荷、香菜、葉綠素，小麥，米粉、大豆濃縮蛋白、纖維素等可保持牙齒健康、晶瑩剔透，封口袋設計保持風味</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2030, N'汪星人', N'嚴選零嘴', N'Petio 美味長牛肉條', N'指定價格', N'250', 169, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000830212.jpg', N'<p>為低脂(雞肉 牛肉 豬肉)天然素材，富含蛋白質等營養成份，不僅能補充營養、提振食慾且兼具潔牙效果，可當獎賞或訓練時給予食用。 可作為馴養愛犬輔助器材獎勵品，低鹽分添加 Oligo 寡糖，整腸健胃。 豐富脂肪酸，能使皮毛亮麗有光彩。 天然保鮮，不添加防腐劑，適合幼犬.成犬.老犬種食用。&nbsp;</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2031, N'汪星人', N'嚴選零嘴', N'Petio 零脂肪狗狗肉條', N'指定價格', N'100', 160, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000517696.jpg', N'<p>精選雞肉低脂部份天然素材，添加14種黃綠色蔬菜，作成波浪狀，增添咀嚼口感，幾乎零脂肪攝取，豐富纖維質，可以當訓練零嘴或是變成營養零食食用，增加寵物的營養不增胖，纖維質高營養看得見 ，幼犬老犬都可以食用柔軟口感好。讓狗狗降低肥胖的機會。</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2032, N'喵星人', N'嚴選零嘴', N'日本米堤極品鮪魚凍乾', N'指定價格', N'', 139, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000938791.jpg', N'<p>使用日本當地捕捉的新鮮鮪鰹魚，在產地直接使用冷凍乾燥技術，加入鰹魚湯汁封鎖魚的鮮度，不破壞魚的營養成份，作成塊狀魚肉，質地結實且香氣濃郁，健康天然，給寵物最需要的營養。</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2033, N'喵星人', N'嚴選零嘴', N'P-V貓用鮭魚雞肉壽司片', N'指定價格', N'30', 62, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000839272.jpg', N'<p>嚴選新鮮雞肉製成，低鹽低脂，無添加色素，鮮美香甜魚味散發，口感嚼勁都有。含 DHA，讓愛貓毛髮光澤亮麗，眼睛明亮。</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2034, N'喵星人', N'嚴選零嘴', N'P-V貓葉綠素薄荷潔牙粒', N'指定價格', N'50', 62, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000206647.jpg', N'<p>&nbsp;做成脆碎粒狀包含葉綠素，能有效清除口臭及體臭，排出毒素，防止老化且增強免疫力，含寡糖有效改善腸道功能減輕便臭，合適的柔軟度，更能貼切的按摩牙齦及牙床，有效帶走牙菌斑。</p>')
INSERT [dbo].[Product_buy_body] ([PRO_ID], [PRO_ANIMAL], [PRO_KIND], [PRO_NAME], [PRO_PROJECT], [PRO_WEIGHT], [PRO_PRICE], [PRO_BUY1], [PRO_BUY2], [PRO_STOCK], [PRO_IMAGE], [PRO_BODY]) VALUES (2035, N'喵星人', N'主食乾糧', N'晶燉 無穀嫩煎雞胸佐時蔬貓糧', N'指定價格', N'1500', 349, NULL, NULL, 100, N'/PuppyKitten/_200_images/img000473647.jpg', N'<p>MIT生產優質無穀飼料。台灣嚴選食材，新鮮深海魚粉搭配鮮雞肉與香濃台灣地瓜，馬鈴薯、紅蘿蔔、南瓜&hellip;，產地直送，無須冗長的海運時間，提供寵物天然、新鮮、美味、安全、營養的餐食</p>')
SET IDENTITY_INSERT [dbo].[Product_buy_body] OFF
