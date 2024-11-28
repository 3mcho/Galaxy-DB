namespace GalaxyDataBase
{
    partial class MigracionMYSQL_FDB
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.PanelConexion = new Guna.UI2.WinForms.Guna2Panel();
            this.TxtServidor = new Guna.UI2.WinForms.Guna2TextBox();
            this.BtnConectar = new Guna.UI2.WinForms.Guna2Button();
            this.PanelBases = new Guna.UI2.WinForms.Guna2Panel();
            this.comboBoxBases = new Guna.UI2.WinForms.Guna2ComboBox();
            this.TxtUser = new Guna.UI2.WinForms.Guna2TextBox();
            this.TxtPassword = new Guna.UI2.WinForms.Guna2TextBox();
            this.guna2Button1 = new Guna.UI2.WinForms.Guna2Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.guna2PictureBox1 = new Guna.UI2.WinForms.Guna2PictureBox();
            this.BtnCerrar = new Guna.UI2.WinForms.Guna2Button();
            this.PanelConexion.SuspendLayout();
            this.PanelBases.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.guna2PictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // PanelConexion
            // 
            this.PanelConexion.Controls.Add(this.label3);
            this.PanelConexion.Controls.Add(this.label2);
            this.PanelConexion.Controls.Add(this.label1);
            this.PanelConexion.Controls.Add(this.TxtPassword);
            this.PanelConexion.Controls.Add(this.TxtUser);
            this.PanelConexion.Controls.Add(this.BtnConectar);
            this.PanelConexion.Controls.Add(this.TxtServidor);
            this.PanelConexion.Location = new System.Drawing.Point(43, 21);
            this.PanelConexion.Name = "PanelConexion";
            this.PanelConexion.ShadowDecoration.Parent = this.PanelConexion;
            this.PanelConexion.Size = new System.Drawing.Size(386, 444);
            this.PanelConexion.TabIndex = 0;
            // 
            // TxtServidor
            // 
            this.TxtServidor.BorderRadius = 8;
            this.TxtServidor.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.TxtServidor.DefaultText = "";
            this.TxtServidor.DisabledState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(208)))), ((int)(((byte)(208)))));
            this.TxtServidor.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(226)))), ((int)(((byte)(226)))), ((int)(((byte)(226)))));
            this.TxtServidor.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.TxtServidor.DisabledState.Parent = this.TxtServidor;
            this.TxtServidor.DisabledState.PlaceholderForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.TxtServidor.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(21)))), ((int)(((byte)(21)))), ((int)(((byte)(29)))));
            this.TxtServidor.FocusedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.TxtServidor.FocusedState.Parent = this.TxtServidor;
            this.TxtServidor.ForeColor = System.Drawing.Color.White;
            this.TxtServidor.HoverState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.TxtServidor.HoverState.Parent = this.TxtServidor;
            this.TxtServidor.Location = new System.Drawing.Point(31, 83);
            this.TxtServidor.Margin = new System.Windows.Forms.Padding(5);
            this.TxtServidor.Name = "TxtServidor";
            this.TxtServidor.PasswordChar = '\0';
            this.TxtServidor.PlaceholderText = "";
            this.TxtServidor.SelectedText = "";
            this.TxtServidor.ShadowDecoration.Parent = this.TxtServidor;
            this.TxtServidor.Size = new System.Drawing.Size(262, 36);
            this.TxtServidor.TabIndex = 14;
            // 
            // BtnConectar
            // 
            this.BtnConectar.BorderRadius = 10;
            this.BtnConectar.CheckedState.Parent = this.BtnConectar;
            this.BtnConectar.CustomImages.Parent = this.BtnConectar;
            this.BtnConectar.FillColor = System.Drawing.Color.Green;
            this.BtnConectar.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.BtnConectar.ForeColor = System.Drawing.Color.White;
            this.BtnConectar.HoverState.Parent = this.BtnConectar;
            this.BtnConectar.Location = new System.Drawing.Point(114, 336);
            this.BtnConectar.Margin = new System.Windows.Forms.Padding(4);
            this.BtnConectar.Name = "BtnConectar";
            this.BtnConectar.ShadowDecoration.Parent = this.BtnConectar;
            this.BtnConectar.Size = new System.Drawing.Size(135, 49);
            this.BtnConectar.TabIndex = 25;
            this.BtnConectar.Text = "CONECTAR";
            this.BtnConectar.Click += new System.EventHandler(this.BtnConectar_Click);
            // 
            // PanelBases
            // 
            this.PanelBases.Controls.Add(this.guna2PictureBox1);
            this.PanelBases.Controls.Add(this.label4);
            this.PanelBases.Controls.Add(this.guna2Button1);
            this.PanelBases.Controls.Add(this.comboBoxBases);
            this.PanelBases.Enabled = false;
            this.PanelBases.Location = new System.Drawing.Point(483, 76);
            this.PanelBases.Name = "PanelBases";
            this.PanelBases.ShadowDecoration.Parent = this.PanelBases;
            this.PanelBases.Size = new System.Drawing.Size(409, 330);
            this.PanelBases.TabIndex = 1;
            // 
            // comboBoxBases
            // 
            this.comboBoxBases.BackColor = System.Drawing.Color.Transparent;
            this.comboBoxBases.BorderRadius = 8;
            this.comboBoxBases.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.comboBoxBases.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBoxBases.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(21)))), ((int)(((byte)(21)))), ((int)(((byte)(29)))));
            this.comboBoxBases.FocusedColor = System.Drawing.Color.Empty;
            this.comboBoxBases.FocusedState.Parent = this.comboBoxBases;
            this.comboBoxBases.Font = new System.Drawing.Font("Segoe UI", 10F);
            this.comboBoxBases.ForeColor = System.Drawing.Color.White;
            this.comboBoxBases.FormattingEnabled = true;
            this.comboBoxBases.HoverState.Parent = this.comboBoxBases;
            this.comboBoxBases.ItemHeight = 30;
            this.comboBoxBases.ItemsAppearance.Parent = this.comboBoxBases;
            this.comboBoxBases.Location = new System.Drawing.Point(82, 114);
            this.comboBoxBases.Margin = new System.Windows.Forms.Padding(4);
            this.comboBoxBases.Name = "comboBoxBases";
            this.comboBoxBases.ShadowDecoration.Parent = this.comboBoxBases;
            this.comboBoxBases.Size = new System.Drawing.Size(197, 36);
            this.comboBoxBases.TabIndex = 18;
            // 
            // TxtUser
            // 
            this.TxtUser.BorderRadius = 8;
            this.TxtUser.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.TxtUser.DefaultText = "";
            this.TxtUser.DisabledState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(208)))), ((int)(((byte)(208)))));
            this.TxtUser.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(226)))), ((int)(((byte)(226)))), ((int)(((byte)(226)))));
            this.TxtUser.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.TxtUser.DisabledState.Parent = this.TxtUser;
            this.TxtUser.DisabledState.PlaceholderForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.TxtUser.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(21)))), ((int)(((byte)(21)))), ((int)(((byte)(29)))));
            this.TxtUser.FocusedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.TxtUser.FocusedState.Parent = this.TxtUser;
            this.TxtUser.ForeColor = System.Drawing.Color.White;
            this.TxtUser.HoverState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.TxtUser.HoverState.Parent = this.TxtUser;
            this.TxtUser.Location = new System.Drawing.Point(31, 176);
            this.TxtUser.Margin = new System.Windows.Forms.Padding(5);
            this.TxtUser.Name = "TxtUser";
            this.TxtUser.PasswordChar = '\0';
            this.TxtUser.PlaceholderText = "";
            this.TxtUser.SelectedText = "";
            this.TxtUser.ShadowDecoration.Parent = this.TxtUser;
            this.TxtUser.Size = new System.Drawing.Size(262, 36);
            this.TxtUser.TabIndex = 26;
            // 
            // TxtPassword
            // 
            this.TxtPassword.BorderRadius = 8;
            this.TxtPassword.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.TxtPassword.DefaultText = "";
            this.TxtPassword.DisabledState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(208)))), ((int)(((byte)(208)))));
            this.TxtPassword.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(226)))), ((int)(((byte)(226)))), ((int)(((byte)(226)))));
            this.TxtPassword.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.TxtPassword.DisabledState.Parent = this.TxtPassword;
            this.TxtPassword.DisabledState.PlaceholderForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.TxtPassword.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(21)))), ((int)(((byte)(21)))), ((int)(((byte)(29)))));
            this.TxtPassword.FocusedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.TxtPassword.FocusedState.Parent = this.TxtPassword;
            this.TxtPassword.ForeColor = System.Drawing.Color.White;
            this.TxtPassword.HoverState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.TxtPassword.HoverState.Parent = this.TxtPassword;
            this.TxtPassword.Location = new System.Drawing.Point(31, 266);
            this.TxtPassword.Margin = new System.Windows.Forms.Padding(5);
            this.TxtPassword.Name = "TxtPassword";
            this.TxtPassword.PasswordChar = '\0';
            this.TxtPassword.PlaceholderText = "";
            this.TxtPassword.SelectedText = "";
            this.TxtPassword.ShadowDecoration.Parent = this.TxtPassword;
            this.TxtPassword.Size = new System.Drawing.Size(252, 36);
            this.TxtPassword.TabIndex = 27;
            // 
            // guna2Button1
            // 
            this.guna2Button1.BorderRadius = 10;
            this.guna2Button1.CheckedState.Parent = this.guna2Button1;
            this.guna2Button1.CustomImages.Parent = this.guna2Button1;
            this.guna2Button1.FillColor = System.Drawing.Color.Green;
            this.guna2Button1.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.guna2Button1.ForeColor = System.Drawing.Color.White;
            this.guna2Button1.HoverState.Parent = this.guna2Button1;
            this.guna2Button1.Location = new System.Drawing.Point(91, 181);
            this.guna2Button1.Margin = new System.Windows.Forms.Padding(4);
            this.guna2Button1.Name = "guna2Button1";
            this.guna2Button1.ShadowDecoration.Parent = this.guna2Button1;
            this.guna2Button1.Size = new System.Drawing.Size(135, 49);
            this.guna2Button1.TabIndex = 28;
            this.guna2Button1.Text = "MIGRAR A";
            this.guna2Button1.Click += new System.EventHandler(this.guna2Button1_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(37, 53);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(69, 25);
            this.label1.TabIndex = 29;
            this.label1.Text = "HOST";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(37, 146);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(102, 25);
            this.label2.TabIndex = 30;
            this.label2.Text = "USUARIO";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.White;
            this.label3.Location = new System.Drawing.Point(37, 236);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(152, 25);
            this.label3.TabIndex = 31;
            this.label3.Text = "CONTRASEÑA";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.ForeColor = System.Drawing.Color.White;
            this.label4.Location = new System.Drawing.Point(86, 65);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(188, 25);
            this.label4.TabIndex = 32;
            this.label4.Text = "BASES DE DATOS";
            // 
            // guna2PictureBox1
            // 
            this.guna2PictureBox1.Image = global::GalaxyDataBase.Properties.Resources.Firebird_logo_svg;
            this.guna2PictureBox1.Location = new System.Drawing.Point(248, 164);
            this.guna2PictureBox1.Name = "guna2PictureBox1";
            this.guna2PictureBox1.ShadowDecoration.Parent = this.guna2PictureBox1;
            this.guna2PictureBox1.Size = new System.Drawing.Size(93, 83);
            this.guna2PictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.guna2PictureBox1.TabIndex = 33;
            this.guna2PictureBox1.TabStop = false;
            // 
            // BtnCerrar
            // 
            this.BtnCerrar.CheckedState.Parent = this.BtnCerrar;
            this.BtnCerrar.CustomImages.Parent = this.BtnCerrar;
            this.BtnCerrar.FillColor = System.Drawing.Color.Transparent;
            this.BtnCerrar.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.BtnCerrar.ForeColor = System.Drawing.Color.White;
            this.BtnCerrar.HoverState.Parent = this.BtnCerrar;
            this.BtnCerrar.Image = global::GalaxyDataBase.Properties.Resources.icons8_cerrar_ventana_100;
            this.BtnCerrar.ImageSize = new System.Drawing.Size(30, 30);
            this.BtnCerrar.Location = new System.Drawing.Point(972, 13);
            this.BtnCerrar.Margin = new System.Windows.Forms.Padding(4);
            this.BtnCerrar.Name = "BtnCerrar";
            this.BtnCerrar.ShadowDecoration.Parent = this.BtnCerrar;
            this.BtnCerrar.Size = new System.Drawing.Size(36, 33);
            this.BtnCerrar.TabIndex = 34;
            this.BtnCerrar.Click += new System.EventHandler(this.BtnCerrar_Click);
            // 
            // MigracionMYSQL_FDB
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(21)))), ((int)(((byte)(21)))), ((int)(((byte)(29)))));
            this.ClientSize = new System.Drawing.Size(1021, 514);
            this.Controls.Add(this.BtnCerrar);
            this.Controls.Add(this.PanelBases);
            this.Controls.Add(this.PanelConexion);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "MigracionMYSQL_FDB";
            this.Text = "MigracionMYSQL_FDB";
            this.PanelConexion.ResumeLayout(false);
            this.PanelConexion.PerformLayout();
            this.PanelBases.ResumeLayout(false);
            this.PanelBases.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.guna2PictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Guna.UI2.WinForms.Guna2Panel PanelConexion;
        private Guna.UI2.WinForms.Guna2TextBox TxtServidor;
        private Guna.UI2.WinForms.Guna2TextBox TxtPassword;
        private Guna.UI2.WinForms.Guna2TextBox TxtUser;
        private Guna.UI2.WinForms.Guna2Button BtnConectar;
        private Guna.UI2.WinForms.Guna2Panel PanelBases;
        private Guna.UI2.WinForms.Guna2Button guna2Button1;
        private Guna.UI2.WinForms.Guna2ComboBox comboBoxBases;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label4;
        private Guna.UI2.WinForms.Guna2PictureBox guna2PictureBox1;
        private Guna.UI2.WinForms.Guna2Button BtnCerrar;
    }
}