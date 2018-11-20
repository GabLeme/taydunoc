using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TayduInc.Ajax
{
    public class Leituras
    {
        private string connectionString = "Server=tcp:projeto321.database.windows.net,1433;Initial Catalog=dbprojeto;Persist Security Info=False;User ID=projeto321;Password=Faculdadebandtec2018;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

        public int getRamPercentual()
        {
            using (SqlConnection con = new SqlConnection(this.connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand($"SELECT RAM_PERCENTUAL FROM TBL_LEITURA WHERE COD_MAQUINA = '{Services.GET_COD_MAQUINA}' ORDER BY COD_LEITURA DESC", con);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    return int.Parse(rd["RAM_PERCENTUAL"].ToString());
                }
                else
                {
                    return 0;
                }
            }
        }

        public int getHdPercentual()
        {
            using (SqlConnection con = new SqlConnection(this.connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand($"SELECT HD_PERCENTUAL FROM TBL_LEITURA WHERE COD_MAQUINA = '{Services.GET_COD_MAQUINA}' ORDER BY COD_LEITURA DESC", con);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    return int.Parse(rd["HD_PERCENTUAL"].ToString());
                }
                else
                {
                    return 0;
                }
            }
        }

        public int getTempoAtividadePercentual()
        {
            using (SqlConnection con = new SqlConnection(this.connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand($"SELECT HD_TEMPO_ATIVIDADE_PERCENTUAL FROM TBL_LEITURA WHERE COD_MAQUINA = '{Services.GET_COD_MAQUINA}' ORDER BY COD_LEITURA DESC", con);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    return int.Parse(rd["HD_TEMPO_ATIVIDADE_PERCENTUAL"].ToString());
                }
                else
                {
                    return 0;
                }
            }
        }

        public int getCpuPercentual()
        {
            using (SqlConnection con = new SqlConnection(this.connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand($"SELECT CPU_PERCENTUAL FROM TBL_LEITURA WHERE COD_MAQUINA = '{Services.GET_COD_MAQUINA}' ORDER BY COD_LEITURA DESC", con);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    return int.Parse(rd["CPU_PERCENTUAL"].ToString());
                }
                else
                {
                    return 0;
                }
            }

        }

    }
}