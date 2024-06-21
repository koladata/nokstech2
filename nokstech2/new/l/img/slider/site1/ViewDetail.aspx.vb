Imports System.Data.SqlClient
Imports System.Data

Partial Class ViewDetail
    Inherits System.Web.UI.Page
    Dim strConntection As String = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
    Dim ObjCon As New System.Data.SqlClient.SqlConnection(strConntection)

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Session("UserId") <> Nothing Then
                Dim intId As Int64 = Convert.ToInt64(Session("UserId").ToString())
                If System.Data.ConnectionState.Open <> ObjCon.State Then
                    ObjCon.Open()
                End If
                Dim objComm As New SqlCommand()
                Dim objDa As New SqlDataAdapter()
                Dim dtProfile As New DataTable()
                objComm.Connection = ObjCon
                objComm.CommandText = "sp_getDelProfile"
                objComm.CommandType = CommandType.StoredProcedure
                objComm.Parameters.AddWithValue("@mode", "gelById")
                objComm.Parameters.AddWithValue("@ID", intId)
                objDa.SelectCommand = objComm
                objDa.Fill(dtProfile)
                If dtProfile.Rows.Count > 0 Then
                    lblName.Text = dtProfile.Rows(0)("firstName").ToString() & " " & dtProfile.Rows(0)("lastName").ToString()
                    lblAmtPaid.Text = dtProfile.Rows(0)("amountPaid").ToString()
                    lblAddress.Text = dtProfile.Rows(0)("address").ToString()
                    imgProfile.ImageUrl = dtProfile.Rows(0)("photos").ToString()
                    'hfID.Value = Convert.ToString(intID)
                    'btnSave.Text = "Update"
                End If
            ElseIf Request.QueryString("ID") <> Nothing Then
                Dim intId As Int64 = Convert.ToInt64(Request.QueryString("ID").ToString())
                If System.Data.ConnectionState.Open <> ObjCon.State Then
                    ObjCon.Open()
                End If
                Dim objComm As New SqlCommand()
                Dim objDa As New SqlDataAdapter()
                Dim dtProfile As New DataTable()
                objComm.Connection = ObjCon
                objComm.CommandText = "sp_getDelProfile"
                objComm.CommandType = CommandType.StoredProcedure
                objComm.Parameters.AddWithValue("@mode", "gelById")
                objComm.Parameters.AddWithValue("@ID", intId)
                objDa.SelectCommand = objComm
                objDa.Fill(dtProfile)
                If dtProfile.Rows.Count > 0 Then
                    lblName.Text = dtProfile.Rows(0)("firstName").ToString() & " " & dtProfile.Rows(0)("lastName").ToString()
                    lblAmtPaid.Text = dtProfile.Rows(0)("amountPaid").ToString()
                    lblAddress.Text = dtProfile.Rows(0)("address").ToString()
                    imgProfile.ImageUrl = dtProfile.Rows(0)("photos").ToString()
                    'hfID.Value = Convert.ToString(intID)
                    'btnSave.Text = "Update"
                End If
            Else
                Exit Sub
            End If

            Exit Sub
        End If


    End Sub
End Class
 