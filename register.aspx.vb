Imports System.Data.SqlClient
Partial Class register
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")

    Protected Sub Submit_Click(sender As Object, e As EventArgs) Handles Submit.Click
        Try
            con.Open()
            Dim imgpath As String
            Dim m As String
            If FileUpload1.HasFile Then
                FileUpload1.SaveAs(Server.MapPath("~/upload" + FileUpload1.FileName))
                imgpath = "~/upload" + FileUpload1.FileName
            Else
                imgpath = "~/upload/noImage.png"
            End If


            If Radiobtn1.Checked Then
                m = "male"
            Else
                m = "female"

                ' cmd.Connection = con
            End If
            Dim cmd As New SqlCommand("insert into register values('" & Textname.Text & "','" & Textlname.Text & "','" & Textbday.Text & "','" & DropDownList1.SelectedValue & "','" & Textcity.Text & "','" & DropDownList2.SelectedValue & "','" & DropDownList3.SelectedValue & "','" & m & "','" & Textemail.Text & "','" & FormsAuthentication.HashPasswordForStoringInConfigFile(Textpass.Text, "md5") & "','" & imgpath & "','" & Textcontact.Text & "','" & DropDownListUserType.SelectedValue & "',' Normal user ' )", con)
            ' cmd.CommandText = "RegIns"
            'MsgBox(Textname.Text)
            'cmd.Parameters.Add("@FirstName", Data.SqlDbType.VarChar).Value = Textname.Text
            'cmd.Parameters.Add("@firstName", Data.SqlDbType.VarChar).Value = Textname.Text
            'cmd.Parameters.Add("@lastName", Data.SqlDbType.VarChar).Value = Textlname.Text
            'cmd.Parameters.Add("@city", Data.SqlDbType.VarChar).Value = DropDownList1.SelectedValue
            'cmd.Parameters.Add("@birthdte", Data.SqlDbType.VarChar).Value = Textbday.Text
            'cmd.Parameters.Add("@email", Data.SqlDbType.VarChar).Value = Textemail.Text
            'cmd.Parameters.Add("@password", Data.SqlDbType.VarChar).Value = FormsAuthentication.HashPasswordForStoringInConfigFile(Textpass.Text, "md5")
            'cmd.Parameters.Add("@address", Data.SqlDbType.VarChar).Value = Textcity.Text
            'cmd.Parameters.Add("@state", Data.SqlDbType.VarChar).Value = DropDownList2.SelectedValue
            'cmd.Parameters.Add("@country", Data.SqlDbType.VarChar).Value = DropDownList3.SelectedValue
            'cmd.Parameters.Add("@contactNo", Data.SqlDbType.VarChar).Value = Textcontact.Text
            'cmd.Parameters.Add("@Image", Data.SqlDbType.VarChar).Value = imgpath
            ' cmd.Parameters.Add("@Gender", Data.SqlDbType.VarChar).Value = m

            '  cmd.Parameters.Add("@Gender", Data.SqlDbType.VarChar).Value = f

            If cmd.ExecuteNonQuery() Then
                ScriptManager.RegisterStartupScript(Me, Page.GetType, "sucess", "alert('Record inserted!!!');", True)
            Else
                ScriptManager.RegisterStartupScript(Me, Page.GetType, "fails", "alert('Insert failed!!!');", True)

            End If
        Catch ex As Exception
            ' Session("errorMsg") = ex.ToString
            Response.Redirect("errorPage.aspx?errorMsg=" + ex.Message.Replace(Environment.NewLine, ""))
        End Try
    End Sub

    
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            con.Open()

            Dim adap2 As New SqlDataAdapter("select * from country", con)
            Dim dt2 As New Data.DataTable()
            adap2.Fill(dt2)
            If dt2.Rows.Count > 0 Then
                DropDownList3.DataSource = dt2
                DropDownList3.DataTextField = "country"
                DropDownList3.DataValueField = "id"
                DropDownList3.DataBind()
                DropDownList3.Items.Insert(0, New ListItem("select country", ""))
            End If
        End If
        ' If Session("uname") Is Nothing Then
        'Response.Redirect("login2.aspx")
        ' End If

    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList2.SelectedIndexChanged
        ' If (Not Page.IsPostBack) Then
        con.Open()

        Dim adap As New SqlDataAdapter("select * from city where state=" + DropDownList2.SelectedValue + "", con)
        Dim dt As New Data.DataTable
        adap.Fill(dt)
        DropDownList1.DataValueField = "id"
        DropDownList1.DataTextField = "city"
        DropDownList1.DataSource = dt
        DropDownList1.DataBind()
        DropDownList1.Items.Insert(0, New ListItem("Select City", False))
        ' End If 
    End Sub

    Protected Sub DropDownList3_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList3.SelectedIndexChanged
        '  If (Not Page.IsPostBack) Then
        con.Open()

        Dim adap2 As New SqlDataAdapter("select * from state where country=" + DropDownList3.SelectedValue + "", con)
        Dim dt3 As New Data.DataTable
        adap2.Fill(dt3)
        DropDownList2.DataValueField = "id"
        DropDownList2.DataTextField = "state"
        DropDownList2.DataSource = dt3
        DropDownList2.DataBind()
        DropDownList2.Items.Insert(0, New ListItem("Select state", False))
        '  End If

    End Sub
End Class
