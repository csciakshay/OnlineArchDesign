Imports System.Data.SqlClient
Partial Class material
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ishit\Documents\Visual Studio 2013\WebSites\WebSite3\App_Data\Database.mdf;Integrated Security=True")

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con.Open()
        Dim cmd As New SqlCommand("insert into Material values('" & TextType.Text & "','" & Textsize.Text & "','" & Textprice.Text & "')", con)
        If cmd.ExecuteNonQuery() Then

            ScriptManager.RegisterStartupScript(Me, Page.GetType, "sucess", "alert('Record inserted');", True)

        Else

            ScriptManager.RegisterStartupScript(Me, Page.GetType, "fails", "alert('Insert failed!!!');", True)
            'reset()

        End If
    End Sub
End Class
