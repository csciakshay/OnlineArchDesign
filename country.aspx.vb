Imports System.Data.SqlClient
Partial Class country
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ishit\Documents\Visual Studio 2013\WebSites\WebSite3\App_Data\Database.mdf;Integrated Security=True")



    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con.Open()
        Dim adap As New SqlCommand("select max(id) from register", con)
        
        Dim cmd As New SqlCommand("insert into country values('" & Textcountry.Text & "')", con)
        If cmd.ExecuteNonQuery() Then
            ScriptManager.RegisterStartupScript(Me, Page.GetType, "sucess", "alert('Record inserted');", True)
            re_set()
        Else
            ScriptManager.RegisterStartupScript(Me, Page.GetType, "fail", "alert('Record failed');", True)
            re_set()
        End If

    End Sub
    Sub re_set()
        Textcountry.Text = ""
    End Sub
    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        ' Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
        con.Open()
        Dim adap As New SqlDataAdapter("select *from country where id='" & DropDownList1.SelectedValue & "'", con)
        Dim dt As New Data.DataTable
        adap.Fill(dt)
        Textcountry.Text = dt.Rows(0)("country ").ToString
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If (Not Page.IsPostBack) Then


            '    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ishit\Documents\Visual Studio 2013\WebSites\WebSite1\App_Data\Database.mdf;Integrated Security=True")
            con.Open()
            Dim adap As New SqlDataAdapter("select id from country", con)
            Dim dt As New Data.DataTable
            adap.Fill(dt)
            DropDownList1.DataValueField = "id"
            DropDownList1.DataSource = dt
            DropDownList1.DataBind()
        End If
    End Sub




End Class
