using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TayduInc.Ajax.UsoCpu
{
    public class AnalyticsCpu
    {
        private string connectionString = "Server=tcp:projeto321.database.windows.net,1433;Initial Catalog=dbprojeto;Persist Security Info=False;User ID=projeto321;Password=Faculdadebandtec2018;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

        public int minCpuPercentual()
        {
            using (SqlConnection con = new SqlConnection(this.connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand($"SELECT DISTINCT MIN(CPU_PERCENTUAL) OVER(PARTITION BY 1) AS valMin FROM TBL_LEITURA WHERE COD_MAQUINA = '{Services.GET_COD_MAQUINA}'", con);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    return int.Parse(rd["valMin"].ToString());
                }
                else
                {
                    return 0;
                }
            }
        }

        public int maxCpuPercentual()
        {
            using (SqlConnection con = new SqlConnection(this.connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand($"SELECT DISTINCT MAX(CPU_PERCENTUAL) OVER(PARTITION BY 1) AS valMax FROM TBL_LEITURA WHERE COD_MAQUINA = '{Services.GET_COD_MAQUINA}'", con);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    return int.Parse(rd["valMax"].ToString());
                }
                else
                {
                    return 0;
                }
            }
        }

        public double medianaCpuPercentual()
        {
            using (SqlConnection con = new SqlConnection(this.connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand($"SELECT DISTINCT PERCENTILE_CONT(0.5) WITHIN GROUP(ORDER BY CPU_PERCENTUAL) OVER(PARTITION BY 1) AS valMediana FROM TBL_LEITURA WHERE COD_MAQUINA = '{Services.GET_COD_MAQUINA}'", con);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    return double.Parse(rd["valMediana"].ToString());
                }
                else
                {
                    return 0;
                }
            }
        }

        public double mediaCpuPercentual()
        {
            using (SqlConnection con = new SqlConnection(this.connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand($"SELECT DISTINCT AVG(CAST(CPU_PERCENTUAL AS INTEGER)) OVER(PARTITION BY 1) AS valMedia FROM TBL_LEITURA WHERE COD_MAQUINA = '{Services.GET_COD_MAQUINA}'", con);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    return double.Parse(rd["valMedia"].ToString());
                }
                else
                {
                    return 0;
                }
            }
        }

        public double primeiroQuartilCpuPercentual()
        {
            using (SqlConnection con = new SqlConnection(this.connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand($"SELECT DISTINCT PERCENTILE_CONT(0.25) WITHIN GROUP(ORDER BY CPU_PERCENTUAL) OVER(PARTITION BY 1) AS valPrimeiroQuartil FROM TBL_LEITURA WHERE COD_MAQUINA = '{Services.GET_COD_MAQUINA}'", con);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    return double.Parse(rd["valPrimeiroQuartil"].ToString());
                }
                else
                {
                    return 0;
                }
            }
        }

        public double terceiroQuartilCpuPercentual()
        {
            using (SqlConnection con = new SqlConnection(this.connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand($"SELECT DISTINCT PERCENTILE_CONT(0.75) WITHIN GROUP(ORDER BY CPU_PERCENTUAL) OVER(PARTITION BY 1) AS valTerceiroQuartil FROM TBL_LEITURA WHERE COD_MAQUINA = '{Services.GET_COD_MAQUINA}'", con);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    return double.Parse(rd["valTerceiroQuartil"].ToString());
                }
                else
                {
                    return 0;
                }
            }
        }
    }
}
