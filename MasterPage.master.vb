
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("userImage") Is Nothing Then
            Image1.ImageUrl = "~/upload/noImage.png"
            ImageButton1.Visible = False
            Label1.Text = ""
        Else
            ImageButton1.Visible = True
            Image1.ImageUrl = Session("userImage")
            Label1.Text = Session("uname")
        End If
    End Sub
    Public Sub logout()
        ' MsgBox("logout call")
        Session.Abandon()
        Session.Clear()
        Response.Redirect("login.aspx")
    End Sub
End Class

