using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
using Microsoft.VisualBasic;
using FirebirdSql.Data.FirebirdClient;
using FirebirdSql.Data.Services;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace GalaxyDataBase
{
    public partial class Form1 : Form
    {
        string bandera;

        
        public Form1()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

       

        public void AddFormulario(Form f)
        {

            //CENTRAR EL FORMULARIO
            int formX = (PanelHome.Width - f.Width) / 2;
            int formY = (PanelHome.Height - f.Height) / 2;

            f.TopLevel = false;
            f.Location = new Point(formX, formY);
            this.PanelHome.Controls.Clear();
            this.PanelHome.Controls.Add(f);
            


        }

        private void BtnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

       

        private void BtnAgregarBD_Click_1(object sender, EventArgs e)
        {
            AgregarBD agregarBD = new AgregarBD();
            AddFormulario(agregarBD);
            agregarBD.Show();
            LblIInfo.Text = "AGREGAR UNA BASE DE DATOS NUEVA";

            BtnAgregarBD.FillColor = Color.Green;

            if (BtnTablas.FillColor == Color.Green)
            {
                BtnTablas.FillColor = Color.Transparent;
            }

        }

        private void BtnTablas_Click(object sender, EventArgs e)
        {
            Tablas tablas = new Tablas();
            AddFormulario(tablas);
            tablas.Show();
            LblIInfo.Text = "AGREGAR TABLAS A LA BASE DE DATOS";

            BtnTablas.FillColor = Color.Green;

            if(BtnAgregarBD.FillColor == Color.Green)
            {
                BtnAgregarBD.FillColor = Color.Transparent;
            }

            
        }

        public void LimpiaBotones()
        {
            
        }



        private void BtnExit_MouseEnter_1(object sender, EventArgs e)
        {
            BtnExit.FillColor = Color.Red;
        }

        private void BtnExit_MouseLeave(object sender, EventArgs e)
        {
            BtnExit.FillColor = Color.Transparent;
        }

        private void BtnExit_Click_1(object sender, EventArgs e)
        {
            this.Close();
        }

        private void BtnUusarios_Click(object sender, EventArgs e)
        {
            AgregarUsuario agregarUsuario = new AgregarUsuario();

            AddFormulario(agregarUsuario);
            agregarUsuario.Show();

            LblIInfo.Text = "Agregar un usuario";

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            Bienvenida bienvenida = new Bienvenida();

            AddFormulario(bienvenida);
            bienvenida.Show();

            ClassGlobales.vConexionC = new DBLevel.ClassMaster();
            ClassGlobales.ValidaOSVersion();
            ClassGlobales.ShowVariablesInMenuPrin();

            ClassBasesDeDatos vObjeto = new ClassBasesDeDatos();
            try
            {

                DataTable registros = vObjeto.EjecutarSQL_QUERY("select * from BASESDEDATOS");

                ListarBasesDeDatosDisponibles();
            }
            catch (Exception ex)
            {
                ClassGlobales.GenerarLOG_DB("SQL", "select * from BASESDEDATOS", "INCORRECTO", ex.ToString());

            }




        }
        private void GenerarScript(string vNombreSCRIPT, string vNombreDB)
        //Uno representa el nombre del archivo .sql y el otro el nombre de la base de datos nueva
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


                vObjStreamWriter.Close();
            }
            catch (IOException ex)
            {
                string vMensaje = Convert.ToString(ex);
                MessageBox.Show(vMensaje);
            }
        }


        //Ejecuta un archivo .SQL
        private void EjecutarScriptSQL(string vNombreArchivoSQL)
        {
            StreamWriter vArchivoComandos = new StreamWriter(Application.StartupPath + "\\comandos.bat", false);
            string vArchivo = Application.StartupPath + "\\comandos.bat";

            vArchivoComandos.WriteLine("cd " + Application.StartupPath + "\\ISQL");
            vArchivoComandos.WriteLine("isql -q -i \"" + Application.StartupPath + "\\SCRIPTS\\" + vNombreArchivoSQL + "\"");

            vArchivoComandos.Flush();
            vArchivoComandos.Close();

            System.Diagnostics.Process vProcess = new System.Diagnostics.Process();
            vProcess.StartInfo.FileName = "cmd.exe";
            vProcess.StartInfo.Arguments = "/C \"" + Application.StartupPath + "\\comandos.bat\"";
            vProcess.StartInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
            vProcess.Start();
            vProcess.WaitForExit();

        }

        DataTable vDataTable_BasesDeDatosExistentes;
        private int vNumeroDeBasesExistentes = 0;
        private void ListarBasesDeDatosDisponibles()
        {
            FbConnectionStringBuilder build = new FbConnectionStringBuilder();
            build.UserID = "SYSDBA";
            build.Password = "masterkey";
            FbSecurity sec = new FbSecurity();
            sec.ConnectionString = build.ConnectionString;
            FbUserData[] usuarios = sec.DisplayUsers();


            treeView1.Nodes.Clear();

            ClassBasesDeDatos vObj = new ClassBasesDeDatos();

            DataTable vBases = vObj.EjecutarSQL_QUERY("SELECT * FROM BASESDEDATOS;");


            if (vBases.Rows.Count > 0)
            {
                vDataTable_BasesDeDatosExistentes = vBases;

                vNumeroDeBasesExistentes = vBases.Rows.Count;
                treeView1.Nodes.Clear();
                string vLong = (vBases.Rows.Count).ToString();
                TreeNode parentNode = new TreeNode("Bases de Datos (" + vLong + ")");
                TreeNode NodoUsers = new TreeNode("USERS");
                treeView1.Nodes.Add(parentNode);
                treeView1.Nodes.Add(NodoUsers);
                treeView1.SelectedNode = treeView1.Nodes[0];
                treeView1.ImageIndex = 2;

                if (treeView1.SelectedNode != null)
                {
                    string vBase = "";
                    string vTabla = "";
                    string vUsers = "";
                    int i = 0;


                    for (i = 0; i <= vBases.Rows.Count - 1; i++)
                    {
                        string vRuta = "";
                        ClassBasesDeDatos vObjeto2 = new ClassBasesDeDatos();

                        DataTable ruta = vObjeto2.EjecutarSQL_QUERY("select RUTADB from BASESDEDATOS where ALIAS = '" + vBases.Rows[i]["Alias"].ToString() + "'");

                        vRuta = ruta.Rows[0]["RUTADB"].ToString();

                        treeView1.SelectedNode = treeView1.Nodes[0];

                        vBase = vBases.Rows[i]["ALIAS"].ToString();

                        TreeNode childNode = new TreeNode(vBase);

                        treeView1.SelectedNode.Nodes.Add(childNode);

                        FbConnection conn = new FbConnection("User=SYSDBA;Password=masterkey;Database=" + vRuta + ";DataSource=localhost;Port=3050;Dialect=3");

                        conn.Open();


                        FbCommand cmd = new FbCommand("SELECT rdb$relation_name\r\nFROM rdb$relations\r\nWHERE rdb$view_blr IS NULL\r\nAND (rdb$system_flag IS NULL OR rdb$system_flag = 0)\r\nORDER BY rdb$relation_name;", conn);

                        FbDataReader reader = cmd.ExecuteReader();
                        while (reader.Read())
                        {
                            for (int J = 0; J < reader.FieldCount; J++)
                            {
                                string tabla = "";
                                string TablaF = "";
                                tabla = reader.GetString(J);
                                TablaF = tabla.Trim(' ');
                                childNode.Nodes.Add(TablaF);


                            }
                        }


                        childNode.ImageIndex = 0;
                        // childNode.Nodes[0].ImageIndex = 1;
                        //treeView1.SelectedNode = treeView1.Nodes[0].Nodes[i].Nodes[0];


                    }

                    for (int j = 0; j <= usuarios.Length - 1; j++)
                    {
                        TreeNode usuariosn = new TreeNode(vUsers);
                        string name = usuarios[j].UserName.ToString();

                        NodoUsers.Nodes.Add(name);


                    }


                }




            }
            else { MessageBox.Show("No existen Bases de Datos Creadas"); }
        }

        private void guna2ImageButton1_Click(object sender, EventArgs e)
        {
            Respaldo_Restauracion backup = new Respaldo_Restauracion();

            AddFormulario(backup);
            backup.Show();

            LblIInfo.Text = "Realizar respaldo y recuperacion";
        }

        private void BtnConfig_Click(object sender, EventArgs e)
        {
            Conexion conexion = new Conexion();

            AddFormulario(conexion);
            conexion.Show();

            LblIInfo.Text = "Realizar modificacion de conexion";
        }

        private void BtnMigrar_Click(object sender, EventArgs e)
        {
            MigracionFDB_MYSQL migracionFDB_MYSQL = new MigracionFDB_MYSQL();
            AddFormulario(migracionFDB_MYSQL);
            migracionFDB_MYSQL.Show();

            LblIInfo.Text = "MIGRAR DE FIREBIRD A MYSQL";
        }

        private void BtnMysql_Click(object sender, EventArgs e)
        {
            MigracionMYSQL_FDB migracionMYSQL_FDB = new MigracionMYSQL_FDB();

            AddFormulario(migracionMYSQL_FDB);
            migracionMYSQL_FDB.Show();

            LblIInfo.Text = "MIGAR DE MYSQL A FIREBIRD";
        }

        private void TpHome_Popup(object sender, PopupEventArgs e)
        {

        }
    }
}
