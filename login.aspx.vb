Imports System.Data.SqlClient
Partial Class Default2
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        '  Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
        con.Open()

        Dim adap As New SqlCommand("select max(id) from register", con)
        Dim a As Integer
        Dim dt As New Data.DataTable()
        a = adap.ExecuteScalar()
        a += 1
        'adap.fill(dt)
        If dt.Rows.Count > 0 Then
            Session("uname") = TextBox1.Text
            Session("userImage") = dt.Rows(0)("image").ToString
            Session("email") = dt.Rows(0)("email").ToString
            Response.Redirect("register.aspx")
        Else
            MsgBox("Invalid user name and password")

        End If
        Dim cmd As New SqlCommand("insert into register values('" & a & "','" & TextBox1.Text & "','" & FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox2.Text, "md5") & "')", con)
        cmd.ExecuteNonQuery()

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        ' Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
        con.Open()
        Dim adap As New SqlDataAdapter("select *from register where id='" & DropDownList1.SelectedValue & "'", con)
        Dim dt As New Data.DataTable
        adap.Fill(dt)
        TextBox1.Text = dt.Rows(0)("First Name ").ToString
        TextBox2.Text = dt.Rows(0)("Password").ToString
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If (Not Page.IsPostBack) Then


            '    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ishit\Documents\Visual Studio 2013\WebSites\WebSite1\App_Data\Database.mdf;Integrated Security=True")
            con.Open()
            Dim adap As New SqlDataAdapter("select id from register", con)
            Dim dt As New Data.DataTable
            adap.Fill(dt)
            DropDownList1.DataValueField = "id"
            DropDownList1.DataSource = dt
            DropDownList1.DataBind()
        End If
    End Sub




End Class
