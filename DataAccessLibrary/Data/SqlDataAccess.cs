using Microsoft.Extensions.Configuration;

namespace DataAccessLibrary.Data
{
    public class SqlDataAccess
    {
        private readonly IConfiguration _config;

        public SqlDataAccess(IConfiguration config)
        {
            _config = config;
        }
    }
}
