<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class frmServiceCounter
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmServiceCounter))
        Me.lbcountername = New System.Windows.Forms.Label()
        Me.btnnext = New System.Windows.Forms.Button()
        Me.btntransfer = New System.Windows.Forms.Button()
        Me.btnskip = New System.Windows.Forms.Button()
        Me.btncall = New System.Windows.Forms.Button()
        Me.btnview = New System.Windows.Forms.Button()
        Me.PictureBox1 = New System.Windows.Forms.PictureBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.lbservingno = New System.Windows.Forms.Label()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.Panel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'lbcountername
        '
        Me.lbcountername.AutoSize = True
        Me.lbcountername.BackColor = System.Drawing.Color.Transparent
        Me.lbcountername.Font = New System.Drawing.Font("Arial Narrow", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbcountername.ForeColor = System.Drawing.SystemColors.ControlLightLight
        Me.lbcountername.Location = New System.Drawing.Point(67, 6)
        Me.lbcountername.Name = "lbcountername"
        Me.lbcountername.Size = New System.Drawing.Size(98, 20)
        Me.lbcountername.TabIndex = 0
        Me.lbcountername.Text = "LABORATORY"
        '
        'btnnext
        '
        Me.btnnext.BackColor = System.Drawing.Color.SteelBlue
        Me.btnnext.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.btnnext.FlatAppearance.BorderSize = 0
        Me.btnnext.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btnnext.Font = New System.Drawing.Font("Arial Narrow", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnnext.ForeColor = System.Drawing.SystemColors.ControlLightLight
        Me.btnnext.ImageAlign = System.Drawing.ContentAlignment.BottomLeft
        Me.btnnext.Location = New System.Drawing.Point(6, 68)
        Me.btnnext.Name = "btnnext"
        Me.btnnext.Size = New System.Drawing.Size(102, 61)
        Me.btnnext.TabIndex = 2
        Me.btnnext.Text = "NEXT"
        Me.btnnext.UseVisualStyleBackColor = False
        '
        'btntransfer
        '
        Me.btntransfer.BackColor = System.Drawing.Color.SteelBlue
        Me.btntransfer.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.btntransfer.FlatAppearance.BorderSize = 0
        Me.btntransfer.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btntransfer.Font = New System.Drawing.Font("Arial Narrow", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btntransfer.ForeColor = System.Drawing.SystemColors.ControlLightLight
        Me.btntransfer.Location = New System.Drawing.Point(114, 68)
        Me.btntransfer.Name = "btntransfer"
        Me.btntransfer.Size = New System.Drawing.Size(102, 61)
        Me.btntransfer.TabIndex = 3
        Me.btntransfer.Text = "TRANSFER NO."
        Me.btntransfer.UseVisualStyleBackColor = False
        '
        'btnskip
        '
        Me.btnskip.BackColor = System.Drawing.Color.SteelBlue
        Me.btnskip.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.btnskip.FlatAppearance.BorderSize = 0
        Me.btnskip.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btnskip.Font = New System.Drawing.Font("Arial Narrow", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnskip.ForeColor = System.Drawing.SystemColors.ControlLightLight
        Me.btnskip.Location = New System.Drawing.Point(6, 135)
        Me.btnskip.Name = "btnskip"
        Me.btnskip.Size = New System.Drawing.Size(102, 61)
        Me.btnskip.TabIndex = 4
        Me.btnskip.Text = "SKIP TO NEXT"
        Me.btnskip.UseVisualStyleBackColor = False
        '
        'btncall
        '
        Me.btncall.BackColor = System.Drawing.Color.SteelBlue
        Me.btncall.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.btncall.FlatAppearance.BorderSize = 0
        Me.btncall.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btncall.Font = New System.Drawing.Font("Arial Narrow", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btncall.ForeColor = System.Drawing.SystemColors.ControlLightLight
        Me.btncall.Location = New System.Drawing.Point(6, 202)
        Me.btncall.Name = "btncall"
        Me.btncall.Size = New System.Drawing.Size(102, 61)
        Me.btncall.TabIndex = 5
        Me.btncall.Text = "CALL CURRENT NO."
        Me.btncall.UseVisualStyleBackColor = False
        '
        'btnview
        '
        Me.btnview.BackColor = System.Drawing.Color.SteelBlue
        Me.btnview.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.btnview.FlatAppearance.BorderSize = 0
        Me.btnview.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btnview.Font = New System.Drawing.Font("Arial Narrow", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnview.ForeColor = System.Drawing.SystemColors.ControlLightLight
        Me.btnview.Location = New System.Drawing.Point(114, 135)
        Me.btnview.Name = "btnview"
        Me.btnview.Size = New System.Drawing.Size(102, 61)
        Me.btnview.TabIndex = 6
        Me.btnview.Text = "VIEW SKIPPED NO."
        Me.btnview.UseVisualStyleBackColor = False
        '
        'PictureBox1
        '
        Me.PictureBox1.BackgroundImage = CType(resources.GetObject("PictureBox1.BackgroundImage"), System.Drawing.Image)
        Me.PictureBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.PictureBox1.Location = New System.Drawing.Point(114, 202)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(102, 61)
        Me.PictureBox1.TabIndex = 7
        Me.PictureBox1.TabStop = False
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.BackColor = System.Drawing.Color.Transparent
        Me.Label2.Font = New System.Drawing.Font("Arial Narrow", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.ForeColor = System.Drawing.Color.DarkOrange
        Me.Label2.Location = New System.Drawing.Point(3, 36)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(106, 20)
        Me.Label2.TabIndex = 8
        Me.Label2.Text = "NOW SERVING:"
        '
        'Panel1
        '
        Me.Panel1.BackColor = System.Drawing.Color.SteelBlue
        Me.Panel1.BackgroundImage = CType(resources.GetObject("Panel1.BackgroundImage"), System.Drawing.Image)
        Me.Panel1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None
        Me.Panel1.Controls.Add(Me.lbcountername)
        Me.Panel1.Location = New System.Drawing.Point(0, 0)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(224, 33)
        Me.Panel1.TabIndex = 9
        '
        'lbservingno
        '
        Me.lbservingno.AutoSize = True
        Me.lbservingno.BackColor = System.Drawing.Color.Transparent
        Me.lbservingno.Font = New System.Drawing.Font("Arial Narrow", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbservingno.ForeColor = System.Drawing.Color.SteelBlue
        Me.lbservingno.Location = New System.Drawing.Point(109, 36)
        Me.lbservingno.Name = "lbservingno"
        Me.lbservingno.Size = New System.Drawing.Size(56, 20)
        Me.lbservingno.TabIndex = 10
        Me.lbservingno.Text = "LAB001"
        '
        'frmServiceCounter
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.SystemColors.ControlDarkDark
        Me.BackgroundImage = CType(resources.GetObject("$this.BackgroundImage"), System.Drawing.Image)
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.ClientSize = New System.Drawing.Size(223, 280)
        Me.Controls.Add(Me.lbservingno)
        Me.Controls.Add(Me.Panel1)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.PictureBox1)
        Me.Controls.Add(Me.btnview)
        Me.Controls.Add(Me.btncall)
        Me.Controls.Add(Me.btnskip)
        Me.Controls.Add(Me.btntransfer)
        Me.Controls.Add(Me.btnnext)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "frmServiceCounter"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents lbcountername As Label
    Friend WithEvents btnnext As Button
    Friend WithEvents btntransfer As Button
    Friend WithEvents btnskip As Button
    Friend WithEvents btncall As Button
    Friend WithEvents btnview As Button
    Friend WithEvents PictureBox1 As PictureBox
    Friend WithEvents Label2 As Label
    Friend WithEvents Panel1 As Panel
    Friend WithEvents lbservingno As Label
End Class
