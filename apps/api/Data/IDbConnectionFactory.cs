using System.Data;
namespace api.Data;

public interface IDbConnectionFactory
{
    IDbConnection CreateConnection();
}