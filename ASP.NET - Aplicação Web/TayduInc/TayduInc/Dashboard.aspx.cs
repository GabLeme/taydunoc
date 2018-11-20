using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TayduInc
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["cod_maquina"] = null;
            if (Session["cod_usuario"] == null)
            {
                Response.Redirect("/Login.aspx");
            }
            nomeUser.Text = Services.EMAIL_USUARIO;
            if (IsPostBack == false)
            {
                int COD_MAQUINA;
                if (int.TryParse(Request.QueryString["COD_MAQUINA"], out COD_MAQUINA) == false)
                {
                    return;
                }

                using (SqlConnection conn = new SqlConnection("Server=tcp:projeto321.database.windows.net,1433;Initial Catalog=dbprojeto;Persist Security Info=False;User ID=projeto321;Password=Faculdadebandtec2018;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("SELECT COD_MAQUINA FROM TBL_MAQUINA WHERE COD_MAQUINA = @COD_MAQUINA", conn))
                    {
                        cmd.Parameters.AddWithValue("@COD_MAQUINA", COD_MAQUINA);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read() == true)
                            {
                                Services.GET_COD_MAQUINA = reader.GetInt32(0);
                            }
                        }
                    }
                }
            }
        }
    }
}
