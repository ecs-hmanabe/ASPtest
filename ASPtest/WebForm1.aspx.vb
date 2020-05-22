Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Label1.Text = TextBox1.Text
    End Sub

    Protected Sub ButtonSerch_Click(sender As Object, e As EventArgs) Handles ButtonSerch.Click
        If TextBoxStudentID.Text = "" Then
            Exit Sub
        End If

        Dim sqlcon = New Class_SQLSERVER()
        Dim SQL As String = "SELECT * FROM Students WHERE StudentID = '" & TextBoxStudentID.Text & "';"
        sqlcon.ExecuteWithoutTransaction(SQL)
        Dim dt As DataTable = sqlcon.DataTable

        If dt.Rows.Count = 0 Then
            Exit Sub
        End If

        TextBoxFirstName.Text = dt.Rows(0).Item("FirstName").ToString
        TextBoxLastName.Text = dt.Rows(0).Item("LastName").ToString
        TextBoxFirstName.Text = dt.Rows(0).Item("FirstName").ToString
        TextBoxBirthday.Text = dt.Rows(0).Item("Birthday").ToString
        TextBoxGender.Text = dt.Rows(0).Item("Gender").ToString

    End Sub
End Class