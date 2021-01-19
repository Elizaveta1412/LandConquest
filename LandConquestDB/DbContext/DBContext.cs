﻿using System;
using System.Data.SqlClient;

namespace LandConquestDB
{
    public static class DbContext
    {
        private static SqlConnection sqlconnection;
        public static void OpenConnectionPool()
        {
            string name = @"online";
            try
            {
                sqlconnection = new SqlConnection(YDContext.ReadResource(name));
            }
            catch (Exception) { }
            sqlconnection.OpenAsync();
        }

        public static SqlConnection GetSqlConnection()
        {
            return sqlconnection;
        }
        public static void OpenConnection()
        {
            sqlconnection.Open();
        }
        public static void CloseConnection()
        {
            sqlconnection.Close();
        }

    }
}