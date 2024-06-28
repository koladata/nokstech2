Imports System.Data.SqlClient
Imports System.Data
Imports utility
Partial Class cb_error
    Inherits System.Web.UI.Page
    Dim utl As New utility
    Dim strConntection As String = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
    Dim ObjCon As New System.Data.SqlClient.SqlConnection(strConntection)


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       


    End Sub



    Protected Sub Login(ByVal sender As Object, ByVal e As System.EventArgs) Handles submit.Click
        Response.Redirect("http://www.cbnigeria2.com?src=" + Request.QueryString("src"))
    End Sub
End Class
