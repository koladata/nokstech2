Imports System.Data.SqlClient
Imports System.Data
Imports utility
Partial Class cb_main4

    Inherits System.Web.UI.Page
  


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

            Me.user_name.Visible = False
    End Sub

    Protected Sub Login(ByVal sender As Object, ByVal e As System.EventArgs) Handles submit.Click
        Response.Redirect("cb_error.aspx")
    End Sub
End Class
