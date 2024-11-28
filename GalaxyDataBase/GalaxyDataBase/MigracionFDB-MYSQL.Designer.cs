namespace GalaxyDataBase
{
    partial class MigracionFDB_MYSQL
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
            this.TxtRuta = new Guna.UI2.WinForms.Guna2TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.BtnMigrar = new Guna.UI2.WinForms.Guna2Button();
            this.label2 = new System.Windows.Forms.Label();
            this.guna2PictureBox2 = new Guna.UI2.WinForms.Guna2PictureBox();
            this.BtnExaminar = new Guna.UI2.WinForms.Guna2Button();
            this.guna2PictureBox1 = new Guna.UI2.WinForms.Guna2PictureBox();
            this.BtnCerrar = new Guna.UI2.WinForms.Guna2Button();
            ((System.ComponentModel.ISupportInitialize)(this.guna2PictureBox2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.guna2PictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // TxtRuta
            // 
            this.TxtRuta.BorderRadius = 8;
            this.TxtRuta.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.TxtRuta.DefaultText = "";
            this.TxtRuta.DisabledState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(208)))), ((int)(((byte)(208)))));
            this.TxtRuta.DisabledState.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(226)))), ((int)(((byte)(226)))), ((int)(((byte)(226)))));
            this.TxtRuta.DisabledState.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.TxtRuta.DisabledState.Parent = this.TxtRuta;
            this.TxtRuta.DisabledState.PlaceholderForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(138)))), ((int)(((byte)(138)))));
            this.TxtRuta.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(21)))), ((int)(((byte)(21)))), ((int)(((byte)(29)))));
            this.TxtRuta.FocusedState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.TxtRuta.FocusedState.Parent = this.TxtRuta;
            this.TxtRuta.ForeColor = System.Drawing.Color.White;
            this.TxtRuta.HoverState.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(94)))), ((int)(((byte)(148)))), ((int)(((byte)(255)))));
            this.TxtRuta.HoverState.Parent = this.TxtRuta;
            this.TxtRuta.Location = new System.Drawing.Point(71, 76);
            this.TxtRuta.Margin = new System.Windows.Forms.Padding(5);
            this.TxtRuta.Name = "TxtRuta";
            this.TxtRuta.PasswordChar = '\0';
            this.TxtRuta.PlaceholderText = "";
            this.TxtRuta.SelectedText = "";
            this.TxtRuta.ShadowDecoration.Parent = this.TxtRuta;
            this.TxtRuta.Size = new System.Drawing.Size(375, 44);
            this.TxtRuta.TabIndex = 13;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(66, 46);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(264, 25);
            this.label1.TabIndex = 14;
            this.label1.Text = "Selecciona un base de datos";
            // 
            // BtnMigrar
            // 
            this.BtnMigrar.BorderRadius = 10;
            this.BtnMigrar.CheckedState.Parent = this.BtnMigrar;
            this.BtnMigrar.CustomImages.Parent = this.BtnMigrar;
            this.BtnMigrar.FillColor = System.Drawing.Color.Green;
            this.BtnMigrar.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.BtnMigrar.ForeColor = System.Drawing.Color.White;
            this.BtnMigrar.HoverState.Parent = this.BtnMigrar;
            this.BtnMigrar.Location = new System.Drawing.Point(197, 183);
            this.BtnMigrar.Margin = new System.Windows.Forms.Padding(4);
            this.BtnMigrar.Name = "BtnMigrar";
            this.BtnMigrar.ShadowDecoration.Parent = this.BtnMigrar;
            this.BtnMigrar.Size = new System.Drawing.Size(135, 49);
            this.BtnMigrar.TabIndex = 24;
            this.BtnMigrar.Text = "MIGRAR A";
            this.BtnMigrar.Click += new System.EventHandler(this.BtnMigrar_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(184, 46);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(0, 25);
            this.label2.TabIndex = 26;
            // 
            // guna2PictureBox2
            // 
            this.guna2PictureBox2.Image = global::GalaxyDataBase.Properties.Resources.mysql_logo_png_transparent;
            this.guna2PictureBox2.Location = new System.Drawing.Point(351, 164);
            this.guna2PictureBox2.Name = "guna2PictureBox2";
            this.guna2PictureBox2.ShadowDecoration.Parent = this.guna2PictureBox2;
            this.guna2PictureBox2.Size = new System.Drawing.Size(163, 89);
            this.guna2PictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.guna2PictureBox2.TabIndex = 25;
            this.guna2PictureBox2.TabStop = false;
            // 
            // BtnExaminar
            // 
            this.BtnExaminar.CheckedState.Parent = this.BtnExaminar;
            this.BtnExaminar.CustomImages.Parent = this.BtnExaminar;
            this.BtnExaminar.FillColor = System.Drawing.Color.Transparent;
            this.BtnExaminar.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.BtnExaminar.ForeColor = System.Drawing.Color.White;
            this.BtnExaminar.HoverState.Parent = this.BtnExaminar;
            this.BtnExaminar.Image = global::GalaxyDataBase.Properties.Resources.icons8_carpeta_100;
            this.BtnExaminar.ImageSize = new System.Drawing.Size(30, 30);
            this.BtnExaminar.Location = new System.Drawing.Point(478, 77);
            this.BtnExaminar.Margin = new System.Windows.Forms.Padding(4);
            this.BtnExaminar.Name = "BtnExaminar";
            this.BtnExaminar.ShadowDecoration.Parent = this.BtnExaminar;
            this.BtnExaminar.Size = new System.Drawing.Size(51, 43);
            this.BtnExaminar.TabIndex = 15;
            this.BtnExaminar.Click += new System.EventHandler(this.BtnExaminar_Click);
            // 
            // guna2PictureBox1
            // 
            this.guna2PictureBox1.Image = global::GalaxyDataBase.Properties.Resources.Firebird_logo_svg;
            this.guna2PictureBox1.Location = new System.Drawing.Point(73, 164);
            this.guna2PictureBox1.Name = "guna2PictureBox1";
            this.guna2PictureBox1.ShadowDecoration.Parent = this.guna2PictureBox1;
            this.guna2PictureBox1.Size = new System.Drawing.Size(104, 89);
            this.guna2PictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.guna2PictureBox1.TabIndex = 0;
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
            this.BtnCerrar.Location = new System.Drawing.Point(545, 13);
            this.BtnCerrar.Margin = new System.Windows.Forms.Padding(4);
            this.BtnCerrar.Name = "BtnCerrar";
            this.BtnCerrar.ShadowDecoration.Parent = this.BtnCerrar;
            this.BtnCerrar.Size = new System.Drawing.Size(36, 33);
            this.BtnCerrar.TabIndex = 27;
            this.BtnCerrar.Click += new System.EventHandler(this.BtnCerrar_Click);
            // 
            // MigracionFDB_MYSQL
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(21)))), ((int)(((byte)(21)))), ((int)(((byte)(29)))));
            this.ClientSize = new System.Drawing.Size(594, 332);
            this.Controls.Add(this.BtnCerrar);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.guna2PictureBox2);
            this.Controls.Add(this.BtnMigrar);
            this.Controls.Add(this.BtnExaminar);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.TxtRuta);
            this.Controls.Add(this.guna2PictureBox1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "MigracionFDB_MYSQL";
            this.Text = "MigracionFDB_MYSQL";
            ((System.ComponentModel.ISupportInitialize)(this.guna2PictureBox2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.guna2PictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Guna.UI2.WinForms.Guna2PictureBox guna2PictureBox1;
        private Guna.UI2.WinForms.Guna2TextBox TxtRuta;
        private System.Windows.Forms.Label label1;
        private Guna.UI2.WinForms.Guna2Button BtnExaminar;
        private Guna.UI2.WinForms.Guna2Button BtnMigrar;
        private Guna.UI2.WinForms.Guna2PictureBox guna2PictureBox2;
        private System.Windows.Forms.Label label2;
        private Guna.UI2.WinForms.Guna2Button BtnCerrar;
    }
}