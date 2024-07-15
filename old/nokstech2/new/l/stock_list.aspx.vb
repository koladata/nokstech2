
Imports System.Data
Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page
    'Protected Sub Page_Load(sender As Object, e As EventArgs)
    '    'If Not Me.IsPostBack Then
    '    '    getdata()
    '    'End If
    '    getdata()
    'End Sub

    Public Sub getdatax7()
        Try

            Dim constr As String = "Data Source=SQL5003.site4now.net;Initial Catalog=DB_9BB51E_thepalmscity;User Id=DB_9BB51E_thepalmscity_admin;Password=loveme12;Connection Timeout=0"

            Using con As New SqlConnection(constr)
                ''Using cmd As New SqlCommand("SELECT clientname,otherinvoicenumber,end_sales,status,total_qty,totalpayable,totalpaid,balance,subfileno,expatriates FROM arcadia_acct_invoice3 where item=1 and end_sales is null order by invoiceno desc ", con)
                Using cmd As New SqlCommand("select accountid,description,raw_name,description2,price,inventory_warning_qty,inventory_qty,barcode from payroll_accountchart_accountid where accounttype ='" & "inventory" & "' order by description desc ", con)
                    Using sda As New SqlDataAdapter(cmd)
                        cmd.CommandType = CommandType.Text
                        Dim dt As New DataTable()
                        sda.Fill(dt)
                        gvCustomers.DataSource = dt
                        gvCustomers.DataBind()
                    End Using
                End Using
            End Using
        Catch ex As Exception
            MsgBox("error code 104K" & ex.Message)
        End Try
    End Sub








    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            getdatax7()
        End If
    End Sub


    Protected Sub gvCustomers_SelectedIndexChanged(sender As Object, e As EventArgs)
        ' MsgBox("Please stay on page")
    End Sub





End Class
