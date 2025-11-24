CREATE PROCEDURE [dbo].[spPeople_Update]
     @id INT,
	@firstname NVARCHAR(50),
	@lastname NVARCHAR(50)
as
begin
  update [dbo].[People]
	set
		[GivenName] = @firstname,
		[LastName] = @lastname
	where
		[Id] = @id;
end



