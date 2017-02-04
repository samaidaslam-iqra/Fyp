
use TestInk;
						-- inkUser -- data required to create user
 create Table  inkUser (UserId INT PRIMARY KEY, UserFirstName VARCHAR(30) NOT NULL, UserLastName VARCHAR(30) NOT NULL,
  UserEmail VARCHAR(45) NOT NULL, UserPassword VARCHAR(45) NOT NULL, UserGender  VARCHAR(10) NOT NULL,
   UserCountry  VARCHAR(45) NOT NULL,   UserPhone  INT NULL,UserDoB  DATE NULL,   DateOfJoining DATETIME NOT NULL);

						-- inkUserDetail -- data to be needed after user create successful
create table inkUserDetail  (UserDetailId INT PRIMARY KEY, UserId INT NOT NULL, UserEducation VARCHAR(45) NULL, UserAboutMe  VARCHAR(45) NULL,
 UserPhoto  VARBINARY  NULL, UserEmployement  VARCHAR(45) NULL );

use testInk;
ALTER TABLE inkUser  ADD CONSTRAINT uq_UserEmail UNIQUE(UserEmail);


INSERT INTO inkUserDetail(inkUserDetail.UserId ,UserAboutMe) 
SELECT  inkUSer.UserId ,'Its About me'
FROM inkUser
WHERE inkUser.UserId = 26;

ALTER TABLE inkUserDetail  Add UserSkills varchar(45);

update inkUserDetail set UserId=21, UserAboutMe='samaid', UserEducation='ms', UserEmployement='call' ,Userskills='asp , DotNet ,c#' WHERE inkUserDetail.UserId = 21;

select max(UserId) from inkUser;           

select  * from inkUserDetail  where Userid=21 and UserPhoto Is Not Null; 

delete from inkUserDetail where UserDetailId=2038;
select  * from inkUserDetail order by inkUserDetail.Userid

insert into inkUserDetail (UserId, UserAboutMe, UserEducation, UserEmployement , UserSkills, UserPhoto) values( '1043' ,null ,null,null,null,null );
  
   select UserPhoto from inkUserDetail where Userid= 1046 and UserPhoto Is Not Null ;
  select MAX(Userid) as Sam from InkUser;
select  userId, UserFirstName ,UserLastName,UserPassword ,UserEmail from InkUser where userid=(select MAX(UserId) as UserId from inkUser);

create table pic(id int not null primary key identity , photoName varchar(200));
Select * from inkUserDetail;
Update inkUserDetail set UserPhoto=null;


CREATE TABLE inkFile  (
   UploadId INT PRIMARY KEY identity(1, 1),
   UploadedBy INT ,
   
   FileName  VARCHAR(45) NULL,
   FileType  VARCHAR(45) NULL,
   FOREIGN KEY ( UploadedBy )  REFERENCES  inkUser  ( UserId ));

   CREATE TABLE     inkUserStat  (
   StatId  INT   PRIMARY KEY identity(1, 1) ,
   UserId  INT  ,
   ExperineceLevel  INT NULL,
   NoOfLinks  INT NULL,
   Ranks  VARCHAR(45) NULL,
   Remarks  VARCHAR(45) NULL,
  FOREIGN KEY ( UserId )
  REFERENCES      inkUser  ( UserId ));

CREATE TABLE        inkUserRemark  (
   RemarksId  INT   PRIMARY KEY identity(1, 1) ,
   RemarksTo  INT ,
   RemarksBy  INT ,
   Content  CHAR NULL,
   FOREIGN KEY ( RemarksTo )
    REFERENCES      inkUser  ( UserId ),
  FOREIGN KEY ( RemarksBy )
   REFERENCES      inkUser  ( UserId ));

CREATE TABLE      inkProfileReport  (
   ReportId  INT   PRIMARY KEY identity(1, 1)  ,
   ReportBy  INT ,
   ReportedUser  INT ,
   Reason  VARCHAR(100) NULL,
  FOREIGN KEY ( ReportBy )
    REFERENCES      inkUser  ( UserId ),
  FOREIGN KEY ( ReportedUser )
  REFERENCES      inkUser  ( UserId ));
  
CREATE TABLE inkFieldsOfInterest (
  InterestId INT NOT NULL PRIMARY KEY identity(1, 1) ,
  FieldType VARCHAR(45) NULL,
  FieldName VARCHAR(45) NULL DEFAULT NULL,
  UserId INT NULL,
  )

CREATE TABLE  inkUserChat (
  ChatId INT identity(1, 1) primary key,
  SenderId INT NOT NULL DEFAULT NULL,
  ReceiverId INT NULL DEFAULT NULL,
  Content varchar(max) NULL DEFAULT NULL,
  Date DATETIME NULL DEFAULT NULL,
  Attachment INT NULL,
  
      FOREIGN KEY (SenderId)
    REFERENCES inkUser (UserId),
 FOREIGN KEY (ReceiverId)
    REFERENCES inkUser (UserId),

    FOREIGN KEY (Attachment)
    REFERENCES inkFile (UploadId));


CREATE TABLE inkUserInterest (
  UserId INT NOT NULL,
  InterestId INT identity(1, 1) primary key ,
  
FOREIGN KEY (InterestId)   REFERENCES inkFieldsOfInterest (InterestId),

   FOREIGN KEY (UserId)   REFERENCES inkUser (UserId));