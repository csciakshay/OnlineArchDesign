Imports System.Data.SqlClient
Partial Class forgotpassword
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")



    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con.Open()
        Dim adap As New SqlDataAdapter("select * from register where FirstName='" & Textname.Text & "' and Email='" & Textmail.Text & "'", con)
        Dim dt As New Data.DataTable
        adap.Fill(dt)
        If dt.Rows.Count > 0 Then
            Dim fullUrl As String = "Hey " + dt.Rows(0)("FirstName").ToString + " your new password is : password"
            Dim smtpClient As System.Net.Mail.SmtpClient = New System.Net.Mail.SmtpClient("smtp.gmail.com", 587)

            Dim message As System.Net.Mail.MailMessage = New System.Net.Mail.MailMessage("ishitaujeniya11@gmail.com", Textmail.Text, "Online Interior Design Activation", "")
            message.IsBodyHtml = True
            message.Body = fullUrl
            smtpClient.EnableSsl = True
            smtpClient.Send(message)
            Dim cmd2 As New SqlCommand("update register set password='" + FormsAuthentication.HashPasswordForStoringInConfigFile("password", "md5") + "'", con)
            cmd2.ExecuteNonQuery()
            ScriptManager.RegisterStartupScript(Me, Page.GetType, "success", "alert('Reset link sent on " + Textmail.Text + "');", True)
            MsgBox("Reset link sent on " + Textmail.Text)
            Response.Redirect("login2.aspx")
        Else
            ScriptManager.RegisterStartupScript(Me, Page.GetType, "fails", "alert('Email " + Textmail.Text + " not registered');", True)
            'MsgBox("Email " + Textmail.Text + " not registered")

        End If
    End Sub
End Class
