
Imports System.Data.SqlClient
Imports System.Data

Partial Class register_admin
    Inherits System.Web.UI.Page
    Dim msg As String





    Public Sub Savein(ByVal S As Object, ByVal E As EventArgs)






        Dim connection5q4q As SqlConnection
        Dim recordinsert5q4q As SqlCommand
        Dim searchrecord5q4q As SqlDataReader
        Dim strquery5q4q As String
        Dim strconn As String

        strconn = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
        connection5q4q = New SqlConnection(StrConn)

        connection5q4q.Open()
        strquery5q4q = "insert into user_list_admin (full_name,e_mail,password)values ('" & full_name.Text & "','" & e_mail.Text & "','" & password.Text & "')"


        recordinsert5q4q = New SqlCommand(strquery5q4q, connection5q4q)
        searchrecord5q4q = recordinsert5q4q.ExecuteReader
        recordinsert5q4q.CommandTimeout = 0
        connection5q4q.Close()


        msg = "Your registration was successfully"
        Response.Write("<" & "script language=javaScript>")
        Response.Write("alert( """ & msg & """)<" & "/script>")
        Response.Redirect("members_admin.aspx")


        full_name.text = ""
        e_mail.text = ""
        password.text = ""


    End Sub

End Class
