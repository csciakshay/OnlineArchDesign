
Partial Class ErrorPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label1.Text = Label1.Text + Request.QueryString("errorMsg")
    End Sub
End Class
