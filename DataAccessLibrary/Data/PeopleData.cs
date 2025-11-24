using DataAccessLibrary.Models;

namespace DataAccessLibrary.Data;

public class PeopleData
{
    private readonly ISqlDataAccess _db;

    public PeopleData(ISqlDataAccess db)
    {
        _db = db;
    }

    public async Task<IEnumerable<PersonModel>> GetAllPeople()
    {
        string sql = "spPeople_GetAll";

        return await _db.LoadDataAsync<PersonModel, dynamic>(sql, new { });
    }

    public async Task UpdatePerson(PersonModel person)
    {
        string sql = "spPeople_Update";

        await _db.SaveDataAsync(sql, person);
    }

    public async Task InsertPerson(PersonModel person)
    {
        string sql = "spPeople_Insert";

        await _db.SaveDataAsync(sql, new { person.FirstName, person.LastName });
    }

    public async Task DeletePerson(int id)
    {
        string sql = "spPeople_Delete";

        await _db.SaveDataAsync(sql, new { Id = id });
    }
}
