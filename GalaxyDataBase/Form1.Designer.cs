namespace GalaxyDataBase
{
    partial class Form1
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.guna2Elipse1 = new Guna.UI2.WinForms.Guna2Elipse(this.components);
            this.guna2Panel1 = new Guna.UI2.WinForms.Guna2Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.treeView1 = new System.Windows.Forms.TreeView();
            this.PanelHome = new Guna.UI2.WinForms.Guna2Panel();
            this.LblIInfo = new System.Windows.Forms.Label();
            this.TpHome = new System.Windows.Forms.ToolTip(this.components);
            this.guna2ImageButton1 = new Guna.UI2.WinForms.Guna2ImageButton();
            this.guna2Button1 = new Guna.UI2.WinForms.Guna2Button();
            this.BtnExit = new Guna.UI2.WinForms.Guna2Button();
            this.BtnUusarios = new Guna.UI2.WinForms.Guna2Button();
            this.BtnConfig = new Guna.UI2.WinForms.Guna2ImageButton();
            this.BtnTablas = new Guna.UI2.WinForms.Guna2Button();
            this.BtnAgregarBD = new Guna.UI2.WinForms.Guna2Button();
            this.guna2Panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // guna2Elipse1
            // 
            this.guna2Elipse1.BorderRadius = 10;
            this.guna2Elipse1.TargetControl = this;
            // 
            // guna2Panel1
            // 
            this.guna2Panel1.BackColor = System.Drawing.Color.Transparent;
            this.guna2Panel1.BorderRadius = 10;
            this.guna2Panel1.Controls.Add(this.label1);
            this.guna2Panel1.Controls.Add(this.treeView1);
            this.guna2Panel1.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(35)))), ((int)(((byte)(36)))), ((int)(((byte)(41)))));
            this.guna2Panel1.Location = new System.Drawing.Point(67, 45);
            this.guna2Panel1.Name = "guna2Panel1";
            this.guna2Panel1.ShadowDecoration.Parent = this.guna2Panel1;
            this.guna2Panel1.Size = new System.Drawing.Size(352, 765);
            this.guna2Panel1.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Sansation", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.label1.Location = new System.Drawing.Point(80, 40);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(182, 22);
            this.label1.TabIndex = 3;
            this.label1.Text = "BASES DE DATOS";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // treeView1
            // 
            this.treeView1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(35)))), ((int)(((byte)(36)))), ((int)(((byte)(41)))));
            this.treeView1.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.treeView1.LineColor = System.Drawing.Color.Green;
            this.treeView1.Location = new System.Drawing.Point(44, 81);
            this.treeView1.Name = "treeView1";
            this.treeView1.Size = new System.Drawing.Size(275, 697);
            this.treeView1.TabIndex = 2;
            // 
            // PanelHome
            // 
            this.PanelHome.BackColor = System.Drawing.Color.Transparent;
            this.PanelHome.BorderRadius = 10;
            this.PanelHome.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(35)))), ((int)(((byte)(36)))), ((int)(((byte)(41)))));
            this.PanelHome.Location = new System.Drawing.Point(470, 45);
            this.PanelHome.Name = "PanelHome";
            this.PanelHome.ShadowDecoration.Parent = this.PanelHome;
            this.PanelHome.Size = new System.Drawing.Size(1053, 765);
            this.PanelHome.TabIndex = 1;
            // 
            // LblIInfo
            // 
            this.LblIInfo.AutoSize = true;
            this.LblIInfo.BackColor = System.Drawing.Color.Transparent;
            this.LblIInfo.Font = new System.Drawing.Font("Sansation", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.LblIInfo.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.LblIInfo.Location = new System.Drawing.Point(466, 20);
            this.LblIInfo.Name = "LblIInfo";
            this.LblIInfo.Size = new System.Drawing.Size(125, 22);
            this.LblIInfo.TabIndex = 0;
            this.LblIInfo.Text = "Bienvenido...";
            // 
            // guna2ImageButton1
            // 
            this.guna2ImageButton1.BackColor = System.Drawing.Color.Transparent;
            this.guna2ImageButton1.CheckedState.Parent = this.guna2ImageButton1;
            this.guna2ImageButton1.HoverState.ImageSize = new System.Drawing.Size(25, 25);
            this.guna2ImageButton1.HoverState.Parent = this.guna2ImageButton1;
            this.guna2ImageButton1.Image = global::GalaxyDataBase.Properties.Resources.icons8_copias_de_seguridad_100;
            this.guna2ImageButton1.ImageSize = new System.Drawing.Size(35, 35);
            this.guna2ImageButton1.Location = new System.Drawing.Point(14, 671);
            this.guna2ImageButton1.Name = "guna2ImageButton1";
            this.guna2ImageButton1.PressedState.Parent = this.guna2ImageButton1;
            this.guna2ImageButton1.Size = new System.Drawing.Size(40, 35);
            this.guna2ImageButton1.TabIndex = 14;
            this.TpHome.SetToolTip(this.guna2ImageButton1, "Configuracion");
            // 
            // guna2Button1
            // 
            this.guna2Button1.BorderRadius = 10;
            this.guna2Button1.CheckedState.Parent = this.guna2Button1;
            this.guna2Button1.CustomImages.Parent = this.guna2Button1;
            this.guna2Button1.FillColor = System.Drawing.Color.Transparent;
            this.guna2Button1.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.guna2Button1.ForeColor = System.Drawing.Color.White;
            this.guna2Button1.HoverState.Parent = this.guna2Button1;
            this.guna2Button1.Image = global::GalaxyDataBase.Properties.Resources.icons8_cambiar_100;
            this.guna2Button1.ImageSize = new System.Drawing.Size(30, 30);
            this.guna2Button1.Location = new System.Drawing.Point(14, 199);
            this.guna2Button1.Name = "guna2Button1";
            this.guna2Button1.ShadowDecoration.Parent = this.guna2Button1;
            this.guna2Button1.Size = new System.Drawing.Size(47, 45);
            this.guna2Button1.TabIndex = 13;
            this.TpHome.SetToolTip(this.guna2Button1, "Gestionar Usuarios");
            // 
            // BtnExit
            // 
            this.BtnExit.BorderRadius = 10;
            this.BtnExit.CheckedState.Parent = this.BtnExit;
            this.BtnExit.CustomImages.Parent = this.BtnExit;
            this.BtnExit.FillColor = System.Drawing.Color.Transparent;
            this.BtnExit.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.BtnExit.ForeColor = System.Drawing.Color.White;
            this.BtnExit.HoverState.Parent = this.BtnExit;
            this.BtnExit.Image = global::GalaxyDataBase.Properties.Resources.icons8_salida_100;
            this.BtnExit.ImageSize = new System.Drawing.Size(30, 30);
            this.BtnExit.Location = new System.Drawing.Point(14, 765);
            this.BtnExit.Name = "BtnExit";
            this.BtnExit.ShadowDecoration.Parent = this.BtnExit;
            this.BtnExit.Size = new System.Drawing.Size(47, 45);
            this.BtnExit.TabIndex = 12;
            this.BtnExit.Click += new System.EventHandler(this.BtnExit_Click_1);
            this.BtnExit.MouseEnter += new System.EventHandler(this.BtnExit_MouseEnter_1);
            this.BtnExit.MouseLeave += new System.EventHandler(this.BtnExit_MouseLeave);
            // 
            // BtnUusarios
            // 
            this.BtnUusarios.BorderRadius = 10;
            this.BtnUusarios.CheckedState.Parent = this.BtnUusarios;
            this.BtnUusarios.CustomImages.Parent = this.BtnUusarios;
            this.BtnUusarios.FillColor = System.Drawing.Color.Transparent;
            this.BtnUusarios.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.BtnUusarios.ForeColor = System.Drawing.Color.White;
            this.BtnUusarios.HoverState.Parent = this.BtnUusarios;
            this.BtnUusarios.Image = global::GalaxyDataBase.Properties.Resources.icons8_usuario_100;
            this.BtnUusarios.ImageSize = new System.Drawing.Size(30, 30);
            this.BtnUusarios.Location = new System.Drawing.Point(14, 148);
            this.BtnUusarios.Name = "BtnUusarios";
            this.BtnUusarios.ShadowDecoration.Parent = this.BtnUusarios;
            this.BtnUusarios.Size = new System.Drawing.Size(47, 45);
            this.BtnUusarios.TabIndex = 10;
            this.TpHome.SetToolTip(this.BtnUusarios, "Gestionar Usuarios");
            this.BtnUusarios.Click += new System.EventHandler(this.BtnUusarios_Click);
            // 
            // BtnConfig
            // 
            this.BtnConfig.BackColor = System.Drawing.Color.Transparent;
            this.BtnConfig.CheckedState.Parent = this.BtnConfig;
            this.BtnConfig.HoverState.ImageSize = new System.Drawing.Size(25, 25);
            this.BtnConfig.HoverState.Parent = this.BtnConfig;
            this.BtnConfig.Image = global::GalaxyDataBase.Properties.Resources.icons8_configuración_de_ventana_100;
            this.BtnConfig.ImageSize = new System.Drawing.Size(35, 35);
            this.BtnConfig.Location = new System.Drawing.Point(12, 724);
            this.BtnConfig.Name = "BtnConfig";
            this.BtnConfig.PressedState.Parent = this.BtnConfig;
            this.BtnConfig.Size = new System.Drawing.Size(40, 35);
            this.BtnConfig.TabIndex = 1;
            this.TpHome.SetToolTip(this.BtnConfig, "Configuracion");
            // 
            // BtnTablas
            // 
            this.BtnTablas.BorderRadius = 10;
            this.BtnTablas.CheckedState.Parent = this.BtnTablas;
            this.BtnTablas.CustomImages.Parent = this.BtnTablas;
            this.BtnTablas.FillColor = System.Drawing.Color.Transparent;
            this.BtnTablas.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.BtnTablas.ForeColor = System.Drawing.Color.White;
            this.BtnTablas.HoverState.Parent = this.BtnTablas;
            this.BtnTablas.Image = global::GalaxyDataBase.Properties.Resources.icons8_insertar_mesa_100_1_;
            this.BtnTablas.ImageSize = new System.Drawing.Size(30, 30);
            this.BtnTablas.Location = new System.Drawing.Point(14, 88);
            this.BtnTablas.Name = "BtnTablas";
            this.BtnTablas.ShadowDecoration.Parent = this.BtnTablas;
            this.BtnTablas.Size = new System.Drawing.Size(47, 45);
            this.BtnTablas.TabIndex = 9;
            this.TpHome.SetToolTip(this.BtnTablas, "Agregar Tabla");
            this.BtnTablas.Click += new System.EventHandler(this.BtnTablas_Click);
            // 
            // BtnAgregarBD
            // 
            this.BtnAgregarBD.BorderRadius = 10;
            this.BtnAgregarBD.CheckedState.Parent = this.BtnAgregarBD;
            this.BtnAgregarBD.CustomImages.Parent = this.BtnAgregarBD;
            this.BtnAgregarBD.FillColor = System.Drawing.Color.Transparent;
            this.BtnAgregarBD.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.BtnAgregarBD.ForeColor = System.Drawing.Color.White;
            this.BtnAgregarBD.HoverState.Parent = this.BtnAgregarBD;
            this.BtnAgregarBD.Image = global::GalaxyDataBase.Properties.Resources.icons8_database_100;
            this.BtnAgregarBD.ImageSize = new System.Drawing.Size(30, 30);
            this.BtnAgregarBD.Location = new System.Drawing.Point(12, 29);
            this.BtnAgregarBD.Name = "BtnAgregarBD";
            this.BtnAgregarBD.ShadowDecoration.Parent = this.BtnAgregarBD;
            this.BtnAgregarBD.Size = new System.Drawing.Size(47, 45);
            this.BtnAgregarBD.TabIndex = 7;
            this.BtnAgregarBD.Tag = "";
            this.TpHome.SetToolTip(this.BtnAgregarBD, "Agregar Base");
            this.BtnAgregarBD.Click += new System.EventHandler(this.BtnAgregarBD_Click_1);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(21)))), ((int)(((byte)(21)))), ((int)(((byte)(29)))));
            this.ClientSize = new System.Drawing.Size(1547, 834);
            this.Controls.Add(this.guna2ImageButton1);
            this.Controls.Add(this.guna2Button1);
            this.Controls.Add(this.BtnExit);
            this.Controls.Add(this.LblIInfo);
            this.Controls.Add(this.BtnUusarios);
            this.Controls.Add(this.PanelHome);
            this.Controls.Add(this.BtnConfig);
            this.Controls.Add(this.BtnTablas);
            this.Controls.Add(this.guna2Panel1);
            this.Controls.Add(this.BtnAgregarBD);
            this.ForeColor = System.Drawing.Color.Transparent;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.guna2Panel1.ResumeLayout(false);
            this.guna2Panel1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Guna.UI2.WinForms.Guna2Elipse guna2Elipse1;
        private Guna.UI2.WinForms.Guna2Panel guna2Panel1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TreeView treeView1;
        private Guna.UI2.WinForms.Guna2ImageButton BtnConfig;
        private Guna.UI2.WinForms.Guna2Panel PanelHome;
        private System.Windows.Forms.Label LblIInfo;
        private Guna.UI2.WinForms.Guna2Button BtnAgregarBD;
        private Guna.UI2.WinForms.Guna2Button BtnUusarios;
        private Guna.UI2.WinForms.Guna2Button BtnTablas;
        private Guna.UI2.WinForms.Guna2Button BtnExit;
        private System.Windows.Forms.ToolTip TpHome;
        private Guna.UI2.WinForms.Guna2ImageButton guna2ImageButton1;
        private Guna.UI2.WinForms.Guna2Button guna2Button1;
    }
}

