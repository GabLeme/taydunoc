using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TayduInc.Models;

namespace TayduInc
{
    public partial class Maquinas : System.Web.UI.Page
    {
        private string connectionString = "Server=tcp:projeto321.database.windows.net,1433;Initial Catalog=dbprojeto;Persist Security Info=False;User ID=projeto321;Password=Faculdadebandtec2018;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cod_usuario"] == null)
            {
                Response.Redirect("/Login.aspx");
            }
            else
            {
                List<Maquina> maquinas = new List<Maquina>();

                using (SqlConnection conn = new SqlConnection(this.connectionString))
                {
                    conn.Open();

                    using (SqlCommand cmd = new SqlCommand($"SELECT COD_MAQUINA, NOME_MAQUINA, ATIVA FROM TBL_MAQUINA WHERE COD_USUARIO='{Session["cod_usuario"]}'", conn))
                    {

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read() == true)
                            {
                                Maquina m = new Maquina();
                                m.COD_MAQUINA = reader.GetInt32(0);
                                m.NOME_MAQUINA = reader.GetString(1);
                                m.ATIVA = reader.GetString(2);

                                maquinas.Add(m);
                            }
                        }
                    }

                    listRepeater.DataSource = maquinas;
                    listRepeater.DataBind();

                }
            }
        }

        protected void btnAddMaquina_Click(object sender, EventArgs e)
        {
            Services sv = new Services();
            using (SqlConnection con = new SqlConnection(this.connectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO TBL_MAQUINA (COD_MAQUINA, NOME_MAQUINA, COD_USUARIO, ATIVA) VALUES (@COD_MAQUINA, @NOME_MAQUINA, @COD_USUARIO, @ATIVA)", con);
                cmd.Parameters.AddWithValue("@COD_MAQUINA", sv.RandomNumber(3000, 9999));
                cmd.Parameters.AddWithValue("@NOME_MAQUINA", txtNomeMaquina.Text);
                cmd.Parameters.AddWithValue("@COD_USUARIO", Session["cod_usuario"]);
                cmd.Parameters.AddWithValue("@ATIVA", "OFF");
                cmd.ExecuteNonQuery();
                Response.Redirect("/Maquinas.aspx?attMaquinas=true");
            }
        }
    }

}