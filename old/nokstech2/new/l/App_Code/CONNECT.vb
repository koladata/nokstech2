
Imports Microsoft.VisualBasic
Imports System.Web.UI
Imports System.Data
Imports System.Data.SqlClient
Imports System

Public Class CONNECT
    Public con As New SqlClient.SqlConnection
    Public con_ As New SqlClient.SqlConnection
    Public Sub openconn()

        Try
            con.ConnectionString = ConfigurationManager.ConnectionStrings("cs").ToString()
            con.Open()
        Catch ex As Exception
            If (con.State <> ConnectionState.Closed) Then con.Close()
            con.ConnectionString = ConfigurationManager.ConnectionStrings("cs").ToString()
            con.Open()
        End Try
    End Sub
    Public Sub closeconn()
        If (con.State <> ConnectionState.Closed) Then con.Close()
    End Sub
    Public Function db_connect() As SqlClient.SqlConnection
        con = New SqlConnection
        con.ConnectionString = ConfigurationManager.ConnectionStrings("cs").ToString()
        con.Open()
        Return con
    End Function
    'Public Function db_connect_() As SqlClient.SqlConnection
    '    con_ = New SqlConnection
    '    con_.ConnectionString = ConfigurationManager.ConnectionStrings("cs").ToString()
    '    con_.Open()
    '    Return con_
    'End Function
    'Public Sub close_con_()
    '    If (con_.State = ConnectionState.Open) Then
    '        con_.Close()
    '    End If
    'End Sub
    Public Sub close_con()
        If (con.State = ConnectionState.Open) Then
            con.Close()
        End If
    End Sub
    Public Function getDatatable(ByVal strSQL As String) As DataTable
        Dim dt As New DataTable
        Dim da As SqlDataAdapter
        openconn()

        da = New SqlDataAdapter(strSQL, con)
        da.Fill(dt)

        Return dt
    End Function
End Class



