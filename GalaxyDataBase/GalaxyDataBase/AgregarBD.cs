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

namespace GalaxyDataBase
{
    public partial class AgregarBD : Form
    {
        public AgregarBD()
        {
            InitializeComponent();
        }

        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

       

        private void BtnAgregar_Click(object sender, EventArgs e)
        {
            Agrega();
            string nombre = TxtAlias.Text;

            GenerarScript(nombre + ".sql", TxtRuta.Text);

            EjecutarScriptSQL(nombre + ".sql");

        }

        private void AgregarBD_Load(object sender, EventArgs e)
        {

        }

        private void guna2Button1_Click(object sender, EventArgs e)
        {

            string rutaarchivo = String.Empty;

            TxtRuta.Text = rutaarchivo;
            saveFileDialog1.Filter = "FirebirdDataBase (*.FDB)|*.fdb";
            saveFileDialog1.DefaultExt = "FDB";
            saveFileDialog1.ShowDialog();
            TxtRuta.Text = saveFileDialog1.FileName;
            TxtAlias.Text = "";
        }

        private void guna2Button2_Click(object sender, EventArgs e)
        {
            string ruta = string.Empty;
            OpenFileDialog openFileDialog = new OpenFileDialog();
            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
                ruta = openFileDialog.FileName;
            }
            TxtRuta.Text = ruta;
            TxtAlias.Text = Path.GetFileNameWithoutExtension(ruta);
        }

        public void Agrega()
        {

            ClassBasesDeDatos vObjeto = new ClassBasesDeDatos();

            int insertar = vObjeto.AgregarBaseDeDatos(TxtRuta.Text, TxtAlias.Text, TxtHost.Text, TxtUs.Text, TxtPass.Text, txtPort.Text);
            switch (insertar)
            {
                case 0:
                    MessageBox.Show("Registro guardado");


                    break;
            }


        }
        private void GenerarScript(string vNombreSCRIPT, string vNombreDB)
        //Uno representa el nombre del archivo .sql y el otro el nombre de la base de datos nueva
        {
            string vSQLScript = Application.StartupPath + "\\SCRIPTS\\" + vNombreSCRIPT;

            string Folder = saveFileDialog1.FileName + "\\SCRIPTS";
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
    }
}
