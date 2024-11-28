using FirebirdSql.Data.FirebirdClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;


namespace GalaxyDataBase
{
    public partial class MigracionFDB_MYSQL : Form
    {
        string NombreBase;
        string BanderaDato;
        public MigracionFDB_MYSQL()
        {
            InitializeComponent();
        }
        public void ConexionmMYSQL(string NombreBase)
        {

            string servidor = "localhost";
            string usuario = "root";
            string contraseña = "";
            string nombreBD = NombreBase;

            string cadenaConexion = $"Server={servidor};Uid={usuario};Pwd={contraseña};";
            string consulta = $"CREATE DATABASE {nombreBD};";

            MySqlConnection conexion = new MySqlConnection(cadenaConexion);

            try
            {
                conexion.Open();

                MySqlCommand comando = new MySqlCommand(consulta, conexion);
                comando.ExecuteNonQuery();

                MessageBox.Show("Base de datos creada correctamente.", "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al crear la base de datos: " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            finally
            {
                conexion.Close();
            }



        }
        public void ConsultarAtributos(string Ruta, string Tabla, string vScript)
        {
            try
            {
                string filePath = Application.StartupPath + "\\SCRIPTS\\" + vScript;

                FbConnection conn = new FbConnection("User=SYSDBA;Password=masterkey;Database=" + Ruta + ";DataSource=localhost;Port=3050;Dialect=3");
                conn.Open();
                string Consulta = "SELECT\r\n    rf.RDB$FIELD_NAME AS \"Nombre del campo\",\r\n    CASE f.RDB$FIELD_TYPE\r\n        WHEN 7 THEN\r\n            CASE f.RDB$FIELD_SUB_TYPE\r\n                WHEN 0 THEN 'SMALLINT'\r\n                WHEN 1 THEN 'NUMERIC(' || f.RDB$FIELD_PRECISION || ', ' || (-f.RDB$FIELD_SCALE) || ')'\r\n                WHEN 2 THEN 'DECIMAL'\r\n            END\r\n        WHEN 8 THEN 'INTEGER'\r\n        WHEN 10 THEN 'FLOAT'\r\n        WHEN 12 THEN 'DATE'\r\n        WHEN 13 THEN 'TIME'\r\n        WHEN 14 THEN 'CHAR(' || (f.RDB$FIELD_LENGTH / ch.RDB$BYTES_PER_CHARACTER) || ')'\r\n        WHEN 16 THEN\r\n            CASE f.RDB$FIELD_SUB_TYPE\r\n                WHEN 0 THEN 'BIGINT'\r\n                WHEN 1 THEN 'NUMERIC(' || f.RDB$FIELD_PRECISION || ', ' || (-f.RDB$FIELD_SCALE) || ')'\r\n                WHEN 2 THEN 'DECIMAL'\r\n            END\r\n        WHEN 27 THEN 'DOUBLE PRECISION'\r\n        WHEN 35 THEN 'TIMESTAMP'\r\n        WHEN 37 THEN 'VARCHAR(' || (f.RDB$FIELD_LENGTH / ch.RDB$BYTES_PER_CHARACTER) || ')'\r\n        WHEN 261 THEN 'BLOB SUB_TYPE ' || f.RDB$FIELD_SUB_TYPE\r\n        ELSE 'UNKNOWN'\r\n    END AS \"Tipo de dato\",\r\n    CASE rf.RDB$NULL_FLAG\r\n        WHEN 1 THEN 'Sí'\r\n        ELSE 'No'\r\n    END AS \"Permite nulos\",\r\n    f.RDB$FIELD_LENGTH AS \"Longitud\",\r\n    CASE\r\n        WHEN pk.RDB$FIELD_NAME IS NOT NULL THEN 'Sí'\r\n        ELSE 'No'\r\n    END AS \"Clave primaria\"\r\nFROM RDB$RELATION_FIELDS rf\r\nJOIN RDB$FIELDS f ON rf.RDB$FIELD_SOURCE = f.RDB$FIELD_NAME\r\nLEFT JOIN RDB$CHARACTER_SETS ch ON f.RDB$CHARACTER_SET_ID = ch.RDB$CHARACTER_SET_ID\r\nLEFT JOIN (\r\n    SELECT\r\n        seg.RDB$FIELD_NAME\r\n    FROM RDB$INDEX_SEGMENTS seg\r\n    JOIN RDB$INDICES idx ON seg.RDB$INDEX_NAME = idx.RDB$INDEX_NAME\r\n    JOIN RDB$RELATION_CONSTRAINTS rc ON idx.RDB$INDEX_NAME = rc.RDB$INDEX_NAME\r\n    WHERE rc.RDB$CONSTRAINT_TYPE = 'PRIMARY KEY' AND rc.RDB$RELATION_NAME = '" + Tabla + "' \r\n) pk ON rf.RDB$FIELD_NAME = pk.RDB$FIELD_NAME\r\nWHERE rf.RDB$RELATION_NAME = '" + Tabla + "'\r\nORDER BY rf.RDB$FIELD_POSITION;\r\n";

                FbCommand fbCommand = new FbCommand(Consulta, conn);


                FbDataAdapter adapter = new FbDataAdapter(fbCommand);

                DataTable dataTable = new DataTable();

                adapter.Fill(dataTable);

                StringBuilder sb = new StringBuilder();

                int banderafinal = 0;
                bool PrimaryKey = false;
                banderafinal = dataTable.Rows.Count;

                foreach (DataRow row in dataTable.Rows)
                {
                    foreach (DataColumn col in dataTable.Columns)
                    {
                        // MessageBox.Show(col.ToString()+row[col].ToString()); 

                        using (StreamWriter writer = File.AppendText(filePath))
                        {
                            switch (col.ToString())
                            {
                                case "Nombre del campo":
                                    //ESCRIBE EL NOMBRE DEL CAMPO
                                    writer.Write(row[col].ToString().Trim() + " ");


                                    break;

                                case "Tipo de dato":
                                    //ESCRIBE EL TIPO DE DATO

                                    if (row[col].ToString() == "INTEGER")
                                    {
                                        writer.Write("INT");




                                    }
                                    else
                                    {
                                        writer.Write(row[col].ToString());
                                    }


                                    //if (row[col].ToString() == "INTEGER")
                                    //{
                                    //    if(banderafinal == 1)
                                    //    {

                                    //        writer.Write("INT");
                                    //    }
                                    //    else
                                    //    {
                                    //        writer.Write("INT");
                                    //    }

                                    //    BanderaDato = "INTEGER";
                                    //    banderafinal -= 1;

                                    //    if (banderafinal == 0)
                                    //    {
                                    //        writer.Write(");");
                                    //    }

                                    //}
                                    //else
                                    //{


                                    //    if(banderafinal == 1)
                                    //    {
                                    //        writer.Write(row[col].ToString() + "");
                                    //    }
                                    //    else
                                    //    {
                                    //        writer.Write(row[col].ToString() + ",");
                                    //    }
                                    //    writer.WriteLine();
                                    //    banderafinal -=1;

                                    //    if (banderafinal == 0)
                                    //    {
                                    //        writer.Write(");");
                                    //    }

                                    //}
                                    break;

                                case "Longitud":
                                    if (BanderaDato == "INTEGER")
                                    {
                                        BanderaDato = " ";
                                    }
                                    else
                                    {

                                    }
                                    break;

                                case "Permite nulos":
                                    if (row[col].ToString() == "Sí")
                                    {

                                        writer.Write(" NOT NULL");

                                    }
                                    else
                                    {

                                    }

                                    break;

                                case "Clave primaria":
                                    if (row[col].ToString() == "Sí")
                                    {
                                        writer.Write(" PRIMARY KEY");

                                        if (banderafinal == 1)
                                        {
                                            writer.WriteLine("");

                                            writer.Write(");");

                                            writer.WriteLine("");
                                        }
                                        else
                                        {
                                            writer.Write(",");
                                            writer.WriteLine("");
                                            banderafinal -= 1;
                                        }
                                    }
                                    else
                                    {
                                        if (banderafinal == 1)
                                        {
                                            writer.WriteLine("");
                                            writer.Write(");");
                                            writer.WriteLine("");
                                        }
                                        else
                                        {
                                            writer.Write(",");
                                            writer.WriteLine("");
                                            banderafinal -= 1;
                                        }

                                    }

                                    break;



                            }
                        }

                    }


                }



                conn.Close();

            }
            catch (Exception ex)
            {


            }


        }

        public void ConsultarDatos(string Tabla, String Script, string Ruta)
        {
            int Bandera = 1;
            int Banderafinal;
            string filePath = Application.StartupPath + "\\SCRIPTS\\" + Script;
            ClassGlobales classGlobales = new ClassGlobales();
            FbConnection conn = new FbConnection("User=SYSDBA;Password=masterkey;Database=" + Ruta + ";DataSource=localhost;Port=3050;Dialect=3");
            conn.Open();

            FbCommand cmd = new FbCommand("SELECT * FROM " + Tabla, conn);

            FbDataAdapter adapter = new FbDataAdapter(cmd);

            DataTable Tablas = new DataTable();
            adapter.Fill(Tablas);
            Banderafinal = Tablas.Rows.Count;

            if (Tablas.Rows.Count > 0)
            {

                using (StreamWriter writer = File.AppendText(filePath))
                {
                    writer.WriteLine("INSERT INTO " + Tabla + " VALUES  ");
                }
                using (StreamWriter writer = File.AppendText(filePath))
                {

                    foreach (DataRow row in Tablas.Rows)
                    {

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

                        if (Banderafinal == 1)
                        {
                            writer.Write(");");

                        }
                        else
                        {
                            writer.Write("),");
                        }
                        Bandera = 1;
                        Banderafinal -= 1;


                    }
                }





            }



        }
        public void consultartablas(string Ruta, string Script)
        {
            try
            {
                string filePath = Application.StartupPath + "\\SCRIPTS\\" + Script;
                ClassGlobales classGlobales = new ClassGlobales();
                FbConnection conn = new FbConnection("User=SYSDBA;Password=masterkey;Database=" + Ruta + ";DataSource=localhost;Port=3050;Dialect=3");
                conn.Open();

                FbCommand cmd = new FbCommand("SELECT rdb$relation_name\r\nFROM rdb$relations\r\nWHERE rdb$view_blr IS NULL\r\nAND (rdb$system_flag IS NULL OR rdb$system_flag = 0)\r\nORDER BY rdb$relation_name;", conn);

                FbDataAdapter adapter = new FbDataAdapter(cmd);

                DataTable Tablas = new DataTable();
                adapter.Fill(Tablas);

                StringBuilder sb = new StringBuilder();

                foreach (DataRow row in Tablas.Rows)
                {
                    foreach (DataColumn col in Tablas.Columns)
                    {

                        using (StreamWriter writer = File.AppendText(filePath))
                        {
                            writer.WriteLine("CREATE TABLE " + row[col].ToString().Trim() + "(");

                        }


                        ConsultarAtributos(Ruta, row[col].ToString(), "Migracion" + Path.GetFileNameWithoutExtension(TxtRuta.Text) + ".sql");

                        ConsultarDatos(row[col].ToString().Trim(), Script, Ruta);

                    }
                }


                conn.Close();


                string servidor = "localhost";
                string usuario = "root";
                string contraseña = "";
                string contenidoSQL = File.ReadAllText(filePath);

                string cadenaConexion = $"Server={servidor};Uid={usuario};Pwd={contraseña};";
                string consulta = contenidoSQL;
                MySqlConnection conexion = new MySqlConnection(cadenaConexion);

                try
                {
                    conexion.Open();

                    MySqlCommand comando = new MySqlCommand(consulta, conexion);
                    comando.ExecuteNonQuery();

                    MessageBox.Show("TABLAS CREADAS");
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error al crear la base de datos: " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                finally
                {
                    conexion.Close();
                }

            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.ToString());
            }

        }
        private void BtnExaminar_Click(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "Firebird Database Files (*.fdb)|*.fdb";
            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
                TxtRuta.Text = openFileDialog.FileName;
                string FileName = Path.GetFileNameWithoutExtension(TxtRuta.Text);
                NombreBase = FileName;
                // Guarda la ruta de la base de datos Firebird seleccionada
                // para usarla durante la migración
            }

        }
        public void creaScript(string Database, string vNombreSCRIPT)
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
                MessageBox.Show(ex.ToString());
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
                MessageBox.Show(ex.ToString());
                return;
            }

            using (StreamWriter writer = File.AppendText(vSQLScript))
            {
                writer.WriteLine("USE " + Path.GetFileNameWithoutExtension(TxtRuta.Text) + "; ");
            }
        }

        private void BtnMigrar_Click(object sender, EventArgs e)
        {
            ConexionmMYSQL(Path.GetFileNameWithoutExtension(TxtRuta.Text));
            creaScript(TxtRuta.Text, "Migracion" + Path.GetFileNameWithoutExtension(TxtRuta.Text) + ".sql");
            consultartablas(TxtRuta.Text, "Migracion" + Path.GetFileNameWithoutExtension(TxtRuta.Text) + ".sql");
        }

        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
   
}

