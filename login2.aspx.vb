Imports System.Data.SqlClient
Partial Class login2
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con.Open()
        Dim adap As New SqlDataAdapter("select * from register where FirstName='" & Textname.Text & "' and Password='" & FormsAuthentication.HashPasswordForStoringInConfigFile(Textpass.Text, "md5") & "'", con)
        Dim dt As New Data.DataTable
        adap.Fill(dt)
        If dt.Rows.Count > 0 Then
            Session("uname") = Textname.Text
            Session("userImage") = dt.Rows(0)("image").ToString
            Session("email") = dt.Rows(0)("email").ToString
            Session("userRole") = dt.Rows(0)("UserRole").ToString
            Session("userType") = dt.Rows(0)("UserType").ToString
            Session("id") = dt.Rows(0)("id").ToString
            ScriptManager.RegisterStartupScript(Me, Page.GetType, "sucess", "alert('Record match sucessfully');", True)
            Response.Redirect("Home.aspx", False)
        Else
            ScriptManager.RegisterStartupScript(Me, Page.GetType, "fails", "alert('Invalid user name or password!!!');", True)
            ' MsgBox("Invalid user name or password!!!")
        End If


    End Sub
End Class
