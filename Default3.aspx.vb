Imports System.Data.SqlClient
Partial Class Default3
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=ReleaseSQLServer;Initial Catalog=MyReleaseDB;Integrated Security=True")

    Protected Sub Submit_Click(sender As Object, e As EventArgs) Handles Submit.Click
        con.Open()
        Dim imgpath As String
        FileUpload1.SaveAs(Server.MapPath("~/upload" + FileUpload1.FileName))
        imgpath = "~/upload" + FileUpload1.FileName
        Dim cmd As New SqlCommand("insert into register values('" & Textname.Text & "','" & Textlname.Text & "','" & Textcity.Text & "','" & Textbday.Text & "','" & Textemail.Text & "','" & FormsAuthentication.HashPasswordForStoringInConfigFile(Textpass.Text, "md5") & "')", con)
        cmd.ExecuteNonQuery()

    End Sub
End Class
