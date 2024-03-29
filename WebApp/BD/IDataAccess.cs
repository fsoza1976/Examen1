﻿using System.Collections.Generic;
using System.Data.SqlClient;
using System.Threading.Tasks;
using Entity;

namespace BD
{
    public interface IDataAccess
    {
        SqlConnection DbConnection { get; }

        Task<DBEntity> ExecuteAsync(string sp, object Param = null, int? Timeout = null);
        Task<IEnumerable<dynamic>> QueryAsync(string sp, object Param = null, int? Timeout = null);
        Task<IEnumerable<T>> QueryAsync<T, B, C, D, E, F, G>(string sp, string split, object Param = null, int? Timeout = null);
        Task<IEnumerable<T>> QueryAsync<T, B, C, D, E, F>(string sp, string split, object Param = null, int? Timeout = null);
        Task<IEnumerable<T>> QueryAsync<T, B, C, D, E>(string sp, string split, object Param = null, int? Timeout = null);
        Task<IEnumerable<T>> QueryAsync<T, B, C, D>(string sp, string split, object Param = null, int? Timeout = null);
        Task<IEnumerable<T>> QueryAsync<T, B, C>(string sp, string split, object Param = null, int? Timeout = null);
        Task<IEnumerable<T>> QueryAsync<T, B>(string sp, string split, object Param = null, int? Timeout = null);
        Task<IEnumerable<T>> QueryAsync<T>(string sp, object Param = null, int? Timeout = null);
        Task<T> QueryFirstAsync<T>(string sp, object Param = null, int? Timeout = null);
    }
}