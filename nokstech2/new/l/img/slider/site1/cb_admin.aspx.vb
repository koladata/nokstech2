Imports System.Data
Imports System.Data.SqlClient
Partial Class cb_admin
    Inherits System.Web.UI.Page

    Protected Sub Login(ByVal sender As Object, ByVal e As System.EventArgs) Handles submit.Click

        If user_password.Text = "admin1x" Then
            Response.Redirect("cb_register.aspx")
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
