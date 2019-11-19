<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmViewSkippedNo
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
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
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmViewSkippedNo))
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.lbcountername = New System.Windows.Forms.Label()
        Me.dgvskipped = New System.Windows.Forms.DataGridView()
        Me.btnserve = New System.Windows.Forms.Button()
        Me.Panel1.SuspendLayout()
        CType(Me.dgvskipped, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
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
        Me.Panel1.TabIndex = 10
        '
        'lbcountername
        '
        Me.lbcountername.AutoSize = True
        Me.lbcountername.BackColor = System.Drawing.Color.Transparent
        Me.lbcountername.Font = New System.Drawing.Font("Arial Narrow", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lbcountername.ForeColor = System.Drawing.SystemColors.ControlLightLight
        Me.lbcountername.Location = New System.Drawing.Point(67, 6)
        Me.lbcountername.Name = "lbcountername"
        Me.lbcountername.Size = New System.Drawing.Size(94, 20)
        Me.lbcountername.TabIndex = 0
        Me.lbcountername.Text = "SKIPPED NO."
        '
        'dgvskipped
        '
        Me.dgvskipped.BackgroundColor = System.Drawing.SystemColors.Control
        Me.dgvskipped.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgvskipped.Location = New System.Drawing.Point(12, 39)
        Me.dgvskipped.Name = "dgvskipped"
        Me.dgvskipped.Size = New System.Drawing.Size(199, 182)
        Me.dgvskipped.TabIndex = 11
        '
        'btnserve
        '
        Me.btnserve.BackColor = System.Drawing.Color.SteelBlue
        Me.btnserve.FlatAppearance.BorderSize = 0
        Me.btnserve.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btnserve.Font = New System.Drawing.Font("Arial Narrow", 9.75!, System.Drawing.FontStyle.Bold)
        Me.btnserve.ForeColor = System.Drawing.SystemColors.ControlLightLight
        Me.btnserve.Location = New System.Drawing.Point(136, 227)
        Me.btnserve.Name = "btnserve"
        Me.btnserve.Size = New System.Drawing.Size(75, 41)
        Me.btnserve.TabIndex = 12
        Me.btnserve.Text = "Serve"
        Me.btnserve.UseVisualStyleBackColor = False
        '
        'frmViewSkippedNo
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackgroundImage = CType(resources.GetObject("$this.BackgroundImage"), System.Drawing.Image)
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch
        Me.ClientSize = New System.Drawing.Size(223, 280)
        Me.Controls.Add(Me.btnserve)
        Me.Controls.Add(Me.dgvskipped)
        Me.Controls.Add(Me.Panel1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "frmViewSkippedNo"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        CType(Me.dgvskipped, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents Panel1 As Panel
    Friend WithEvents lbcountername As Label
    Friend WithEvents dgvskipped As DataGridView
    Friend WithEvents btnserve As Button
End Class
