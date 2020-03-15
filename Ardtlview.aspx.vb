Imports System.Data.SqlClient
Imports System.Data


Partial Class Ardtlview
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            Dim files As New List(Of ListItem)()
            If Session("uname") Is Nothing Then
                Response.Redirect("login2.aspx", False)
            End If
            Dim adp1 As New SqlDataAdapter("select * from Architectimg where Archirectid = " & Request.QueryString("id") & "", con)
            Dim dt1 As New Data.DataTable()
            adp1.Fill(dt1)

            For Each row As DataRow In dt1.Rows
                ' dt = row.Item("img")
                files.Add(New ListItem(row.Item("img"), row.Item("img").ToString.Substring(2)))
            Next row
            Repeater1.DataSource = files
            Repeater1.DataBind()
            Dim adp As New SqlDataAdapter("select a.*,CONCAT(b.FirstName,' ',b.LastName) AS RegisterName, c.design_nm as Interior_type from Interior a left join register b on a.RegisterBy = b.id left join Design c on c.id=a.InteriorType where a.id=" & Request.QueryString("id") & "", con)
            Dim dt As New Data.DataTable()
            adp.Fill(dt)

            If dt.Rows.Count > 0 Then
                namelbl.Text = dt.Rows(0)("InteriorName").ToString
                pricelbl.Text = dt.Rows(0)("Price").ToString
                typelbl.Text = dt.Rows(0)("Interior_type").ToString
                colorlbl.Text = dt.Rows(0)("color").ToString
                sizelbl.Text = dt.Rows(0)("size").ToString
                deslbl.Text = dt.Rows(0)("Description").ToString
                reglbl.Text = dt.Rows(0)("RegisterName").ToString
            End If
        Catch ex As Exception
            Response.Redirect("errorPage.aspx?errorMsg=" + ex.Message.Replace("\r\n", False))
        End Try

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("Home.aspx")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim cmd As New SqlCommand("insert into Favourite values()", con)
    End Sub
End Class
