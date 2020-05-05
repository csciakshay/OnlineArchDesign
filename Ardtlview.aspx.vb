﻿Imports System.Data.SqlClient
Imports System.Data
Imports System.Globalization
Imports System.IO
Imports System.Xml

Partial Class Ardtlview
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
    Dim pid As Integer
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            pid = Request.QueryString("id")
            Dim files As New List(Of ListItem)()
            If Session("uname") Is Nothing Then
                Response.Redirect("login2.aspx", False)
            End If
            Dim adp1 As New SqlDataAdapter("select * from Architectimg where Archirectid = " & Request.QueryString("id") & "", con)
            Dim dt1 As New Data.DataTable()
            adp1.Fill(dt1)

            For Each row As DataRow In dt1.Rows
                files.Add(New ListItem(row.Item("Img"), row.Item("Img").ToString.Substring(2)))
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
            Dim adp2 As New SqlDataAdapter("select * from Material where ARDesignId=" & Request.QueryString("id") & "", con)
            Dim ds As New Data.DataSet
            adp2.Fill(ds)
            GridView1.DataSource = ds.Tables(0)
            GridView1.DataBind()
        Catch ex As Exception
            ' MsgBox(ex.ToString)

            Response.Redirect("errorPage.aspx?errorMsg=" + ex.Message.Replace("\r\n", False))
        End Try

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("Home.aspx", False)
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        Try
            con.Open()
            Dim cmd As New SqlCommand("insert into Favourite values(" & Request.QueryString("id") & "," & Session("id") & ")", con)
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            Response.Redirect("errorPage.aspx?errorMsg=" + ex.Message.Replace("\r\n", False))
        Finally
            con.Close()
        End Try

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim ci As CultureInfo = New CultureInfo("en-us")
        ' getting the total cost of the cart
        Dim cost As Decimal = pricelbl.Text
        If cost = 0 Then
            Response.Redirect("~/home.aspx")
        End If

        Try
            Session("Amount") = cost.ToString(ci)

            ' creating a record about the payment request
            Dim request_id As String = CreatePaymentRequest(pid, cost)
            If request_id <> Nothing Then
                Session("request_id") = request_id.ToString
            Else
                Return
            End If

        Catch ex As Exception
            KBSoft.Carts.WriteFile("Error in ViewCart.ibPayPal_Click(): " + ex.Message)
            Response.Redirect("~/home.aspx")
        End Try

        Response.Redirect("~/PayPal.aspx")
    End Sub
    Protected Function CreatePaymentRequest(ByVal cart_id As String, ByVal cost As Decimal) As Integer

        Dim xmlFile As String = Server.MapPath("~/App_Data/PaymentRequests.xml")
        Dim doc As New XmlDocument()
        Dim ci As CultureInfo = New CultureInfo("en-us")

        Dim reader As XmlTextReader

        If File.Exists(xmlFile) Then
            reader = New XmlTextReader(xmlFile)
            reader.Read()
        Else
            KBSoft.Carts.CreateXml(xmlFile, "Requests")
            reader = New XmlTextReader(xmlFile)
            reader.Read()
        End If

        doc.Load(reader)
        reader.Close()

        ' getting a unique request identifier
        Dim nodes As XmlNodeList = doc.GetElementsByTagName("Request")
        Dim request_id As Integer
        If nodes.Count <> 0 Then
            request_id = KBSoft.Carts.GetIdentity(nodes, "request_id")
        Else
            request_id = 0
        End If

        ' creating a new element containing information about the payment request
        Dim myrequest As XmlElement = doc.CreateElement("Request")
        myrequest.SetAttribute("request_id", request_id)
        myrequest.SetAttribute("cart_id", cart_id)
        myrequest.SetAttribute("price", cost.ToString(ci))
        myrequest.SetAttribute("request_date", DateTime.Now.ToString(ci))
        doc.DocumentElement.AppendChild(myrequest)

        Try
            doc.Save(xmlFile)
        Catch ex As Exception
            KBSoft.Carts.WriteFile("Error in ViewCart.CreatePaymentRequest(): " + ex.Message)
            Return Nothing
        End Try

        Return request_id
    End Function
    Protected Function CalculateTotalAmount() As Decimal
        Dim total As Decimal = 10
        Dim ci As CultureInfo = New CultureInfo("en-us")
        Try
            'For Each row As GridViewRow In Me.gvCarts.Rows
            '    Dim price As Decimal = Decimal.Parse(row.Cells(1).Text, ci)
            '    Dim quantity As Integer = Decimal.Parse(row.Cells(2).Text, ci)
            '    total = total + (price * quantity)
            'Next
            Return total
        Catch ex As Exception
            KBSoft.Carts.WriteFile("Error in ViewCart.CalculateTotalAmount(): Input string was not in a correct format")
            Return 0
        End Try
    End Function
End Class

