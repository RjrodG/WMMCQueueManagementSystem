Public Class frmServiceCounter
    Private Sub frmServiceCounter_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Dim scr = Screen.FromPoint(Me.Location)
        Me.Location = New Point(scr.WorkingArea.Right - Me.Width, scr.WorkingArea.Top)
    End Sub
End Class