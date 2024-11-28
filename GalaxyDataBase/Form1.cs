using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Printing;
using System.Linq;
using System.Management.Instrumentation;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GalaxyDataBase
{


    public partial class Form1 : Form
    {
        string bandera;
        private static Form Fomulario;
        public static Form1 Getinstancia()
        {
            if (Fomulario == null || Fomulario.IsDisposed)
            {
                Fomulario = new Form1();
                return Fomulario;
            }
            else
            {

            }



        }


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

            if (BtnAgregarBD.FillColor == Color.Green)
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

        //PATRON SINGLETON
        private static AgregarUsuario InstanciaUsuario;
        public static AgregarUsuario GetInstance {
            get
            {
                if (InstanciaUsuario == null || InstanciaUsuario.IsDisposed)
                {
                    InstanciaUsuario = new AgregarUsuario();
                }
                else
                {
                    if (!InstanciaUsuario.Visible)
                    {
                        InstanciaUsuario.Show();
                    }
                    else if (InstanciaUsuario.WindowState == FormWindowState.Minimized)
                    {
                        InstanciaUsuario.WindowState = FormWindowState.Normal;
                    }

                    // Lleva el formulario al frente
                    InstanciaUsuario.BringToFront();
                }
                return InstanciaUsuario;
            }


        }

        private void Form1_Load(object sender, EventArgs e)
        {
            Bienvenida bienvenida = new Bienvenida();

            AddFormulario(bienvenida);
            bienvenida.Show();

        }
    }
}
