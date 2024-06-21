Imports System.Data.SqlClient
Imports System.Data
Partial Class Default2
    Inherits System.Web.UI.Page
    Dim strConntection As String = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
    Dim ObjCon As New System.Data.SqlClient.SqlConnection(strConntection)

#Region "Clear"
    Public Sub clear()
        txtFirstName.Text = ""
        txtLastName.Text = ""
        txtAddress.Text = ""
        txtAmountPaid.Text = ""
        hfID.Value = ""
        btnSave.Text = "Save"
    End Sub
#End Region

#Region "InsertUpdateProfile"
    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        'Try
        If System.Data.ConnectionState.Open <> ObjCon.State Then
            ObjCon.Open()
        End If
        Dim objComm As New SqlCommand()
        objComm.Connection = ObjCon
        objComm.CommandText = "sp_mstProfile"
        objComm.CommandType = CommandType.StoredProcedure
        Dim ID As Integer = 0
        If hfID.Value = "" Then
            ID = -1
        Else
            ID = Convert.ToInt32(hfID.Value)
        End If
        Dim storeImagePath As String = ""
        If fuPhoto.HasFile Then
            Dim fname As String = fuPhoto.PostedFile.FileName
            Dim mapPath As String = Server.MapPath("~")
            Dim strImagePath = mapPath + "\\img\\" + fname
            fuPhoto.SaveAs(strImagePath)
            storeImagePath = "img/" + fname
            objComm.Parameters.AddWithValue("@photos", storeImagePath)
        End If
        objComm.Parameters.AddWithValue("@ID", ID)
        objComm.Parameters.AddWithValue("@firstName", txtFirstName.Text.Trim())
        objComm.Parameters.AddWithValue("@lastName", txtLastName.Text.Trim())
        objComm.Parameters.AddWithValue("@address", txtAddress.Text.Trim())
        objComm.Parameters.AddWithValue("@amountPaid", txtAmountPaid.Text.Trim())
        Dim i As Integer = Convert.ToInt32(objComm.ExecuteScalar())
        If i = -1 Then
            Response.Write("<script>alert('Record inserted successfully')</script>")
        ElseIf i = -2 Then
            Response.Write("<script>alert('Record updated successfully')</script>")
        End If

        'Catch ex As Exception
        '    ScriptManager.RegisterClientScriptBlock(Me.Page, Me.GetType(), "test", "alert('" + ex.Message + "');", True)
        'Finally
        ObjCon.Close()
        clear()
        'End Try
    End Sub
#End Region
End Class
