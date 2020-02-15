using SQLAdapter;
using System.Data.SqlClient;
/*
 * Author: Sarah
 * Database connection object, as defined for my SQLAdapter library, houses the sql connection string for the database.
 */
namespace ThreadedProject_Workshop5.Models {
    public class TravelExpertsDB : I_SQLDB {
        public SqlConnection GetConnection() {
            string connectionString =
            @"Data Source=localhost\SQLEXPRESS;Initial Catalog=TravelExperts;Integrated Security=True";
            return new SqlConnection(connectionString);
        }
    }
}