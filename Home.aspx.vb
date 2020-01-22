
Partial Class Home
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            If Not Session("uname") Is Nothing Then

                SqlDataSource1.SelectCommand = "select a.*, (SELECT   TOP (1) Data FROM designImages WHERE a.id = id) AS images from ardesignMaster a"

                SqlDataSource1.DataBind()
                DataList1.DataBind()
            Else

            End If

            ' SqlDataSource3.SelectCommand = "select TOP (5) a.*,b.name, (SELECT   TOP (1) images FROM propertyImages WHERE a.id = propertyid) AS images from PropertyMaster a left join UserMaster b on a.userid=b.id WHERE propertysold = 'N' order by views desc "

            ' SqlDataSource3.DataBind()
            ' DataList3.DataBind()
        End If
    End Sub
End Class
