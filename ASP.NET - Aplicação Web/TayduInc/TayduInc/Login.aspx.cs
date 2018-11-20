using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TayduInc
{
    public partial class Login : System.Web.UI.Page
    {
        Services sv = new Services();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["cod_usuario"] = null;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (sv.autenticarUsuario(txtEmail.Text, txtSenha.Text))
            {
                Session["cod_usuario"] = sv.COD_USUARIO;
                Response.Redirect("/Maquinas.aspx");
            }
        }

        private void limpaCampos()
        {
            txtEmailCad.Text = "";
            txtSenhaCad.Text = "";
            txtSenhaCad1.Text = "";
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            if (txtEmailCad.Text != "" && txtSenhaCad.Text != "" && txtSenhaCad1.Text != "")
            {
                if (sv.verificaEmail(txtEmailCad.Text))
                {
                    lblCadastrar.Text = "Email já existente";
                }
                else
                {
                    if (txtSenhaCad.Text == txtSenhaCad1.Text)
                    {
                        using (SqlConnection con = new SqlConnection("Server=tcp:projeto321.database.windows.net,1433;Initial Catalog=dbprojeto;Persist Security Info=False;User ID=projeto321;Password=Faculdadebandtec2018;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"))
                        {
                            con.Open();
                            SqlCommand cmd = new SqlCommand("INSERT INTO TBL_USUARIO (EMAIL, SENHA) VALUES (@EMAIL, @SENHA)", con);
                            cmd.Parameters.AddWithValue("@EMAIL", txtEmailCad.Text);
                            cmd.Parameters.AddWithValue("@SENHA", txtSenhaCad.Text);
                            cmd.ExecuteNonQuery();
                            lblCadastrar.Text = "Cadastro efetuado com sucesso!";
                            limpaCampos();
                        }
                    }
                    else
                    {
                        lblCadastrar.Text = "As senhas não coincidem";
                    }
                }
            }
            else
            {
                lblCadastrar.Text = "Os campos não podem ser nulos";
            }
        }
    }
}