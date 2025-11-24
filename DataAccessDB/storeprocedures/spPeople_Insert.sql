CREATE PROCEDURE [dbo].[spPeople_Insert]
	@firstname NVARCHAR(50),
	@lastname NVARCHAR(50)
AS
	
begin
  insert into [dbo].[People]
	(
		[GivenName],
		[LastName]
	)
	values
	(
		@firstname,
		@lastname
	);
end
