Imports System.Data.SqlClient

Partial Class Registration
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("DefaultConnection").ConnectionString)

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim imgPath As String = ""
        Dim gender As String = ""
        Try
            FileUpload1.SaveAs(Server.MapPath("~/upload/" + FileUpload1.FileName))
        imgPath = "~/upload/" + FileUpload1.FileName
        If RadioButton1.Checked Then
            gender = "Male"
        Else
            gender = "Female"
        End If
        Dim cmd As New SqlCommand("UserIns", con)
        cmd.CommandType = Data.CommandType.StoredProcedure
        cmd.Parameters.Add("@name", Data.SqlDbType.VarChar).Value = txtName.Text
        cmd.Parameters.Add("@address", Data.SqlDbType.VarChar).Value = txtAddress.Text
        cmd.Parameters.Add("@city", Data.SqlDbType.VarChar).Value = ddlCity.SelectedValue
        cmd.Parameters.Add("@state", Data.SqlDbType.VarChar).Value = ddlState.SelectedValue
        cmd.Parameters.Add("@country", Data.SqlDbType.VarChar).Value = ddlCountry.SelectedValue
        cmd.Parameters.Add("@email", Data.SqlDbType.VarChar).Value = txtEmail.Text
        cmd.Parameters.Add("@phone", Data.SqlDbType.VarChar).Value = txtContact.Text
        cmd.Parameters.Add("@image", Data.SqlDbType.VarChar).Value = imgPath
            cmd.Parameters.Add("@gender", Data.SqlDbType.VarChar).Value = gender
            cmd.Parameters.Add("@password", Data.SqlDbType.VarChar).Value = txtPass.Text
        con.Open()
        If cmd.ExecuteNonQuery Then
            MsgBox("Registration Success")
                ' ScriptManager.RegisterClientScriptBlock(Me, Me.GetType(), "alertMessage", "alert('Registration Success')", True)
        Else
            MsgBox("Registration Fail")
                ' ScriptManager.RegisterClientScriptBlock(Me, Me.GetType(), "alertMessage", "alert('Registration Fail')", True)
            End If
        Catch ex As Exception
            '' ScriptManager.RegisterClientScriptBlock(Me, Me.GetType(), "alertMessage", ex.ToString, True)
        End Try
    End Sub
End Class
