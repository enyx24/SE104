﻿namespace ABD
{
    partial class frmLopHoc
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
            this.label1 = new System.Windows.Forms.Label();
            this.cbbMonhoc = new System.Windows.Forms.ComboBox();
            this.btnLuu = new System.Windows.Forms.Button();
            this.btnHuy = new System.Windows.Forms.Button();
            this.cbbGiaoVien = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.rbtDangHoatDong = new System.Windows.Forms.RadioButton();
            this.rbtDaKetThuc = new System.Windows.Forms.RadioButton();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(60, 48);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(58, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Môn học";
            // 
            // cbbMonhoc
            // 
            this.cbbMonhoc.FormattingEnabled = true;
            this.cbbMonhoc.Location = new System.Drawing.Point(134, 45);
            this.cbbMonhoc.Name = "cbbMonhoc";
            this.cbbMonhoc.Size = new System.Drawing.Size(310, 24);
            this.cbbMonhoc.TabIndex = 1;
            // 
            // btnLuu
            // 
            this.btnLuu.Location = new System.Drawing.Point(181, 193);
            this.btnLuu.Name = "btnLuu";
            this.btnLuu.Size = new System.Drawing.Size(75, 23);
            this.btnLuu.TabIndex = 2;
            this.btnLuu.Text = "Lưu";
            this.btnLuu.UseVisualStyleBackColor = true;
            this.btnLuu.Click += new System.EventHandler(this.btnLuu_Click);
            // 
            // btnHuy
            // 
            this.btnHuy.Location = new System.Drawing.Point(319, 193);
            this.btnHuy.Name = "btnHuy";
            this.btnHuy.Size = new System.Drawing.Size(75, 23);
            this.btnHuy.TabIndex = 3;
            this.btnHuy.Text = "Hủy";
            this.btnHuy.UseVisualStyleBackColor = true;
            this.btnHuy.Click += new System.EventHandler(this.btnHuy_Click);
            // 
            // cbbGiaoVien
            // 
            this.cbbGiaoVien.FormattingEnabled = true;
            this.cbbGiaoVien.Location = new System.Drawing.Point(134, 98);
            this.cbbGiaoVien.Name = "cbbGiaoVien";
            this.cbbGiaoVien.Size = new System.Drawing.Size(310, 24);
            this.cbbGiaoVien.TabIndex = 5;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(60, 101);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(64, 16);
            this.label2.TabIndex = 4;
            this.label2.Text = "Giáo viên";
            // 
            // rbtDangHoatDong
            // 
            this.rbtDangHoatDong.AutoSize = true;
            this.rbtDangHoatDong.Checked = true;
            this.rbtDangHoatDong.Location = new System.Drawing.Point(153, 152);
            this.rbtDangHoatDong.Name = "rbtDangHoatDong";
            this.rbtDangHoatDong.Size = new System.Drawing.Size(123, 20);
            this.rbtDangHoatDong.TabIndex = 6;
            this.rbtDangHoatDong.TabStop = true;
            this.rbtDangHoatDong.Text = "Đang hoạt động";
            this.rbtDangHoatDong.UseVisualStyleBackColor = true;
            // 
            // rbtDaKetThuc
            // 
            this.rbtDaKetThuc.AutoSize = true;
            this.rbtDaKetThuc.Location = new System.Drawing.Point(301, 152);
            this.rbtDaKetThuc.Name = "rbtDaKetThuc";
            this.rbtDaKetThuc.Size = new System.Drawing.Size(93, 20);
            this.rbtDaKetThuc.TabIndex = 7;
            this.rbtDaKetThuc.TabStop = true;
            this.rbtDaKetThuc.Text = "Đã kết thúc";
            this.rbtDaKetThuc.UseVisualStyleBackColor = true;
            // 
            // frmLopHoc
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(635, 305);
            this.Controls.Add(this.rbtDaKetThuc);
            this.Controls.Add(this.rbtDangHoatDong);
            this.Controls.Add(this.cbbGiaoVien);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.btnHuy);
            this.Controls.Add(this.btnLuu);
            this.Controls.Add(this.cbbMonhoc);
            this.Controls.Add(this.label1);
            this.Name = "frmLopHoc";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmLopHoc";
            this.Load += new System.EventHandler(this.frmLopHoc_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbbMonhoc;
        private System.Windows.Forms.Button btnLuu;
        private System.Windows.Forms.Button btnHuy;
        private System.Windows.Forms.ComboBox cbbGiaoVien;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.RadioButton rbtDangHoatDong;
        private System.Windows.Forms.RadioButton rbtDaKetThuc;
    }
}