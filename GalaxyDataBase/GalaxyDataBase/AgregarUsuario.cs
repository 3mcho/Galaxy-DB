using FirebirdSql.Data.FirebirdClient;
using FirebirdSql.Data.Services;
using Microsoft.VisualBasic;
using Microsoft.VisualBasic.ApplicationServices;
using Microsoft.VisualBasic.Devices;
using Microsoft.Win32;
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
using System.Diagnostics;



namespace GalaxyDataBase
{
    public partial class AgregarUsuario : Form
    {
        ClassGlobales ClassGlobales = new ClassGlobales();
        string commandotables;
       

        string comando;

        public AgregarUsuario()
        {
            InitializeComponent();
        }

        private void AgregarUsuario_Load(object sender, EventArgs e)
        {
            ClassBasesDeDatos vObjeto = new ClassBasesDeDatos();

            DataTable registros = vObjeto.EjecutarSQL_QUERY("select * from BASESDEDATOS");



            for (int i = 0; i < registros.Rows.Count; i++)
            {
                comboBox1.Items.Add(registros.Rows[i]["ALIAS"].ToString());

            }
        }

        private void guna2Button1_Click(object sender, EventArgs e)
        {
            if (txtPassword.Text == "" && txtUsuario.Text == "")
            {
                MessageBox.Show("Todos los campos deben de estar llenos");

            }
            else
            {
                try
                {
                    Process cmd = new Process();
                    cmd.StartInfo.FileName = "cmd.exe";
                    cmd.StartInfo.RedirectStandardInput = true;
                    cmd.StartInfo.RedirectStandardOutput = true;
                    cmd.StartInfo.CreateNoWindow = true;
                    cmd.StartInfo.UseShellExecute = false;
                    cmd.Start();

                    cmd.StandardInput.WriteLine(@"CD C:\");
                    cmd.StandardInput.WriteLine(@"CD C:\Program Files (x86)\Firebird\Firebird_2_5\bin");
                    cmd.StandardInput.WriteLine("gsec.exe -USER SYSDBA -PASSWORD masterkey");

                    cmd.StandardInput.WriteLine("ADD '" + txtUsuario.Text + "' -pw '" + txtPassword.Text + "'");
                    comando = "ADD '" + txtUsuario.Text + "' -pw '" + txtPassword.Text + "'";
                    cmd.StandardInput.Flush();
                    cmd.StandardInput.Close();
                    cmd.WaitForExit();
                    cmd.StandardOutput.ReadToEnd();
                    MessageBox.Show("USUARIO CREADO");
                    txtPassword.Clear();
                    txtUsuario.Clear();

                    ClassGlobales.GenerarLOG_DB("CREACION DE USUARIO", comando, "CORRECTO", "NINGUNO");

                }

                catch (Exception Ex)
                {
                    ClassGlobales.GenerarLOG_DB("CREACION DE USUARIO", comando, "INCORRECTO", Ex.ToString());
                    MessageBox.Show(Ex.ToString());
                }

            }
        }

        private void ToggleCrear_CheckedChanged(object sender, EventArgs e)
        {
            if(ToggleCrear.Checked == true )
            {
                if (TogleGestionar.Checked == true)
                {

                }
                else
                {
                    PanelCrear.Enabled = true;
                }
            }
           
        }

        private void TogleGestionar_CheckedChanged(object sender, EventArgs e)
        {
            if( TogleGestionar.Checked == true)
            {
                if(ToggleCrear.Checked == true)
                {

                }
                else
                {
                    PanelGestionar.Enabled = true;
                }
            }
        }

        private void guna2ToggleSwitch1_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void checkBox5_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBoxReferences.Checked)
            {
                GenerarScriptPermisosUsuarios("permisos" + CmboxUsuarios.Text + ".sql", CmboxUsuarios.Text, "Reference");
                ClassGlobales.EjecutarScriptSQL("permisos" + CmboxUsuarios.Text + ".sql");
                MessageBox.Show("PERMISO REFERENCES CONCEDIDO");

            }
        }


        private void guna2ComboBox3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void checkBoxTodos_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBoxTodos.Checked)
            {
                GenerarScriptPermisosUsuarios("permisos" + CmboxUsuarios.Text + ".sql", CmboxUsuarios.Text, "Todos");
                ClassGlobales.EjecutarScriptSQL("permisos" + CmboxUsuarios.Text + ".sql");
                MessageBox.Show("TODOS LOS PERMISOS CONCEDIDOS");
            }
        }
        private void GenerarScriptPermisosUsuarios(string vNombreSCRIPT, string vUsuario, string TipoPermiso)
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
            string vRuta;

            StreamWriter vObjStreamWriter = default(StreamWriter);

            ClassBasesDeDatos vObjeto = new ClassBasesDeDatos();

            DataTable ruta = vObjeto.EjecutarSQL_QUERY("select RUTADB from BASESDEDATOS where ALIAS = '" + comboBox1.Text + "'");

            vRuta = ruta.Rows[0]["RUTADB"].ToString();

            try
            {
                vObjStreamWriter = File.AppendText(vSQLScript);

                string vComando = "";

                switch (TipoPermiso)
                {
                    case "Select":
                        vComando = "connect '" + vRuta + "' user 'SYSDBA' password 'masterkey'; GRANT SELECTT ON TABLE " + comboBox2.Text + " TO " + vUsuario + ";";

                        break;

                    case "Insert":
                        vComando = "connect " + vRuta + " user 'SYSDBA' password 'masterkey'; GRANT INSERT ON TABLE " + comboBox2.Text + " TO " + vUsuario + ";";
                        break;

                    case "Update":
                        vComando = "connect " + vRuta + " user 'SYSDBA' password 'masterkey'; GRANT UPDATE ON TABLE " + comboBox2.Text + " TO " + vUsuario + ";";
                        break;

                    case "Delete":
                        vComando = "connect " + vRuta + " user 'SYSDBA' password 'masterkey'; GRANT DELETE ON TABLE " + comboBox2.Text + " TO " + vUsuario + ";";
                        break;

                    case "Reference":
                        vComando = "connect " + vRuta + " user 'SYSDBA' password 'masterkey'; GRANT REFERENCES ON TABLE " + comboBox2.Text + " TO " + vUsuario + ";";

                        break;


                    case "Todos":
                        vComando = "connect " + vRuta + " user 'SYSDBA' password 'masterkey'; GRANT INSERT, UPDATE, DELETE, SELECT,REFERENCES ON TABLE " + comboBox2.Text + " TO " + vUsuario + ";";

                        break;
                }

                vObjStreamWriter.WriteLine(vComando);


                vObjStreamWriter.Close();


            }
            catch (IOException ex)
            {
                ClassGlobales.GenerarLOG_DB("CONCEDER PERMISOS", "", "CORRECTO", ex.ToString());
                string vMensaje = Convert.ToString(ex);
                MessageBox.Show(vMensaje);
            }
        }



        private void CargarUsuarios()
        {
            ClassGlobales.GenerarLOG_DB("CARGAR USUARIOS", "SELECT * FROM USER", "CORRECTO", "NINGUNO");
            FbConnectionStringBuilder build = new FbConnectionStringBuilder();
            build.UserID = "SYSDBA";
            build.Password = "masterkey";
            FbSecurity sec = new FbSecurity();

            sec.ConnectionString = build.ConnectionString;
            FbUserData[] usuarios = sec.DisplayUsers();
            CmboxUsuarios.Items.Clear();


            if (usuarios.Length == 0)
            {
                MessageBox.Show("No existen usuarios");

            }
            else
            {
                for (int i = 0; i < usuarios.Length; i++)
                {
                    string name = usuarios[i].UserName.ToString();
                    CmboxUsuarios.Items.Add(name);

                }
            }



        }

        private void checkBoxSelect_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBoxSelect.Checked)
            {
                GenerarScriptPermisosUsuarios("permisos" + CmboxUsuarios.Text + ".sql", CmboxUsuarios.Text, "Select");
                ClassGlobales.EjecutarScriptSQL("permisos" + CmboxUsuarios.Text + ".sql");

                MessageBox.Show("PERMISO SELECT CONCEDIDO");

            }
        }

        private void checkBoxUpdate_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBoxUpdate.Checked)
            {
                GenerarScriptPermisosUsuarios("permisos" + CmboxUsuarios.Text + ".sql", CmboxUsuarios.Text, "Update");
                ClassGlobales.EjecutarScriptSQL("permisos" + CmboxUsuarios.Text + ".sql");
                MessageBox.Show("PERMISO UPDATE CONCEDIDO");

            }
        }

        private void checkBoxDelete_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBoxDelete.Checked)
            {
                GenerarScriptPermisosUsuarios("permisos" + CmboxUsuarios.Text + ".sql", CmboxUsuarios.Text, "Delete");
                ClassGlobales.EjecutarScriptSQL("permisos" + CmboxUsuarios.Text + ".sql");
                MessageBox.Show("PERMISO DELETE CONCEDIDO");
            }
        }

        private void checkBoxInsert_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBoxInsert.Checked)
            {
                GenerarScriptPermisosUsuarios("permisos" + CmboxUsuarios.Text + ".sql", CmboxUsuarios.Text, "Insert");
                ClassGlobales.EjecutarScriptSQL("permisos" + CmboxUsuarios.Text + ".sql");
                MessageBox.Show("PERMISO DELETE CONCEDIDO");


            }
        }
        public void LlenarCombo(string Ruta)
        {
            ClassGlobales classGlobales = new ClassGlobales();
            FbConnection conn = new FbConnection("User=SYSDBA;Password=masterkey;Database=" + Ruta + ";DataSource=localhost;Port=3050;Dialect=3");
            conn.Open();


            FbCommand cmd = new FbCommand("SELECT rdb$relation_name\r\nFROM rdb$relations\r\nWHERE rdb$view_blr IS NULL\r\nAND (rdb$system_flag IS NULL OR rdb$system_flag = 0)\r\nORDER BY rdb$relation_name;", conn);

            commandotables = cmd.ToString();

            FbDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {


                for (int i = 0; i < reader.FieldCount; i++)
                {
                    string tabla = "";
                    tabla = reader.GetString(i);
                    string TablaF = tabla.Trim(' ');
                    comboBox2.Items.Add(TablaF);
                }


            }

            // Cerrar el lector y la conexión
            reader.Close();
            conn.Close();
        }

        private void BtnMostrarTablas_Click(object sender, EventArgs e)
        {

            comboBox2.Enabled = true;
            comboBox2.Items.Clear();

            string vRuta = "";
            ClassBasesDeDatos vObjeto2 = new ClassBasesDeDatos();

            DataTable ruta = vObjeto2.EjecutarSQL_QUERY("select RUTADB from BASESDEDATOS where ALIAS = '" + comboBox1.Text + "'");
            ClassGlobales.GenerarLOG_DB("SQL", "SELECT rdb$relation_name\r\nFROM rdb$relations\r\nWHERE rdb$view_blr IS NULL\r\nAND(rdb$system_flag IS NULL OR rdb$system_flag = 0)\r\nORDER BY rdb$relation_name;", "EXITOSO", "NINGUNO");
            vRuta = ruta.Rows[0]["RUTADB"].ToString();
            LlenarCombo(vRuta);
        }

        private void CmboxUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
