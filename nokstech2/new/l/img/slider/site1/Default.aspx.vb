Imports System.Data.SqlClient
Imports System.Data
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim strConntection As String = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
    Dim ObjCon As New System.Data.SqlClient.SqlConnection(strConntection)

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            bindGrid()
        End If
    End Sub
#Region "BindProfileGrid"
    Public Sub bindGrid()
        Try
            If System.Data.ConnectionState.Open <> ObjCon.State Then
                ObjCon.Open()
            End If
            Dim objComm As New SqlCommand()
            Dim objDa As New SqlDataAdapter()
            Dim dtProf As New DataTable()
            objComm.Connection = ObjCon
            objComm.CommandText = "sp_getDelProfile"
            objComm.CommandType = CommandType.StoredProcedure
            objComm.Parameters.AddWithValue("@mode", "get")
            objDa.SelectCommand = objComm
            objDa.Fill(dtProf)
            If dtProf.Rows.Count > 0 Then
                gvProfile.DataSource = dtProf
                gvProfile.DataBind()
                lblCountNo.Text = dtProf.Rows.Count
                lblTotD.Text = dtProf.Compute("sum(amountPaid)", String.Empty)
            Else
                gvProfile.DataSource = Nothing
                gvProfile.DataBind()
            End If

        Catch ex As Exception
            ScriptManager.RegisterClientScriptBlock(Me.Page, Me.GetType(), "test", "alert('" + ex.Message + "');", True)
        Finally
            ObjCon.Close()
        End Try
    End Sub
#End Region
    'Public Sub bindGrid()
    '    Try
    '        If System.Data.ConnectionState.Open <> ObjCon.State Then
    '            ObjCon.Open()
    '        End If
    '        Dim objComm As New SqlCommand()
    '        Dim objDa As New SqlDataAdapter()
    '        Dim dtProf As New DataTable()
    '        objComm.Connection = ObjCon
    '        objDa = New SqlDataAdapter("Select * from tblProfile", ObjCon)
    '        objDa.Fill(dtProf)
    '        Dim data As String
    '        data = "<table><tr><th>FirstName</th><th>LastName</th><th>Address</th><th>ID</th></tr>"
    '        Dim index As Integer = 0
    '        Do While (index < dtProf.Rows.Count)
    '            data = (data + ("<tr><td>" _
    '                        + (dtProf.Rows(index)("firstName") + "</td><td>" _
    '                        + (dtProf.Rows(index)("lastName") + "</td><td>" _
    '                        + (dtProf.Rows(index)("address") + "</td><td>" _
    '                        + (dtProf.Rows(index)("ID") + "</td></tr>"))))))
    '            index = (index + 1)
    '        Loop
    '        data += "</table>"
    '        ltListUser.Text = data


    '    Catch ex As Exception
    '        ScriptManager.RegisterClientScriptBlock(Me.Page, Me.GetType(), "test", "alert('" + ex.Message + "');", True)
    '    Finally
    '        ObjCon.Close()
    '    End Try
    'End Sub

    Protected Sub lbtnFirstName_Click(sender As Object, e As EventArgs)
        Dim lnbtn As LinkButton = DirectCast(sender, LinkButton)
        Dim intID As Integer = Convert.ToInt64(lnbtn.CommandArgument.ToString())
        Session("UserId") = intID
        Response.Redirect("ViewDetail.aspx")
    End Sub

   
    Protected Sub gvProfile_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gvProfile.SelectedIndexChanged

    End Sub
End Class
