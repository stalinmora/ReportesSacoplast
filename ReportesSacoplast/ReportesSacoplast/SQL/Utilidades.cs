using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace ReportesSacoplast.SQL
{
    public class Utilidades
    {
        public static List<T> SqlQuery<T>(DbContext db, string sql, params object[] parameters)
        {

            List<T> Rows = new List<T>();
            using (SqlConnection con = new SqlConnection(db.Database.Connection.ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    foreach (var param in parameters)
                        cmd.Parameters.Add(param);
                    con.Open();
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        //if (dr.HasRows)
                        //{

                            //var dictionary = typeof(T).GetProperties().ToDictionary(field => CamelCaseToUnderscore(field.Name), field => field.Name);
                            try
                            {
                                while (dr.NextResult())
                                {
                                    var d = Convert.ToString(dr["#EgrIng"]);
                                    var e = Convert.ToString(dr[0]);
                                    var f = Convert.ToString(dr[1]);
                                    //T tempObj = (T)Activator.CreateInstance(typeof(T));
                                    /*
                                    foreach (var key in dictionary.Keys)
                                    {
                                        PropertyInfo propertyInfo = tempObj.GetType().GetProperty(dictionary[key], BindingFlags.Public | BindingFlags.Instance);
                                        if (null != propertyInfo && propertyInfo.CanWrite)
                                            propertyInfo.SetValue(tempObj, Convert.ChangeType(dr[key], propertyInfo.PropertyType), null);
                                    }
                                    */
                                    //Rows.Add(tempObj);
                                }
                            }
                            catch (Exception ex)
                            {
                                var f = ex.ToString();
                                dr.Close();

                        }
                            
                        //}
                        
                    }
                }
            }
            return Rows;
        }

        private static string CamelCaseToUnderscore(string str)
        {
            return Regex.Replace(str, @"(?<!_)([A-Z])", "_$1").TrimStart('_').ToLower();
        }
    }
}
