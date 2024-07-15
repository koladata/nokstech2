
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

    Public Sub getdata()
        Dim constr As String = "Data Source=SQL5016.site4now.net;Initial Catalog=DB_9BB51E_noksaccounting;User Id=DB_9BB51E_noksaccounting_admin;Password=loveme12;"
        Using con As New SqlConnection(constr)
            ''Using cmd As New SqlCommand("SELECT clientname,otherinvoicenumber,end_sales,status,total_qty,totalpayable,totalpaid,balance,subfileno,expatriates FROM arcadia_acct_invoice3 where item=1 and end_sales is null order by invoiceno desc ", con)
            Using cmd As New SqlCommand("SELECT clientname,otherinvoicenumber,end_sales,status,total_qty,totalpayable,totalpaid,balance,subfileno,expatriates FROM arcadia_acct_invoice3 ", con)
                Using sda As New SqlDataAdapter(cmd)
                    cmd.CommandType = CommandType.Text
                    Dim dt As New DataTable()
                    sda.Fill(dt)
                    gvCustomers.DataSource = dt
                    gvCustomers.DataBind()
                End Using
            End Using
        End Using
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            getdata()
        End If
    End Sub
End Class
