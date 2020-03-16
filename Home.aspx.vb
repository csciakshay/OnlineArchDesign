Imports System.Data.SqlClient
Partial Class Home
    Inherits System.Web.UI.Page
    'Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ishit\Documents\Visual Studio 2013\WebSites\WebSite3\App_Data\Database.mdf;Integrated Security=True")
    Dim con As New SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString)

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            con.Open()

            Dim adap2 As New SqlDataAdapter("select * from Design", con)
            Dim dt2 As New Data.DataTable()
            adap2.Fill(dt2)
            If dt2.Rows.Count > 0 Then
                DropDownList1.DataSource = dt2
                DropDownList1.DataTextField = "design_nm"
                DropDownList1.DataValueField = "id"
                DropDownList1.DataBind()
                DropDownList1.Items.Insert(0, New ListItem("select InteriorType", ""))
            End If
            Dim adap As New SqlDataAdapter("select CONCAT(FirstName,' ',LastName) as name,id from register where UserType= 'Architech'", con)
            Dim dt As New Data.DataTable()
            adap.Fill(dt)
            If dt.Rows.Count > 0 Then
                DropDownList2.DataSource = dt
                DropDownList2.DataTextField = "name"
                DropDownList2.DataValueField = "id"
                DropDownList2.DataBind()
                DropDownList2.Items.Insert(0, New ListItem("select ArchitectName", ""))
            End If
            DropDownList3.Items.Insert(0, New ListItem("select Price", ""))
            DropDownList3.Items.Insert(1, New ListItem("1000-5000", "1000-5000"))
            DropDownList3.Items.Insert(2, New ListItem("5000-10000", "5000-10000"))
            DropDownList3.Items.Insert(3, New ListItem("10000-15000", "10000-15000"))
            DropDownList3.Items.Insert(4, New ListItem("15000-20000", "15000-20000"))
            DropDownList3.Items.Insert(5, New ListItem("20000-25000", "20000-25000"))
            DropDownList3.Items.Insert(6, New ListItem("25000-30000", "25000-30000"))
            DropDownList3.Items.Insert(7, New ListItem("30000-35000", "30000-35000"))
            DropDownList3.Items.Insert(8, New ListItem("35000-40000", "35000-40000"))
            DropDownList3.Items.Insert(9, New ListItem("40000-45000", "40000-45000"))
            DropDownList3.Items.Insert(10, New ListItem("45000-50000", "45000-50000"))
        End If
    End Sub

    Protected Sub Submit_Click(sender As Object, e As EventArgs) Handles Submit.Click
        con.Open()
        Dim pricecondition, interiorName, InteriorType As String
        pricecondition = ""
        interiorName = ""
        InteriorType = ""
        If DropDownList1.SelectedIndex > 0 Then
            InteriorType = "and a.InteriorType like '" & DropDownList1.SelectedValue & "%'"
        End If
        If DropDownList2.SelectedIndex > 0 Then
            interiorName = "and a.RegisterBy like '" & DropDownList2.SelectedValue & "%'"
        End If
        If DropDownList3.SelectedIndex > 0 Then
            Dim price As String()
            price = DropDownList3.SelectedValue.Split("-")
            ' MsgBox(price(0))
            pricecondition = "and a.price between " & price(0) & " and " & price(1) & ""
        End If
        SqlDataSource1.SelectCommand = "SELECT a.id,a.InteriorName,a.Price,a.Description,b.design_nm,a.Image FROM Interior a left join Design b on b.id=a.InteriorType where 1=1 " + interiorName + InteriorType + pricecondition
        SqlDataSource1.DataBind()
        '        DataList1.DataSource = dt
        DataList1.DataBind()
    End Sub
End Class
