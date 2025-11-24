CREATE PROCEDURE [dbo].[spPeople_GetAll]
AS

begin
select 
	[Id],
	[GivenName],
	[LastName] from [dbo].[People];
end