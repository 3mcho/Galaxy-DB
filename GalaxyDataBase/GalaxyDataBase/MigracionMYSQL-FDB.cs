using Microsoft.VisualBasic;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GalaxyDataBase
{
    public partial class MigracionMYSQL_FDB : Form
    {
        public MigracionMYSQL_FDB()
        {
            InitializeComponent();
        }
        string servidor;
        string usuario;
        string contraseña;
        string nombreBD = "";

        string RutaFBD;
        string NombreDB;

        public void Conexion()
        {

            servidor = TxtServidor.Text;
            usuario = TxtUser.Text;
            contraseña = TxtPassword.Text;
            nombreBD = "";

            string cadenaConexion = $"Server={servidor};Uid={usuario};Pwd={contraseña};";

            string consulta = $"SHOW DATABASES;";

            MySqlConnection conexion = new MySqlConnection(cadenaConexion);


            conexion.Open();

            MySqlCommand comando = new MySqlCommand(consulta, conexion);
            comando.ExecuteNonQuery();

            using (MySqlDataReader reader = comando.ExecuteReader())
            {
                while (reader.Read())
                {
                    string databaseName = reader.GetString(0);
                    comboBoxBases.Items.Add(databaseName);
                }
            }

            conexion.Close();

        }

        private void BtnConectar_Click(object sender, EventArgs e)
        {
            if(TxtServidor.Text== "" || TxtUser.Text == "")
            {

                MessageBox.Show("SE NECESITAN LOS PARAMETROS COMPLETOS DE CONEXION");
            }
            else
            {

                PanelBases.Enabled = true;
                PanelConexion.Enabled = false;
                Conexion();
                MessageBox.Show("CONEXION EXITOSA");
            }
        }

        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        public void consultartablas(string Script, string database)
        {
            try
            {
                string filePath = Application.StartupPath + "\\SCRIPTS\\" + Script;
                string cadenaConexion = $"Server={servidor};Uid={usuario};Pwd={contraseña}; database ={database}";
                string consulta = "SHOW TABLES;";

                MySqlConnection conexion = new MySqlConnection(cadenaConexion);


                conexion.Open();

                MySqlCommand comando = new MySqlCommand(consulta, conexion);
                MySqlDataAdapter mySqlDataAdapter = new MySqlDataAdapter(comando);


                DataTable Tablas = new DataTable();

                mySqlDataAdapter.Fill(Tablas);

                StringBuilder sb = new StringBuilder();

                foreach (DataRow row in Tablas.Rows)
                {
                    foreach (DataColumn col in Tablas.Columns)
                    {

                        using (StreamWriter writer = File.AppendText(filePath))
                        {
                            //MessageBox.Show(row[col].ToString());
                            writer.WriteLine("");
                            writer.WriteLine("CREATE TABLE " + row[col].ToString().Trim() + "(");

                        }

                        ConsultarAtributos(row[col].ToString(), Script, database);

                        using (StreamWriter writer = File.AppendText(filePath))
                        {
                            //MessageBox.Show(row[col].ToString());
                            writer.WriteLine(");");

                        }
                        ConsultarDatos(row[col].ToString(), Script, database);

                    }
                }


                conexion.Close();


            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.ToString());
            }


        }

        public void ConsultarDatos(string Tabla, String Script, string database)
        {
            int Bandera = 1;
            int Banderafinal;
            string filePath = Application.StartupPath + "\\SCRIPTS\\" + Script;

            string cadenaConexion = $"Server={servidor};Uid={usuario};Pwd={contraseña}; database ={database}";
            string consulta = "SELECT * FROM " + Tabla + ";";
            string consulta2 = "DESCRIBE " + Tabla + ";";

            MySqlConnection conexion = new MySqlConnection(cadenaConexion);
            MySqlConnection conexion2 = new MySqlConnection(cadenaConexion);


            conexion.Open();
            conexion2.Open();

            MySqlDataAdapter mySqlDataAdapter = new MySqlDataAdapter(consulta, conexion);
            MySqlDataAdapter mySqlDataAdapter2 = new MySqlDataAdapter(consulta2, conexion2);
            DataTable atributos = new DataTable();
            mySqlDataAdapter2.Fill(atributos);



            DataTable Tablas = new DataTable();
            mySqlDataAdapter.Fill(Tablas);
            Banderafinal = Tablas.Rows.Count;

            if (Tablas.Rows.Count > 0)
            {

                using (StreamWriter writer = File.AppendText(filePath))
                {

                    foreach (DataRow row in Tablas.Rows)
                    {

                        writer.WriteLine("");
                        writer.WriteLine("INSERT INTO " + Tabla + " VALUES  ");
                        writer.Write("(");


                        foreach (DataColumn col in Tablas.Columns)
                        {
                            if (Bandera == 1)
                            {
                                writer.Write("'" + row[col].ToString() + "'");
                                Bandera = 0;
                            }
                            else
                            {
                                writer.Write(", '" + row[col].ToString() + "'");
                            }
                        }

                        writer.Write(");");
                        writer.WriteLine("");

                        Bandera = 1;
                        Banderafinal -= 1;

                    }
                }

            }

        }

        public void ConsultarAtributos(string Tabla, string vScript, string database)
        {
            try
            {

                string filePath = Application.StartupPath + "\\SCRIPTS\\" + vScript;

                string cadenaConexion = $"Server={servidor};Uid={usuario};Pwd={contraseña}; database ={database}";
                string consulta = "DESCRIBE " + Tabla + ";";

                MySqlConnection conexion = new MySqlConnection(cadenaConexion);

                conexion.Open();

                MySqlDataAdapter mySqlDataAdapter = new MySqlDataAdapter(consulta, cadenaConexion);


                DataTable dataTable = new DataTable();

                mySqlDataAdapter.Fill(dataTable);

                StringBuilder sb = new StringBuilder();
                int MaracadorKey = 0;
                string columna = "";
                int banderafinal = 0;
                bool PrimaryKey = false;
                banderafinal = dataTable.Rows.Count;

                foreach (DataRow row in dataTable.Rows)
                {
                    MaracadorKey = 0;
                    foreach (DataColumn col in dataTable.Columns)
                    {
                        // MessageBox.Show(col.ToString()+row[col].ToString()); 

                        using (StreamWriter writer = File.AppendText(filePath))
                        {
                            switch (col.ToString())
                            {
                                case "Field":
                                    //ESCRIBE EL NOMBRE DEL CAMPO

                                    writer.Write(row[col].ToString());
                                    columna = row[col].ToString();

                                    break;

                                case "Type":
                                    if (row[col].ToString() == "int(11)")
                                    {

                                        writer.Write(" INTEGER");
                                    }
                                    else
                                    {
                                        writer.Write(" " + row[col].ToString());

                                    }


                                    break;

                                case "Null":

                                    if (row[col].ToString() == "NO")
                                    {

                                    }
                                    else
                                    {
                                        writer.Write(" NOT NULL");
                                    }

                                    break;

                                case "Key":

                                    if (row[col].ToString() == "PRI")
                                    {
                                        MaracadorKey = 1;
                                    }


                                    break;

                                case "Extra":

                                    if (banderafinal == 1)
                                    {
                                        if (MaracadorKey == 1)
                                        {
                                            writer.Write(" PRIMARY KEY");
                                            writer.WriteLine("");

                                        }
                                    }
                                    else
                                    {

                                        if (MaracadorKey == 1)
                                        {
                                            writer.Write(" PRIMARY KEY");

                                        }
                                        writer.Write(",");
                                        writer.WriteLine("");
                                        banderafinal -= 1;
                                    }

                                    break;

                            }
                        }

                    }


                }



                conexion.Close();

            }
            catch (Exception ex)
            {


            }


        }

        private void GenerarScript(string vNombreSCRIPT, string vNombreDB)//Uno representa el nombre del archivo .sql y el otro el nombre de la base de datos nueva
        {
            string vSQLScript = Application.StartupPath + "\\SCRIPTS\\" + vNombreSCRIPT;

            string Folder = Application.StartupPath + "\\SCRIPTS";
            try
            {
                if (!System.IO.Directory.Exists(Application.StartupPath + "\\SCRIPTS"))
                {
                    //La carpeta no existe, Se debe de crear
                    System.IO.Directory.CreateDirectory(Folder);
                }
            }
            catch (Exception ex)
            {
                Interaction.MsgBox(ex.Message);
                return;
            }

            try
            {
                if (System.IO.File.Exists(vSQLScript))
                {
                    //La carpeta no existe, Se debe de crear
                    System.IO.File.Delete(vSQLScript);
                }
            }
            catch (Exception ex)
            {
                Interaction.MsgBox(ex.Message);
                return;
            }

            StreamWriter vObjStreamWriter = default(StreamWriter);

            try
            {
                vObjStreamWriter = File.AppendText(vSQLScript);

                String vComando = "CREATE DATABASE '" + vNombreDB + "' user 'SYSDBA' password 'masterkey';";

                vObjStreamWriter.WriteLine(vComando);

                vObjStreamWriter.WriteLine("CONNECT '" + vNombreDB + "'user 'SYSDBA' password 'masterkey';");





                vObjStreamWriter.Close();
            }
            catch (IOException ex)
            {
                string vMensaje = Convert.ToString(ex);
                MessageBox.Show(vMensaje);
            }


            consultartablas(vNombreSCRIPT, comboBoxBases.Text);

        }

        private void guna2Button1_Click(object sender, EventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.Filter = "FirebirdDataBase (*.FDB)|*.fdb"; ;
            saveFileDialog.Title = "Guardar archivo";
            saveFileDialog.DefaultExt = "FDB";
            saveFileDialog.FileName = comboBoxBases.Text;

            if (saveFileDialog.ShowDialog() == DialogResult.OK)
            {
                RutaFBD = saveFileDialog.FileName;

                MessageBox.Show(RutaFBD);

                GenerarScript("FBD-" + comboBoxBases.Text + ".sql", RutaFBD);

            }

          ClassGlobales globales = new ClassGlobales();
          globales.EjecutarScriptSQL("FBD-" + comboBoxBases.Text + ".sql");
        }
    }
}
