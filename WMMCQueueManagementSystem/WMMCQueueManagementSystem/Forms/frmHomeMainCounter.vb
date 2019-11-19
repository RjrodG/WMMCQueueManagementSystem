Public Class frmHomeMainCounter
    Dim lst As ListViewItem
    Private Sub frmHomeMainCounter_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Timer1.Start()
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
    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        lbtime.Text = TimeOfDay
        lbdate.Text = Today.ToLongDateString.ToString
    End Sub

End Class