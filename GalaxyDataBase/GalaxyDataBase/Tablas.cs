using FirebirdSql.Data.FirebirdClient;
using Microsoft.VisualBasic;
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
using static System.Net.Mime.MediaTypeNames;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using Application = System.Windows.Forms.Application;


namespace GalaxyDataBase
{
    public partial class Tablas : Form
    {
        public Tablas()
        {
            InitializeComponent();
        }
        int Bandera = 0;
        string Bandera2;
        private void Tablas_MouseLeave(object sender, EventArgs e)
        {

        }

        private void BtnAgregar_Click(object sender, EventArgs e)
        {
            int n = guna2DataGridViewTablas.Rows.Add();

            guna2DataGridViewTablas.Rows[n].Cells[0].Value = TxtNombreCampo.Text;
            guna2DataGridViewTablas.Rows[n].Cells[1].Value = comboBoxTipo.Text;
            guna2DataGridViewTablas.Rows[n].Cells[2].Value = TxtLongitud.Text;

            if (checkBoxKey.Checked)
            {
                guna2DataGridViewTablas.Rows[n].Cells[3].Value = true;
            }
            else
            {
                guna2DataGridViewTablas.Rows[n].Cells[3].Value = false;
            }

            if (Bandera == 0)
            {
                GenerarScriptTablas();
                AgregarCampos("tabla" + txtNombretabla.Text + ".sql");
                Bandera = 1;
            }
            else
            {
                AgregarCampos("tabla" + txtNombretabla.Text + ".sql");
            }


            //LIMPIAR 

            TxtNombreCampo.Clear();
            TxtLongitud.Clear();
            checkBoxKey.Checked = false;
            checkBoxNull.Checked = false;
        }

        private void Tablas_Load(object sender, EventArgs e)
        {
            ClassBasesDeDatos vObjeto = new ClassBasesDeDatos();

            DataTable registros = vObjeto.EjecutarSQL_QUERY("select * from BASESDEDATOS");

            for (int i = 0; i < registros.Rows.Count; i++)
            {
                comboBoxBases.Items.Add(registros.Rows[i]["ALIAS"].ToString());
            }

        }
        public void AgregarCampos(string vNombreSCRIPT)
        {
            string filePath = Application.StartupPath + "\\SCRIPTS\\" + vNombreSCRIPT;

            // Abre el archivo en modo de escritura y agrega los nuevos comandos al final
            using (StreamWriter writer = File.AppendText(filePath))
            {

                if (Bandera == 0)
                {

                    if (comboBoxTipo.Text == "INTEGER")
                    {
                        writer.Write(TxtNombreCampo.Text + " " + comboBoxTipo.Text);

                        if (checkBoxNull.Checked)
                        {
                            writer.Write(" NOT NULL");

                        }

                        if (checkBoxKey.Checked)
                        {
                            writer.Write(" PRIMARY KEY");

                        }
                    }
                    else
                    {

                        writer.Write(", " + TxtNombreCampo.Text + " " + comboBoxTipo.Text + " (" + TxtLongitud.Text + ")");

                        if (checkBoxNull.Checked)
                        {
                            writer.Write(" NOT NULL");

                        }

                        if (checkBoxKey.Checked)
                        {
                            writer.Write(" PRIMARY KEY");

                        }

                    }
                }

                else
                {
                    if (Bandera2 == "FINAL")
                    {
                        writer.Write(");");
                    }
                    else
                    {

                        if (comboBoxTipo.Text == "INTEGER")
                        {

                            writer.Write(", " + TxtNombreCampo.Text + " " + comboBoxTipo.Text);
                        }
                        else
                        {

                            writer.Write(", " + TxtNombreCampo.Text + " " + comboBoxTipo.Text + " (" + TxtLongitud.Text + ")");

                            if (comboBoxTipo.Text == "INTEGER")
                            {
                                writer.Write("INTEGER");

                            }

                            if (checkBoxNull.Checked)
                            {
                                writer.Write(" NOT NULL");

                            }

                            if (checkBoxKey.Checked)
                            {
                                writer.Write(" PRIMARY KEY");

                            }
                        }



                    }

                }


            }


        }

        private void GenerarScriptTablas()
        {
            string vNombreSCRIPT = "tabla" + txtNombretabla.Text + ".sql";

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

            DataGridView dataGrid = this.guna2DataGridViewTablas;


            StreamWriter vObjStreamWriter = default(StreamWriter);

            ClassBasesDeDatos vObjeto = new ClassBasesDeDatos();

            DataTable ruta = vObjeto.EjecutarSQL_QUERY("select RUTADB from BASESDEDATOS where ALIAS = '" + comboBoxBases.Text + "'");

            vRuta = ruta.Rows[0]["RUTADB"].ToString();

            try
            {
                vObjStreamWriter = File.AppendText(vSQLScript);

                string vComando = "";


                vComando = "connect '" + vRuta + "' user 'SYSDBA' password 'masterkey'; CREATE TABLE " + txtNombretabla.Text + "( ";


                vObjStreamWriter.WriteLine(vComando);


                vObjStreamWriter.Close();
            }
            catch (IOException ex)
            {
                string vMensaje = Convert.ToString(ex);
                MessageBox.Show(vMensaje);
            }
        }
        public void EjecutarScriptSQL(string vNombreArchivoSQL)
        {

            try
            {
                StreamWriter vArchivoComandos = new StreamWriter(Application.StartupPath + "\\comandos.bat", false);
                string vArchivo = Application.StartupPath + "\\comandos.bat";

                string vSQLScript = Application.StartupPath + "\\SCRIPTS\\" + vNombreArchivoSQL;

                StreamReader reader = new StreamReader(vSQLScript);

                string sqlText = reader.ReadToEnd();
                // Aquí puedes trabajar con el texto del archivo .sql


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

                ClassGlobales.GenerarLOG_DB("SCIRPT", sqlText, "CORRECTO", "NINGUNO");
            }
            catch (Exception EX)
            {
                string vSQLScript = Application.StartupPath + "\\SCRIPTS\\" + vNombreArchivoSQL;

                StreamReader reader = new StreamReader(vSQLScript);

                string sqlText = reader.ReadToEnd();
                // Aquí puedes trabajar con el texto del archivo .sql

                ClassGlobales.GenerarLOG_DB("SCIRPT", sqlText, "ERRONEO", EX.ToString());
            }


        }
        private void guna2Button1_Click(object sender, EventArgs e)
        {
            Bandera2 = "FINAL";

            AgregarCampos("tabla" + txtNombretabla.Text + ".sql");

            EjecutarScriptSQL("tabla" + txtNombretabla.Text + ".sql");

            MessageBox.Show("TABLA CREADA CON EXITO");

            checkBoxKey.Checked = false;
            checkBoxNull.Checked = false;

        }

        private void dataGridViewCampos_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
