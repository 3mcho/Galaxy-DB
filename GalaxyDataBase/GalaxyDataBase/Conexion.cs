using System;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using IniTools;

namespace GalaxyDataBase
{
    public partial class Conexion : Form
    {
        public Conexion()
        {
            InitializeComponent();
        }

        private void Conexion_Load(object sender, EventArgs e)
        {

        }

        private void guna2Button1_Click(object sender, EventArgs e)
        {
            string ruta = String.Empty;
            OpenFileDialog openFileDialog = new OpenFileDialog();
            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
                ruta = openFileDialog.FileName;

            }
            TxtBD.Text = ruta;
        }

        private void BtnAgregar_Click(object sender, EventArgs e)
        {

        }

        private void toolStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void toolStripButtonEditar_Click(object sender, EventArgs e)
        {
            panel1.Enabled = true;
        }

        private void toolStripButton2_Click(object sender, EventArgs e)
        {
            IniTools.ClassIniTools Mini = new IniTools.ClassIniTools();

            String UbicacionBase = "";

            try
            {
                string sSecccion = "DBCONEXION";
                string sClave = "Database";
                string sValor = "";
                UbicacionBase = Mini.IniGet(ClassGlobales.vIniFileG, sSecccion, sClave, sValor);
                sValor = TxtBD.Text;
                Mini.IniDeleteKey(ClassGlobales.vIniFileG, sSecccion, sClave);
                Mini.IniWrite(ClassGlobales.vIniFileG, sSecccion, sClave, sValor);
                MessageBox.Show("DATOS ACTUALIZADOS CORRECTAMENTE");

                string sClave2 = "Host";
                sValor = "";
                UbicacionBase = Mini.IniGet(ClassGlobales.vIniFileG, sSecccion, sClave2, sValor);
                sValor = txtHost.Text;
                Mini.IniDeleteKey(ClassGlobales.vIniFileG, sSecccion, sClave2);
                Mini.IniWrite(ClassGlobales.vIniFileG, sSecccion, sClave2, sValor);

                string sClave3 = "User";
                sValor = "";
                UbicacionBase = Mini.IniGet(ClassGlobales.vIniFileG, sSecccion, sClave3, sValor);
                sValor = txtUser.Text;
                Mini.IniDeleteKey(ClassGlobales.vIniFileG, sSecccion, sClave3);
                Mini.IniWrite(ClassGlobales.vIniFileG, sSecccion, sClave3, sValor);

                string sClave4 = "Clave";
                sValor = "";
                UbicacionBase = Mini.IniGet(ClassGlobales.vIniFileG, sSecccion, sClave4, sValor);
                sValor = txtPass.Text;
                Mini.IniDeleteKey(ClassGlobales.vIniFileG, sSecccion, sClave4);
                Mini.IniWrite(ClassGlobales.vIniFileG, sSecccion, sClave4, sValor);

                string sClave5 = "Port";
                sValor = "";
                UbicacionBase = Mini.IniGet(ClassGlobales.vIniFileG, sSecccion, sClave5, sValor);
                sValor = txtPuerto.Text;
                Mini.IniDeleteKey(ClassGlobales.vIniFileG, sSecccion, sClave5);
                Mini.IniWrite(ClassGlobales.vIniFileG, sSecccion, sClave5, sValor);



            }
            catch (Exception ex)
            { }
        }

        private void guna2Button1_Click_1(object sender, EventArgs e)
        {
            string ruta = String.Empty;
            OpenFileDialog openFileDialog = new OpenFileDialog();
            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
                ruta = openFileDialog.FileName;

            }
            TxtBD.Text = ruta;
        }
    }
}
