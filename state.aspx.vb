Imports System.Data.SqlClient
Partial Class state
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ishit\Documents\Visual Studio 2013\WebSites\WebSite3\App_Data\Database.mdf;Integrated Security=True")

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        con.Open()
        Dim adap As New SqlCommand("select max(id) from register", con)
       
        Dim cmd As New SqlCommand("insert into state values('" & Textstate.Text & "','" & DropDownList2.SelectedValue & "')", con)
        If cmd.ExecuteNonQuery() Then
            ScriptManager.RegisterStartupScript(Me, Page.GetType, "sucess", "alert('Record inserted');", True)
            reset()
        Else
            ScriptManager.RegisterStartupScript(Me, Page.GetType, "fail", "alert('Record failed');", True)
            reset()
        End If

    End Sub
    Sub reset()
        Textstate.Text = ""

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        ' Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
        con.Open()
        Dim adap As New SqlDataAdapter("select *from state where id='" & DropDownList1.SelectedValue & "'", con)
        Dim dt As New Data.DataTable
        adap.Fill(dt)
        Textstate.Text = dt.Rows(0)("state").ToString
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            '    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ishit\Documents\Visual Studio 2013\WebSites\WebSite1\App_Data\Database.mdf;Integrated Security=True")
            con.Open()
            Dim adap As New SqlDataAdapter("select id from state", con)
            Dim dt As New Data.DataTable
            adap.Fill(dt)
            DropDownList1.DataValueField = "id"
            DropDownList1.DataTextField = "id"
            DropDownList1.DataSource = dt
            DropDownList1.DataBind()
            DropDownList1.Items.Insert(0, New ListItem("Select state", False))

            Dim adap1 As New SqlDataAdapter("select * from country", con)
            Dim dt1 As New Data.DataTable
            adap1.Fill(dt1)
            DropDownList2.DataValueField = "id"
            DropDownList2.DataTextField = "country"
            DropDownList2.DataSource = dt1
            DropDownList2.DataBind()
            DropDownList2.Items.Insert(0, New ListItem("Select country", False))
        End If
    End Sub




    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim cmd As New SqlCommand("update state set='" & Textstate.Text & "'where id='" & DropDownList1.SelectedValue & "'", con)
        cmd.ExecuteNonQuery()
    End Sub
End Class
