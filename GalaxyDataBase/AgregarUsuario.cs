﻿using System;
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
    public partial class AgregarUsuario : Form
    {
        public AgregarUsuario()
        {
            InitializeComponent();
        }

        private void AgregarUsuario_Load(object sender, EventArgs e)
        {

        }

        private void guna2Button1_Click(object sender, EventArgs e)
        {

        }

        private void ToggleCrear_CheckedChanged(object sender, EventArgs e)
        {
            if( ToggleCrear.Checked == true )
            {
                if(TogleGestionar.Checked == true )
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
            
        }
    }
}
