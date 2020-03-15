
Partial Class errorPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim msg As String
        msg = Request.QueryString("errorMsg")
        ' msg = Session("errorMsg").ToString

        Label1.Text = Label1.Text + " : " + msg
    End Sub
End Class
