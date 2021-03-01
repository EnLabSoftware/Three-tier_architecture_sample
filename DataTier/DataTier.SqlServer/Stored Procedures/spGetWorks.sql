CREATE PROCEDURE [dbo].[spGetWorks]
	@pId int = NULL
AS
	SELECT * FROM [dbo].[vwWork]
	WHERE Id = @pId OR @pId IS NULL
RETURN 0
