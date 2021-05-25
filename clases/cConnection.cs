using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace HealthyDiet.clases
{
    public class cConnection
    {

        public SqlConnection conn = new SqlConnection();
        string conect = "Data Source =.; Initial Catalog =  healthyDiet; Integrated Security = True";
        public cConnection()
        {
            conn.ConnectionString = conect;
        }
        public void Open()
        {
            conn.Close();
            conn.Open();
        }
        public void Close()
        {
            conn.Close();
        }


    }
}