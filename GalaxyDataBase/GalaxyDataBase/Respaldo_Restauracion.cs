
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using FirebirdSql.Data.FirebirdClient;
using FirebirdSql.Data.Services;

namespace GalaxyDataBase
{
    public partial class Respaldo_Restauracion : Form
    {
        
        
        public Respaldo_Restauracion()
        {
            InitializeComponent();
        }

        private void Respaldo_Restauracion_Load(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void BtnExaminar_Click(object sender, EventArgs e)
        {
            string ruta = string.Empty;
            OpenFileDialog openFileDialog = new OpenFileDialog();
            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
                ruta = openFileDialog.FileName;
            }
            txtBas.Text = ruta;
        }
    

        private void BtnRespaldar_Click(object sender, EventArgs e)
        {
            if (txtBas.Text == "" || txtruta.Text == "")
            {
                MessageBox.Show("Debe de llenar los campos");
            }
            else
            {
                try
                {
                    FbConnectionStringBuilder vCString = new FbConnectionStringBuilder();
                    vCString.UserID = "SYSDBA";
                    vCString.Password = "masterkey";
                    vCString.Database = txtBas.Text;

                    FbBackup vBackup = new FbBackup();

                    vBackup.ConnectionString = vCString.ToString();
                    vBackup.BackupFiles.Add(new FbBackupFile(txtruta.Text, 2048));
                    vBackup.Verbose = true;

                    vBackup.Options = FbBackupFlags.IgnoreLimbo;
                    vBackup.ServiceOutput += new ServiceOutputEventHandler(ServiceOutput);
                    vBackup.Execute();
                    MessageBox.Show("Respaldo completado");
                    txtBas.Clear();
                    txtruta.Clear();
                }
                catch (Exception vExcep)
                {

                    MessageBox.Show("Error");
                    MessageBox.Show(vExcep.ToString());

                }
            }
            

            
        }
        static void ServiceOutput(object sender, ServiceOutputEventArgs e)
        {
            Console.WriteLine(e.Message);
            Console.ReadLine();
        }
        private void BtnExaminar2_Click(object sender, EventArgs e)
        {
            
        }
       

        
        private void BtnRestaurar_Click(object sender, EventArgs e)
        {
            
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            string rutaarchivo = String.Empty;

            txtruta.Text = rutaarchivo;
            saveFileDialog1.Filter = "GenBanK (*.GBK)|*.gbk";
            saveFileDialog1.DefaultExt = "GBK";
            saveFileDialog1.ShowDialog();
            txtruta.Text = saveFileDialog1.FileName;
        }

        private void Button3_Click(object sender, EventArgs e)
        {
            string ruta = string.Empty;
            OpenFileDialog openFileDialog = new OpenFileDialog();
            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
                ruta = openFileDialog.FileName;
            }
            guna2TextBox2.Text = ruta;
        }

        private void Button4_Click(object sender, EventArgs e)
        {
            string rutaarchivo = String.Empty;

            guna2TextBox1.Text = rutaarchivo;
            saveFileDialog1.Filter = "FirebirdDataBase (*.FDB)|*.fdb";
            saveFileDialog1.DefaultExt = "FDB";
            saveFileDialog1.ShowDialog();
           guna2TextBox1.Text = saveFileDialog1.FileName;
        }

        private void Button5_Click(object sender, EventArgs e)
        {
            if (guna2TextBox1.Text == "" || guna2TextBox2.Text == "")
            {
                MessageBox.Show("Debe de llenar todos los campos");
            }
            else
            {
                try
                {
                    FbConnectionStringBuilder vCString = new FbConnectionStringBuilder();

                    vCString.UserID = "SYSDBA";
                    vCString.Password = "masterkey";
                    vCString.Database = guna2TextBox1.Text;

                    FbRestore vRestore = new FbRestore();

                    vRestore.ConnectionString = vCString.ToString();
                    vRestore.BackupFiles.Add(new FbBackupFile(guna2TextBox2.Text, 2048));
                    vRestore.Verbose = true;
                    vRestore.PageSize = 4096;
                    vRestore.Options = FbRestoreFlags.Create | FbRestoreFlags.Replace;

                    vRestore.ServiceOutput += new ServiceOutputEventHandler(ServiceOutput);

                    vRestore.Execute();
                    MessageBox.Show("Respaldo completado");
                    guna2TextBox1.Clear();
                    guna2TextBox2.Clear();
                }
                catch (Exception vExcep)
                {
                    MessageBox.Show(vExcep.ToString());
                }
            }
            

                
           
        }

        private void guna2Button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
