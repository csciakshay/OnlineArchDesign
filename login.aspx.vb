Imports System.Data.SqlClient

Partial Class login
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("DefaultConnection").ConnectionString)
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim adp As New SqlDataAdapter("select * from Usermaster where name='" & txtuserName.Text & "' and password='" & Txtpassword.Text & "'", con)
        Dim dt As New Data.DataTable()
        adp.Fill(dt)
        If dt.Rows.Count > 0 Then
            Session("uname") = txtuserName.Text
            Session("userImage") = dt.Rows(0)("image").ToString
            Session("email") = dt.Rows(0)("email").ToString
            Response.Redirect("Registration.aspx")
        Else
            MsgBox("Invalid user name and password")

        End If
    End Sub
End Class
