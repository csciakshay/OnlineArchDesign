Imports System.Data.SqlClient
Imports System.Web.UI.WebControls.CheckBoxList
Partial Class costmize
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ishit\Documents\Visual Studio 2013\WebSites\WebSite3\App_Data\Database.mdf;Integrated Security=True")
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con.Open()
        Dim check As String = ""
        For Each item As ListItem In CheckBoxList1.Items
            If item.Selected Then
                check &= item.Value + ","
            End If
        Next
        Dim cmd As New SqlCommand("insert into costmize values('" & Textname.Text & "','" & Textsize.Text & "','" & Textmat.Text & "','" & Textprice.Text & "','" & check & "')", con)
        If cmd.ExecuteNonQuery() Then

            ScriptManager.RegisterStartupScript(Me, Page.GetType, "sucess", "alert('Record inserted');", True)

        Else

            ScriptManager.RegisterStartupScript(Me, Page.GetType, "fails", "alert('Insert failed!!!');", True)
            'reset()

        End If
    End Sub
End Class
