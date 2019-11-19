Public Class frmTransferNo
    Dim lst As ListViewItem
    Private Sub frmTransferNo_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ListView1.View = View.LargeIcon

        lst = ListView1.Items.Add("", 0)
        lst = ListView1.Items.Add("", 1)
        lst = ListView1.Items.Add("", 2)
        lst = ListView1.Items.Add("", 3)
        lst = ListView1.Items.Add("", 4)
        lst = ListView1.Items.Add("", 5)
        lst = ListView1.Items.Add("", 6)
        lst = ListView1.Items.Add("", 7)
        lst = ListView1.Items.Add("", 8)
        lst = ListView1.Items.Add("", 9)
        lst = ListView1.Items.Add("", 10)
    End Sub


End Class