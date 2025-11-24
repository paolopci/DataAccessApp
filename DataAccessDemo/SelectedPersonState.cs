using DataAccessLibrary.Models;

namespace DataAccessDemo;

public class SelectedPersonState
{
    public PersonModel? Person { get; private set; }

    public event Action? PersonChanged;

    public void SetPerson(PersonModel person)
    {
        Person = person;
        PersonChanged?.Invoke();
    }

    public void Clear()
    {
        Person = null;
        PersonChanged?.Invoke();
    }
}
