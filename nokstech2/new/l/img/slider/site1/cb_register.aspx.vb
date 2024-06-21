Imports System.Data
Imports System.Data.SqlClient
Partial Class members1
    Inherits System.Web.UI.Page
    Dim msg As String
   

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack Then
            Session("userid") = ""
        End If

    End Sub



End Class
