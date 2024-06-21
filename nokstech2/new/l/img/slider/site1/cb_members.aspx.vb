Imports System.Data
Imports System.Data.SqlClient
Partial Class cb_members
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


        strquery9 = "select * from cb_user where user_name ='" & user_name.Text & "' and password ='" & user_password.Text & "'"

        recordinsert9 = New SqlCommand(strquery9, connection9)
        searchrecord9 = recordinsert9.ExecuteReader
        recordinsert9.CommandTimeout = 0
        If searchrecord9.Read = True Then
       
            Session("userid") = searchrecord9("sn").ToString()
            Response.Redirect("cb_main.aspx?user_name=" & Trim(user_name.Text))

            'user_name.Text = ""
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

    Protected Sub btn_search_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_search.Click

    End Sub
End Class
