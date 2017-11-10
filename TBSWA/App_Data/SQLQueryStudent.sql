--Select the database to use
--USE TheBrokenSpine;
GO

--Declare script variable as type BIT
Declare @Pass BIT; --Used to make sure operation worked
Set @Pass = 1; -- set the value to represent TRUE 

------Drop Table tblStudent and Start Fresh-----
if exists (select * from sys.objects where name = 'tblStudent')
BEGIN
    drop table tblStudent;
END

------New Table tblStudent to Create-----
BEGIN TRY 
CREATE TABLE tblStudent (
fldStudentID INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
fldStudentName varchar(50) NOT NULL,
fldStudentSSN varchar(10) NOT NULL, 
fldStudentEmail varChar(50) NOT NULL, 
fldStudentPhone varchar(50) NOT NULL);
PRINT 'tblStudent created';
END TRY
BEGIN CATCH
 PRINT 'tblStudent created was NOT created';
 Set @Pass = 0 --FALSE table not created
END CATCH

------Seed the tblStudent to Test design -----
BEGIN TRY
IF @Pass = 1 -- True if the table was created
BEGIN 
  INSERT INTO tblStudent
  (fldStudentName, fldStudentSSN, fldStudentEmail, fldStudentPhone )
  VALUES
 ('John Oakes', '155557777', 'johnoakes@email.com', '215-666-7777');
 INSERT INTO tblStudent
 (fldStudentName, fldStudentSSN, fldStudentEmail, fldStudentPhone )
 VALUES
 ('Steve Oakes', '155558888', 'steveoakes@email.com', '215-666-9999');
 PRINT 'tblStudent was Seeded';
 END
ELSE  --Pass failed table creation
 PRINT 'tblStudent was NOT Seeded';
END TRY
BEGIN CATCH -- issue with insert
 PRINT 'tblStudent was NOT Seeded';
END CATCH

------Remove sprGetStudent Stored Procedure -----
if exists (select * from sys.objects where name = 'sprGetStudentByStudentID')
BEGIN
DROP PROCEDURE sprGetStudentByStudentID
END
GO

------Create SPROC sprGetStudentByStudentID -----
CREATE PROCEDURE sprGetStudentByStudentID
@fldStudentID int
AS
BEGIN
SELECT fldStudentName, fldStudentSSN, fldStudentEmail, fldStudentPhone
FROM tblStudent
WHERE fldStudentID = @fldStudentID;
END
GO
PRINT 'Stored Procedure sprGetStudentByStudentID was created';

------After Table tblStudent Schema Add XML Field -----
BEGIN TRY 
ALTER TABLE tblStudent ADD fldXMLData XML NULL
PRINT 'tblStudent Schema Altered';
END TRY
BEGIN CATCH
 PRINT 'tblStudent Schema was NOT Altered';
END CATCH