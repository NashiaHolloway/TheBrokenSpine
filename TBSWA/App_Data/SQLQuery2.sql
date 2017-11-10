USE [C:\USERS\NASHIA HOLLOWAY\SOURCE\REPOS\THEBROKENSPINE\TBSWA\APP_DATA\THEBROKENSPINE.MDF]
GO

DECLARE	@return_value Int

EXEC	@return_value = [dbo].[sprGetStudentByStudentID]
		@fldStudentID = 2

SELECT	@return_value as 'Return Value'

GO

UPDATE tblStudent
  SET fldXMLData = '<root></root>'
  WHERE fldStudentID = 1;

 UPDATE tblStudent
  SET fldXMLData.modify('insert (<pnode><child1>Value 1</child1><child2>Value 2</child2></pnode>) into (/root)[1]')
  WHERE fldStudentID = 1;

  Select fldXMLData
  from tblStudent
  Where fldStudentID = 1;

  Select [fldXMLData].value('(/root//pnode//child1)[1]', 'varchar(10)') AS Child
  from tblStudent
  Where fldStudentID = 1;