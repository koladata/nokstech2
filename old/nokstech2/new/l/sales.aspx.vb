
Imports System.Data
Imports System.Data.SqlClient

Partial Class sales
    Inherits System.Web.UI.Page
    'Protected Sub Page_Load(sender As Object, e As EventArgs)
    '    'If Not Me.IsPostBack Then
    '    '    getdata()
    '    'End If
    '    getdata()
    'End Sub

    Public Sub getdata()
        Try


            Dim constr As String = "Data Source=SQL5003.site4now.net;Initial Catalog=DB_9BB51E_thepalmscity;User Id=DB_9BB51E_thepalmscity_admin;Password=loveme12;Connection Timeout=0"
            Using con As New SqlConnection(constr)
                ''Using cmd As New SqlCommand("SELECT clientname,otherinvoicenumber,end_sales,status,total_qty,totalpayable,totalpaid,balance,subfileno,expatriates FROM arcadia_acct_invoice3 where item=1 and end_sales is null order by invoiceno desc ", con)
                Using cmd As New SqlCommand("select clientname,totalpayable,ddate,status,total_qty,otherinvoicenumber,totalpaid,balance,subfileno,description2 from Arcadia_acct_invoice3 where item ='" & "1" & "' and (end_sales is null or end_sales ='1/1/1900')  order by invoiceno desc", con)
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
            MsgBox("error code 104" & ex.Message)
        End Try
    End Sub



    Public Sub getdata2()
        Try


            Dim constr As String = "Data Source=SQL5003.site4now.net;Initial Catalog=DB_9BB51E_thepalmscity;User Id=DB_9BB51E_thepalmscity_admin;Password=loveme12;Connection Timeout=0"
            Using con As New SqlConnection(constr)
                ''Using cmd As New SqlCommand("SELECT clientname,otherinvoicenumber,end_sales,status,total_qty,totalpayable,totalpaid,balance,subfileno,expatriates FROM arcadia_acct_invoice3 where item=1 and end_sales is null order by invoiceno desc ", con)
                Using cmd As New SqlCommand("select clientname,totalpayable,ddate,status,total_qty,otherinvoicenumber,totalpaid,balance,subfileno,description2 from Arcadia_acct_invoice3 where item ='" & "1" & "' and CAST(ddate AS date) BETWEEN '" & datepicker.Text & "' AND'" & datepicker2.Text & "' order by invoiceno desc", con)
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
            MsgBox("error code 103" & ex.Message)
        End Try
    End Sub


    Public Sub totalsales()
        Try


            Dim connection3x5 As SqlConnection
            Dim recordinsert3x5 As SqlCommand
            Dim searchrecord3x5 As SqlDataReader
            Dim strquery3x5 As String
            Dim vartotalpayable As Double
            Dim vartotalpaid2 As Double
            Dim varbalance As Double

            strquery3x5 = "select * from Arcadia_acct_invoice3 where  item ='" & "1" & "' and (CAST(ddate AS date) BETWEEN '" & datepicker.Text & "' AND'" & datepicker2.Text & "')"


            connection3x5 = New SqlConnection(Class1.strconnection)
            connection3x5.Open()

            recordinsert3x5 = New SqlCommand(strquery3x5, connection3x5)
            searchrecord3x5 = recordinsert3x5.ExecuteReader
            Do While searchrecord3x5.Read
                Try


                    If IsDBNull(searchrecord3x5("totalpayable")) Then
                    Else
                        vartotalpayable = vartotalpayable + searchrecord3x5("totalpayable")
                    End If
                Catch ex As Exception

                End Try


                Try



                    If IsDBNull(searchrecord3x5("totalpaid")) Then
                    Else
                        vartotalpaid2 = vartotalpaid2 + searchrecord3x5("totalpaid")
                    End If
                Catch ex As Exception
                    '  MsgBox(ex.Message)
                End Try



                Try
                    '  MsgBox("i'm here")
                    If IsDBNull(searchrecord3x5("balance")) Then
                    Else
                        varbalance = varbalance + searchrecord3x5("balance")
                    End If

                Catch ex As Exception

                End Try

            Loop
            Me.grosstotal.Text = "Total Sales: " & (vartotalpayable).ToString("N")
            Me.totalpaid.Text = "Total Paid: " & (vartotalpaid2).ToString("N")
            Me.totaloutstanding.Text = "Total Outstanding: " & (varbalance).ToString("N")

        Catch ex As Exception
            MsgBox("Error code101" & ex.Message)
        End Try


        Try


            Dim connection3x5 As SqlConnection
            Dim recordinsert3x5 As SqlCommand
            Dim searchrecord3x5 As SqlDataReader
            Dim strquery3x5 As String
            Dim varonline As Double


            strquery3x5 = "select * from Arcadia_acct_invoice3 where  item ='" & "1" & "' and subfileno ='" & "online" & "' and (CAST(ddate AS date) BETWEEN '" & datepicker.Text & "' AND'" & datepicker2.Text & "')"


            connection3x5 = New SqlConnection(Class1.strconnection)
            connection3x5.Open()

            recordinsert3x5 = New SqlCommand(strquery3x5, connection3x5)
            searchrecord3x5 = recordinsert3x5.ExecuteReader
            Do While searchrecord3x5.Read

                Try


                    If IsDBNull(searchrecord3x5("totalpaid")) Then
                    Else
                        varonline = varonline + searchrecord3x5("totalpaid")
                    End If
                Catch ex As Exception

                End Try
            Loop
            Me.totalonline.Text = "POS & Transfer: " & (varonline).ToString("N")


        Catch ex As Exception
            MsgBox("Error code102" & ex.Message)
        End Try

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            '  getdata()
            Me.datepicker.Text = Date.Now
            Me.datepicker2.Text = Date.Now
            getdata2()
            totalsales()
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        getdata2()
        totalsales()

    End Sub




    Sub show()
        getdata2()
        totalsales()

    End Sub

    Public Function getTotal() As String
        Dim sum As String = "0"
        Dim constr As String = "Data Source=SQL5003.site4now.net;Initial Catalog=DB_9BB51E_thepalmscity;User Id=DB_9BB51E_thepalmscity_admin;Password=loveme12;Connection Timeout=0"
        Using con As New SqlConnection(constr)
            ''Using cmd As New SqlCommand("SELECT clientname,otherinvoicenumber,end_sales,status,total_qty,totalpayable,totalpaid,balance,subfileno,expatriates FROM arcadia_acct_invoice3 where item=1 and end_sales is null order by invoiceno desc ", con)

        End Using

        Return sum
    End Function

    Protected Sub gvCustomers_SelectedIndexChanged(sender As Object, e As EventArgs)
        ' MsgBox("Please stay on page")
    End Sub
End Class