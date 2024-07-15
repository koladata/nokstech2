
Imports System.Data
Imports System.Data.SqlClient
Partial Class index
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        If Me.IsPostBack Then

        End If

    End Sub
    'Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
    '    'LISTING UNSAVED INVOICES
    '    Dim connection31 As SqlConnection
    '    Dim recordinsert31 As SqlCommand
    '    Dim searchrecord31 As SqlDataReader
    '    Dim strquery31 As String




    '    connection31 = New SqlConnection(Class1.strconnection)
    '    connection31.Open()
    '    strquery31 = "select * from password where  username = '" & username.Text & "' And password = '" & password.Text & "' "



    '    recordinsert31 = New SqlCommand(strquery31, connection31)
    '    searchrecord31 = recordinsert31.ExecuteReader
    '    recordinsert31.CommandTimeout = 0

    '    If searchrecord31.Read = True Then
    '        Response.Redirect("sales.aspx")
    '    Else

    '    End If

    'End Sub
    'Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
    '    Try

    '        If Me.password.Text = "" Then
    '        Else


    '            'LISTING UNSAVED INVOICES
    '            Dim connection31 As SqlConnection
    '            Dim recordinsert31 As SqlCommand
    '            Dim searchrecord31 As SqlDataReader
    '            Dim strquery31 As String




    '            connection31 = New SqlConnection(Class2.strconnection)
    '            connection31.Open()
    '            strquery31 = "select * from password where  username = '" & username2.Text & "' And password = '" & password2.Text & "' "



    '            recordinsert31 = New SqlCommand(strquery31, connection31)
    '            searchrecord31 = recordinsert31.ExecuteReader
    '            recordinsert31.CommandTimeout = 0

    '            If searchrecord31.Read = True Then

    '                '   MsgBox("code1")
    '                Response.Redirect("/UploadVideo.aspx")

    '            Else
    '                '  MsgBox("code2")
    '            End If


    '        End If
    '    Catch ex As Exception
    '        ' MsgBox(ex.Message)
    '    End Try
    'End Sub







    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        MsgBox("shola")
    End Sub


    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        MsgBox("new form")
    End Sub
End Class
