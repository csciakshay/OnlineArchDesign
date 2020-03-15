Imports System.Data.SqlClient

Partial Class Design2
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ishit\Documents\Visual Studio 2013\WebSites\WebSite3\App_Data\Database.mdf;Integrated Security=True")

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            con.Open()

            Dim cmd As New SqlCommand("insert into Design values('" & Textdesign.Text & "','" & Textspe.Text & "')", con)
            If cmd.ExecuteNonQuery() Then
                MsgBox("Design added")
            Else
                MsgBox("Design fails")
            End If
        Catch ex As Exception
            ' Session("errorMsg") = ex.ToString
            Response.Redirect("errorPage.aspx?errorMsg=" + ex.Message)
        End Try
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Try
            con.Open()
            Dim cmd1 As New SqlCommand("update Design set design_nm='" & Textdesign.Text & "',Specification='" & Textspe.Text & "'where id='" & DropDownList1.SelectedValue & "'", con)
            If cmd1.ExecuteNonQuery() Then

                ScriptManager.RegisterStartupScript(Me, Page.GetType, "sucess", "alert('Record updated');", True)
            Else

                ScriptManager.RegisterStartupScript(Me, Page.GetType, "fails", "alert('Record update fails');", True)
            End If

        Catch ex As Exception
            ' Session("errorMsg") = ex.ToString
            Response.Redirect("errorPage.aspx?errorMsg=" + ex.Message)
            ' MsgBox(ex.Message)

        End Try
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Try
            con.Open()
            Dim cmd2 As New SqlCommand("delete from Interior where id='" & DropDownList1.SelectedValue & "'", con)
            If cmd2.ExecuteNonQuery() Then

                ScriptManager.RegisterStartupScript(Me, Page.GetType, "sucess", "alert('Record Deleted');", True)
            Else

                ScriptManager.RegisterStartupScript(Me, Page.GetType, "fails", "alert('Record Delete fails');", True)
            End If

        Catch ex As Exception
            ' Session("errorMsg") = ex.ToString
            Response.Redirect("errorPage.aspx?errorMsg=" + ex.Message)
        End Try
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Try
            Dim adap As New SqlDataAdapter("select * from Design where id='" & DropDownList1.SelectedValue & "'", con)
            Dim dt As New Data.DataTable
            adap.Fill(dt)
            If dt.Rows.Count > 0 Then
                Textdesign.Text = dt.Rows(0)("design_nm").ToString
                Textspe.Text = dt.Rows(0)("Specification").ToString
            Else
                ScriptManager.RegisterStartupScript(Me, Page.GetType, "fails", "alert('Invalid!!!');", True)
            End If
        Catch ex As Exception
            ' Session("errorMsg") = ex.ToString
            Response.Redirect("errorPage.aspx?errorMsg=" + ex.Message)
        End Try
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try

            If Not Page.IsPostBack Then
                con.Open()
                Dim adap1 As New SqlDataAdapter("select id from Design ", con)
                Dim dt1 As New Data.DataTable()
                adap1.Fill(dt1)
                If dt1.Rows.Count > 0 Then
                    DropDownList1.DataSource = dt1
                    DropDownList1.DataTextField = "id"
                    DropDownList1.DataValueField = "id"
                    DropDownList1.DataBind()
                    DropDownList1.Items.Insert(0, New ListItem("select Id", ""))
                End If
            End If
                Catch ex As Exception
            ' Session("errorMsg") = ex.ToString
            Response.Redirect("errorPage.aspx?errorMsg=" + ex.Message)
        End Try
    End Sub
End Class
