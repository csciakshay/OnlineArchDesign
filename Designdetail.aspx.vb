Imports System.Data.SqlClient
Imports System.IO

Partial Class Designdetail
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ishit\Documents\Visual Studio 2013\WebSites\WebSite3\App_Data\Database.mdf;Integrated Security=True")
    Dim a As Integer
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            con.Open()
            Dim imgpath As String

            FileUpload1.SaveAs(Server.MapPath("~/upload" + FileUpload1.FileName))
            imgpath = "~/upload" + FileUpload1.FileName
            Dim adap As New SqlCommand("select coalesce(max(id),0) from Interior", con)

            Dim dt As New Data.DataTable()
            a = adap.ExecuteScalar()
            a += 1
            Dim cmd As New SqlCommand("insert into Interior values('" & Textname.Text & "','" & Textsize.Text & "','" & Textcolor.Text & "','" & Textprice.Text & "','" & DropDownList1.SelectedValue & "','" & Textdes.Text & "','" & imgpath & "','" & Session("id") & "') ", con)
            If cmd.ExecuteNonQuery() Then
                UploadAndSaveImages()
                ScriptManager.RegisterStartupScript(Me, Page.GetType, "sucess", "alert('Record inserted');", True)
                reset()
            Else

                ScriptManager.RegisterStartupScript(Me, Page.GetType, "fails", "alert('Insert failed!!!');", True)
                'reset()

            End If
        Catch ex As Exception
            ' Session("errorMsg") = ex.ToString
            Response.Redirect("errorPage.aspx?errorMsg=" + ex.Message.Replace("\r\n", False))
        End Try
    End Sub
    Sub reset()
        Textname.Text = ""
        Textsize.Text = ""
        Textprice.Text = ""
        Textcolor.Text = ""
        Textdes.Text = ""
        DropDownList1.SelectedValue = ""

    End Sub

    Protected Sub UploadAndSaveImages()
        If FileUpload1.HasFiles Then
            For Each postedFile As HttpPostedFile In FileUpload1.PostedFiles
                Dim filename As String = Path.GetFileName(postedFile.FileName)
                Dim contentType As String = postedFile.ContentType

                Using fs As Stream = postedFile.InputStream
                    Using br As New BinaryReader(fs)
                        Dim bytes As Byte() = br.ReadBytes(Convert.ToInt32(fs.Length))
                        FileUpload1.SaveAs(Server.MapPath("~/upload/ARImages/" + filename))
                        Dim query As String = "insert into Architectimg values (@Architectid, @img)"
                        Using cmd As New SqlCommand(query)
                            cmd.Connection = con
                            'cmd.Parameters.AddWithValue("@Id", ID)
                            cmd.Parameters.AddWithValue("@Architectid", a)

                            cmd.Parameters.AddWithValue("@img", "~/upload/ARImages/" + filename)
                            'con.Open()
                            cmd.ExecuteNonQuery()
                            ' con.Close()
                        End Using

                    End Using
                End Using
            Next

        End If
    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList2.SelectedIndexChanged
        'If (Not Page.IsPostBack) Then


        '    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ishit\Documents\Visual Studio 2013\WebSites\WebSite1\App_Data\Database.mdf;Integrated Security=True")
        Try
            Dim adap As New SqlDataAdapter("select * from Interior where id='" & DropDownList2.SelectedValue & "'", con)
            Dim dt As New Data.DataTable
            adap.Fill(dt)
            If dt.Rows.Count > 0 Then
                Textname.Text = dt.Rows(0)("InteriorName").ToString
                DropDownList1.SelectedValue = dt.Rows(0)("InteriorType").ToString
                Textprice.Text = dt.Rows(0)("Price").ToString
                Textsize.Text = dt.Rows(0)("size").ToString
                Textcolor.Text = dt.Rows(0)("Color").ToString
                Textdes.Text = dt.Rows(0)("Description").ToString
                Image1.Visible = True
                Image1.ImageUrl = dt.Rows(0)("Image").ToString

            Else
                Image1.Visible = False
                ScriptManager.RegisterStartupScript(Me, Page.GetType, "fails", "alert('Invalid !!!');", True)
            End If

        Catch ex As Exception
            ' Session("errorMsg") = ex.ToString
            Response.Redirect(" ErrorPage.aspx?errorMsg=" + ex.Message.ToString.Replace("\n\r", ""))
        End Try

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            If Session("uname") Is Nothing Then
                Response.Redirect("login2.aspx", False)
            Else
                If Not Page.IsPostBack Then
                    con.Open()
                    Dim adap As New SqlDataAdapter("select * from Design ", con)
                    Dim dt As New Data.DataTable()
                    adap.Fill(dt)
                    If dt.Rows.Count > 0 Then
                        DropDownList1.DataSource = dt
                        DropDownList1.DataTextField = "design_nm"
                        DropDownList1.DataValueField = "id"
                        DropDownList1.DataBind()
                        DropDownList1.Items.Insert(0, New ListItem("select Design", ""))
                    End If
                    Dim adap1 As New SqlDataAdapter("select id from Interior ", con)
                    Dim dt1 As New Data.DataTable()
                    adap1.Fill(dt1)
                    If dt1.Rows.Count > 0 Then
                        DropDownList2.DataSource = dt1
                        DropDownList2.DataTextField = "id"
                        DropDownList2.DataValueField = "id"
                        DropDownList2.DataBind()
                        DropDownList2.Items.Insert(0, New ListItem("select Id", ""))
                    End If
                End If
            End If

        Catch ex As Exception
            ' Session("errorMsg") = ex.ToString
            Response.Redirect("errorPage.aspx?errorMsg=" + ex.Message.Replace("\r\n", False))
        End Try
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Try
            con.Open()
            Dim imgpath As String

            FileUpload1.SaveAs(Server.MapPath("~/upload" + FileUpload1.FileName))
            imgpath = "~/upload" + FileUpload1.FileName
            Dim cmd1 As New SqlCommand("update Interior set InteriorName='" & Textname.Text & "',InteriorType='" & DropDownList1.SelectedValue & "',size='" & Textsize.Text & "',Image='" & imgpath & "',Color='" & Textcolor.Text & "',price='" & Textprice.Text & "',Description='" & Textdes.Text & "' where id=" & DropDownList2.SelectedValue & "", con)
            If cmd1.ExecuteNonQuery() Then
                UploadAndSaveImages()
                ScriptManager.RegisterStartupScript(Me, Page.GetType, "sucess", "alert('Record updated');", True)
                reset2()
            Else

                ScriptManager.RegisterStartupScript(Me, Page.GetType, "fails", "alert('Record update fails');", True)
                reset2()
            End If
        Catch ex As Exception
            ' Session("errorMsg") = ex.ToString
            Response.Redirect("errorPage.aspx?errorMsg=" + ex.Message.Replace("\r\n", False))
        End Try
    End Sub
    Sub reset2()
        Textname.Text = ""
        Textsize.Text = ""
        Textprice.Text = ""
        Textcolor.Text = ""
        Textdes.Text = ""
        DropDownList1.SelectedValue = ""
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Try
            con.Open()
            Dim cmd2 As New SqlCommand("delete from Interior where id='" & DropDownList2.SelectedValue & "'", con)
            If cmd2.ExecuteNonQuery() Then

                ScriptManager.RegisterStartupScript(Me, Page.GetType, "sucess", "alert('Record Deleted');", True)
                reset3()
            Else

                ScriptManager.RegisterStartupScript(Me, Page.GetType, "fails", "alert('Record Delete fails');", True)
                reset3()
            End If
        Catch ex As Exception
            ' Session("errorMsg") = ex.ToString
            Response.Redirect("errorPage.aspx?errorMsg=" + ex.Message)
        End Try

    End Sub
    Sub reset3()
        Textname.Text = ""
        Textsize.Text = ""
        Textprice.Text = ""
        Textcolor.Text = ""
        Textdes.Text = ""
        DropDownList1.SelectedValue = ""
    End Sub
End Class
