CREATE TABLE tblMembers(
fldMemberId INTEGER IDENTITY(1,1) 
CONSTRAINT MemberId CHECK (fldMemberId > 0),
PRIMARY KEY (fldMemberId),
fldFName nvarchar(100)NOT NULL,
fldLName varchar(100)NOT NULL,
fldEmail varchar(100) NOT NULL UNIQUE,
fldDob Datetime NOT NULL,
fldGender char NOT NULL,
fldJoinDate Datetime default getdate(),
fldHometown varchar(100),
fldCurrentLocation varchar(100),
fldPassword varchar(50)NOT NULL,
fldRelationshipStatus varchar(20),
fldActive Integer default 1
);