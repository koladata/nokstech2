Imports System.Data
Imports System.Data.SqlClient
Partial Class members1
    Inherits System.Web.UI.Page

    Protected Sub Login(ByVal sender As Object, ByVal e As System.EventArgs) Handles submit.Click
        Dim connection9 As SqlConnection
        Dim recordinsert9 As SqlCommand
        Dim searchrecord9 As SqlDataReader
        Dim strquery9 As String
        Dim strconn9 As String

        strconn9 = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
        connection9 = New SqlConnection(strconn9)
        connection9.open()

        strquery9 = "select * from user_list where e_mail ='" & user_name.Text & "' and password ='" & user_password.Text & "'"

        recordinsert9 = New SqlCommand(strquery9, connection9)
        searchrecord9 = recordinsert9.ExecuteReader
        recordinsert9.CommandTimeout = 0
        If searchrecord9.Read = True Then


            Dim connection9x As SqlConnection
            Dim recordinsert9x As SqlCommand
            'Dim searchrecord9x As SqlDataReader
            Dim strquery9x As String
            Dim strconn9x As String

            strconn9x = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
            connection9x = New SqlConnection(strconn9x)
            connection9x.Open()

            strquery9x = "update tbl_User_Parameter_Value set zip_code ='" & "last" & "' where zip_code ='" & "main" & "'"


            recordinsert9x = New SqlCommand(strquery9x, connection9x)
            recordinsert9x.ExecuteNonQuery()
            connection9x.Close()



            Dim connection9xv As SqlConnection
            Dim recordinsert9xv As SqlCommand
            'Dim searchrecord9x As SqlDataReader
            Dim strquery9xv As String
            Dim strconn9xv As String

            strconn9xv = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
            connection9xv = New SqlConnection(strconn9xv)
            connection9xv.Open()

            strquery9xv = "update tbl_User_Parameter_Value set zip_code ='" & "main" & "' where user_name ='" & Me.user_name.Text & "'"


            recordinsert9xv = New SqlCommand(strquery9xv, connection9xv)
            recordinsert9xv.ExecuteNonQuery()
            connection9xv.Close()


            Session("userid") = searchrecord9("ID").ToString()
            Response.Redirect("measurement.aspx?user_name=" & Trim(user_name.Text))
            ' Response.Redirect("measurement.aspx")






            user_name.Text = ""
            user_password.Text = ""
            connection9.Close()
        Else
            error_msg.InnerText = "Invalid username or password"
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack Then
            Session("userid") = ""
        End If

    End Sub
End Class
