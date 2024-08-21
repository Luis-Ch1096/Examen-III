using Control_de_Migracion.CapaDatos;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Control_de_Migracion.CapaVistas
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void validar_usuario(string email, string contraseña)
        {
            cls_Usuario.email = email;
            cls_Usuario.contraseña = contraseña;
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select email, contraseña from usuario where email = '" + email + "' " +
                 "and contraseña = '" + contraseña + "'", conexion);

            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                Response.Redirect("Inicio.aspx");
            }
            else
            {
                lbl_mensaje.Text = " Email o Contraseña Incorrectos =( ";
            }
            conexion.Close();


        }
        protected void btn_login_Click(object sender, EventArgs e)
        {
            validar_usuario(txt_email.Text, txt_password.Text);
        }
    }
}