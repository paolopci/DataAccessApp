CREATE PROCEDURE [dbo].[spPeople_Delete]
	@id INT
AS
begin
	delete from [dbo].[People]
	where
		[Id] = @id;
end
