Imports System.Data.SqlClient
Imports System.Data
Partial Class Default2
    Inherits System.Web.UI.Page
    Dim strConntection As String = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
    Dim ObjCon As New System.Data.SqlClient.SqlConnection(strConntection)

#Region "Clear"
    Public Sub clear()
        txtFirstName.Text = ""
        txtlastname.Text = ""
        txtAddress.Text = ""
        txtcategory.Text = ""
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
            Dim mapPath As String = Server.MapPath("~/")
            Dim strImagePath = mapPath + "\\imagelog\\" + fname
            fuPhoto.SaveAs(strImagePath)
            storeImagePath = "imagelog/" + fname
            'objComm.Parameters.AddWithValue("@photos", storeImagePath)
        End If

        objComm.Parameters.AddWithValue("@ID", ID)
        objComm.Parameters.AddWithValue("@firstName", txtFirstName.Text.Trim())
        objComm.Parameters.AddWithValue("@lastName", txtlastname.Text.Trim())
        objComm.Parameters.AddWithValue("@address", txtAddress.Text.Trim())
        objComm.Parameters.AddWithValue("@category", txtcategory.Text.Trim())
        objComm.Parameters.AddWithValue("@amountPaid", CDec(txtAmountPaid.Text.Trim()))
        objComm.Parameters.AddWithValue("@photos", storeImagePath)
        Dim param As New SqlParameter
        param.Direction = Data.ParameterDirection.ReturnValue
        param.ParameterName = "@RETURN_VALUE"

        objComm.Parameters.Add(param)

        objComm.ExecuteNonQuery()


        Dim i As Integer = Convert.ToInt32(objComm.Parameters("@RETURN_VALUE").Value)


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

    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        Dim connection9x As SqlConnection
        Dim recordinsert9x As SqlCommand
        'Dim searchrecord9x As SqlDataReader
        Dim strquery9x As String
        Dim strconn9x As String

        strconn9x = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
        connection9x = New SqlConnection(strconn9x)
        connection9x.Open()

        strquery9x = "update tblProfile set firstname ='" & txtFirstName.Text & "',lastname ='" & txtlastname.Text & "' where  firstname ='" & firstname.Text & "' and lastname ='" & lastname.Text & "'"


        recordinsert9x = New SqlCommand(strquery9x, connection9x)
        recordinsert9x.ExecuteNonQuery()
        connection9x.Close()

        clear()
    End Sub

    Protected Sub Search_Click(sender As Object, e As EventArgs) Handles Search.Click


        Dim connection9x As SqlConnection
        Dim recordinsert9x As SqlCommand
        'Dim searchrecord9x As SqlDataReader
        Dim strquery9x As String
        Dim strconn9x As String
        Dim searchrecord3 As SqlDataReader


        strconn9x = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
        connection9x = New SqlConnection(strconn9x)
        connection9x.Open()

        strquery9x = "select * FROM tblProfile where  firstname ='" & firstname.Text & "' and lastname ='" & lastname.Text & "'"



        recordinsert9x = New SqlCommand(strquery9x, connection9x)
        searchrecord3 = recordinsert9x.ExecuteReader


        If searchrecord3.Read = True Then
            txtFirstName.Text = searchrecord3("firstname")
            txtlastname.Text = searchrecord3("lastname")
            txtAddress.Text = searchrecord3("address")
            txtcategory.Text = searchrecord3("category")
            txtAmountPaid.Text = searchrecord3("amountPaid")




        End If

    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        Dim connection1w As SqlConnection
        Dim recorddelete1w As SqlCommand
        Dim strquery1w As String

        strquery1w = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
        connection1w = New SqlConnection(strquery1w)
        connection1w.Open()



        strquery1w = "delete from tblProfile where  firstname ='" & firstname.Text & "' and lastname ='" & lastname.Text & "'"

        recorddelete1w = New SqlCommand(strquery1w, connection1w)
        recorddelete1w.ExecuteNonQuery()
        clear()
    End Sub
End Class
