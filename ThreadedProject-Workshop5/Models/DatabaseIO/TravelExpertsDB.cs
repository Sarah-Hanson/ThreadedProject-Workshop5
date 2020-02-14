using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using SQLAdapter;
/*
 * Author: Sarah
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