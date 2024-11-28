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
    public partial class Tablas : Form
    {
        public Tablas()
        {
            InitializeComponent();
        }

        private void Tablas_MouseLeave(object sender, EventArgs e)
        {

        }

        private void BtnAgregar_Click(object sender, EventArgs e)
        {
            guna2DataGridView1.Rows.Add(new object[] { });
        }
    }
}
