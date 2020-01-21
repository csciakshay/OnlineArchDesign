Imports System.Data.SqlClient
Imports System.IO

Partial Class DesignRegister
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("DefaultConnection").ConnectionString)
    Dim id As Integer
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            id = getID()

            Dim cmd As New SqlCommand("ARDesignIns", con)
            cmd.CommandType = Data.CommandType.StoredProcedure
            cmd.Parameters.Add("@id", Data.SqlDbType.BigInt).Value = id
            cmd.Parameters.Add("@category", Data.SqlDbType.VarChar).Value = DropDownList1.SelectedValue
            cmd.Parameters.Add("@title", Data.SqlDbType.VarChar).Value = TxtTitle.Text
            cmd.Parameters.Add("@description", Data.SqlDbType.VarChar).Value = TxtDesc.Text
            cmd.Parameters.Add("@astimate", Data.SqlDbType.Decimal).Value = TxtEstimateAmt.Text
            cmd.Parameters.Add("@designBy", Data.SqlDbType.VarChar).Value = TxtDesignBy.Text
            cmd.Parameters.Add("@publishDate", Data.SqlDbType.Date).Value = Today.ToShortDateString
            cmd.Parameters.Add("@materialUsed", Data.SqlDbType.VarChar).Value = TxtMaterialUsed.Text
            ' con.Open()

            If cmd.ExecuteNonQuery() Then
                UploadAndSaveImages()
                MsgBox("Success")
            Else
                MsgBox("Fail")
            End If

        Catch ex As Exception
            'MsgBox(ex.ToString)
            Response.Redirect("ErrorPage.aspx?errorMsg=" + ex.Message)
        Finally
            con.Close()
        End Try
    End Sub

    Private Function getID() As Integer
        con.Open()
        Dim cmd As New SqlCommand("select COALESCE(MAX(id),0) from ardesignMaster", con)
        Return cmd.ExecuteScalar() + 1

    End Function

    Protected Sub UploadAndSaveImages()
        For Each postedFile As HttpPostedFile In FileUpload1.PostedFiles
            Dim filename As String = Path.GetFileName(postedFile.FileName)
            Dim contentType As String = postedFile.ContentType
            Using fs As Stream = postedFile.InputStream
                Using br As New BinaryReader(fs)
                    Dim bytes As Byte() = br.ReadBytes(Convert.ToInt32(fs.Length))
                    FileUpload1.SaveAs(Server.MapPath("~/upload/" + filename))
                    Dim query As String = "insert into designImages values (@Id, @Name, @ContentType, @Data)"
                    Using cmd As New SqlCommand(query)
                        cmd.Connection = con
                        cmd.Parameters.AddWithValue("@Id", id)
                        cmd.Parameters.AddWithValue("@Name", filename)
                        cmd.Parameters.AddWithValue("@ContentType", contentType)
                        cmd.Parameters.AddWithValue("@Data", "~/upload/" + filename)
                        'con.Open()
                        cmd.ExecuteNonQuery()
                        ' con.Close()
                    End Using

                End Using
            End Using
        Next
    End Sub
End Class
