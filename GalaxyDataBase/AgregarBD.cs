using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GalaxyDataBase
{
    public partial class AgregarBD : Form
    {
        private static AgregarBD _instancia;
        public AgregarBD()
        {
            InitializeComponent();
        }

     
        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            this.Close();
        }


        public static AgregarBD ObtenerInstancia()
        {
            if (_instancia == null || _instancia.IsDisposed) // Verifica si ya existe la instancia o si se ha cerrado
            {
                _instancia = new AgregarBD();
            }
            return _instancia;
        }

        private void BtnAgregar_Click(object sender, EventArgs e)
        {
            
        }

        private void AgregarBD_Load(object sender, EventArgs e)
        {

        }
    }
}
