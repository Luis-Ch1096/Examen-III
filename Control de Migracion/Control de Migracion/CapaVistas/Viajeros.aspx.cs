using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Control_de_Migracion.CapaVistas
{
    public partial class Viajeros : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenarGrid();
            }
        }
        protected void Agregar_viajero()
        {
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand(" INSERT INTO VIAJERO VALUES('" + Text_id.Text + "','" + Text_nombre.Text + "', '" + Text_apellido.Text + "' , ' " + Text_apellido2.Text + "' , '" + Text_nacionalidad.Text + "' )", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();
            LlenarGrid();
        }
        protected void Eliminar_viajero()
        {
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand(" DELETE VIAJERO WHERE Id_viajero = '" + Text_id + "' ", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();
            LlenarGrid();

        }
        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT *  FROM VIAJERO"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }

        protected void btn_agregar_Click(object sender, EventArgs e)
        {
            Agregar_viajero();
        }

        protected void btn_eliminar_Click(object sender, EventArgs e)
        {
            Eliminar_viajero();
        }
    }
}