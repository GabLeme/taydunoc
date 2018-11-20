using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TayduInc
{
    public class Services
    {

        public static int GET_COD_MAQUINA = 0;
        public int COD_USUARIO;
        public static string EMAIL_USUARIO = "";
        private string connectionString = "Server=tcp:projeto321.database.windows.net,1433;Initial Catalog=dbprojeto;Persist Security Info=False;User ID=projeto321;Password=Faculdadebandtec2018;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

        public Boolean autenticarUsuario(String email, String senha)
        {
            using (SqlConnection con = new SqlConnection(this.connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand($"SELECT COD_USUARIO, EMAIL, SENHA FROM TBL_USUARIO WHERE EMAIL='{email}' AND SENHA='{senha}'", con);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    COD_USUARIO = rd.GetInt32(0);
                    EMAIL_USUARIO = rd.GetString(1);
                    return true;
                }
                else
                {
                    return false;
                }
            }

        }

        public Boolean verificaEmail(String email)
        {
            using (SqlConnection con = new SqlConnection(this.connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand($"SELECT EMAIL FROM TBL_USUARIO WHERE EMAIL = '{email}'", con);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }

        public int RandomNumber(int min, int max)
        {
            Random random = new Random();
            return random.Next(min, max);
        }
    }
}