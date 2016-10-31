
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