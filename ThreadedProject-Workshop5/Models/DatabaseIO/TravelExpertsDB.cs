using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using SQLAdapter;
/*
 * Author: Sarah
 * Database connection object, as defined for my SQLAdapter library, houses the sql connection string for the database.
 */
namespace ThreadedProject_Workshop5.Models {
    public class TravelExpertsDB : SQLDB {
        public SqlConnection GetConnection() {
            string connectionString =
            @"Data Source=localhost\SQLEXPRESS;Initial Catalog=TravelExperts;Integrated Security=True";
            return new SqlConnection(connectionString);
        }
    }
}