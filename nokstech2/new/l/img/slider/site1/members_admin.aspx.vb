Imports System.Data
Imports System.Data.SqlClient
Partial Class members_admin
    Inherits System.Web.UI.Page

    Protected Sub Login(ByVal sender As Object, ByVal e As System.EventArgs) Handles submit.Click
        'If user_name.Text = "" Then
        '    msg = "Please enter Username"
        '    Response.Write("<" & "script language=javaScript>")
        '    Response.Write("alert( """ & msg & """)<" & "/script>")
        '    Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)
        '    Exit Sub
        'End If

        'If user_password.Text = "" Then
        '    msg = "Please enter password"
        '    Response.Write("<" & "script language=javaScript>")
        '    Response.Write("alert( """ & msg & """)<" & "/script>")
        '    Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)
        '    Exit Sub
        'End If




        Dim connection9 As SqlConnection
        Dim recordinsert9 As SqlCommand
        Dim searchrecord9 As SqlDataReader
        Dim strquery9 As String
        Dim strconn9 As String

        strconn9 = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
        connection9 = New SqlConnection(strconn9)
        connection9.open()


        strquery9 = "select * from user_list_admin where e_mail ='" & user_name.Text & "' and password ='" & user_password.Text & "'"

        recordinsert9 = New SqlCommand(strquery9, connection9)
        searchrecord9 = recordinsert9.ExecuteReader
        recordinsert9.CommandTimeout = 0
        If searchrecord9.Read = True Then
            'msg = "Welcome to Tootenhill"
            'Response.Write("<" & "script language=javaScript>")
            'Response.Write("alert( """ & msg & """)<" & "/script>")
            Session("userid") = searchrecord9("ID").ToString()
            Response.Redirect("admin_page.aspx?user_name=" & Trim(user_name.Text))

            user_name.Text = ""
            user_password.Text = ""
            connection9.Close()
        Else
            error_msg.InnerText = "Invalid username or password"
            'Response.Write("<" & "script language=javaScript>")
            'Response.Write("alert( """ & msg & """)<" & "/script>")
            'Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)







        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack Then
            Session("userid") = ""
        End If

    End Sub
End Class
