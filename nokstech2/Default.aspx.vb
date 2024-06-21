Imports System.Data.SqlClient

Partial Class login
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs)



        If Me.IsPostBack Then
            autologin()

        End If

autologin()



    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click



    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click


        autologin()

    End Sub



    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click

    End Sub


    Sub autologin()

  If username2.Text = "" Then
            Exit Sub
        End If


        If password2.Text = "" Then
            Exit Sub
        End If

        'LISTING UNSAVED INVOICES
        Dim connection31 As SqlConnection
        Dim recordinsert31 As SqlCommand
        Dim searchrecord31 As SqlDataReader
        Dim strquery31 As String




        connection31 = New SqlConnection(Class1.strconnection)
        connection31.Open()
        strquery31 = "select * from password where  companyxid = '" & username2.Text & "' And username = '" & username1.Text & "'  And password = '" & password2.Text & "' "



        recordinsert31 = New SqlCommand(strquery31, connection31)
        searchrecord31 = recordinsert31.ExecuteReader
        recordinsert31.CommandTimeout = 0

        If searchrecord31.Read = True Then


            Response.Redirect("/dashboard/dashboard.html")

        Else

        End If
    End Sub
End Class
