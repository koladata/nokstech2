Imports System.Data.SqlClient
Imports System.Data
Imports utility
Partial Class cb_main 

    Inherits System.Web.UI.Page
    Dim utl As New utility
    Dim strConntection As String = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
    Dim ObjCon As New System.Data.SqlClient.SqlConnection(strConntection)


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("userid") <> "" Then
            user_name.Text = Session("userid")
            Me.user_name.Visible = False


        Else
            Response.Redirect("cb_members.aspx")
        End If
       

        


            Dim connection9 As SqlConnection
            Dim recordinsert9 As SqlCommand
            Dim searchrecord9 As SqlDataReader
            Dim strquery9 As String
            Dim strconn9 As String

            strconn9 = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
            connection9 = New SqlConnection(strconn9)
            connection9.Open()


            strquery9 = "select * from cb_user where sn ='" & user_name.Text & "' "


            recordinsert9 = New SqlCommand(strquery9, connection9)
            searchrecord9 = recordinsert9.ExecuteReader
            recordinsert9.CommandTimeout = 0
            If searchrecord9.Read = True Then


                full_name.Text = searchrecord9("full_name").ToString()
                address.Text = searchrecord9("address").ToString()
                zip_code.Text = searchrecord9("zip_code").ToString()
                beneficiary_bank.Text = searchrecord9("beneficiary_bank").ToString()
                account_number.Text = searchrecord9("account_number").ToString()
                gold.Text = searchrecord9("gold").ToString()
                amount.Text = searchrecord9("amount").ToString()

            End If



    End Sub



    Protected Sub Login(ByVal sender As Object, ByVal e As System.EventArgs) Handles submit.Click
        Response.Redirect("cb_main4.aspx")
    End Sub
End Class
