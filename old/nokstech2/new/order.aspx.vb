Imports System.Data.SqlClient
Imports System.Data

Partial Class ecommerce
    Inherits System.Web.UI.Page

    Dim strConntection As String = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
    Dim ObjCon As New System.Data.SqlClient.SqlConnection(strConntection)


    Public Sub bindGrid()
        Try

            'LISTING UNSAVED INVOICES
            Dim connection31 As SqlConnection
            Dim recordinsert31 As SqlCommand
            Dim searchrecord31 As SqlDataReader
            Dim strquery31 As String

            Dim layer1 As String
            Dim layer2 As String
            Dim layer3 As String


            connection31 = New SqlConnection(Class1.strconnection)
            connection31.Open()
            strquery31 = "select * from category "



            recordinsert31 = New SqlCommand(strquery31, connection31)
            searchrecord31 = recordinsert31.ExecuteReader
            recordinsert31.CommandTimeout = 0

            If searchrecord31.Read = True Then

                If IsDBNull(searchrecord31("layer1")) Then

                Else
                    layer1 = searchrecord31("layer1")

                    If System.Data.ConnectionState.Open <> ObjCon.State Then
                        ObjCon.Open()
                    End If
                    Dim objComm As New SqlCommand()
                    Dim objDa As New SqlDataAdapter()
                    Dim dtProf As New DataTable()
                    objComm.Connection = ObjCon
                    objComm.CommandText = "sp_getDelProfile_Temp3"
                    objComm.CommandType = CommandType.StoredProcedure
                    objComm.Parameters.AddWithValue("@mode", "getByCondition")
                    objComm.Parameters.AddWithValue("@CategoryName", layer1)
                    objDa.SelectCommand = objComm
                    objDa.Fill(dtProf)
                    If dtProf.Rows.Count > 0 Then
                        RepeaterInnerData.DataSource = dtProf
                        RepeaterInnerData.DataBind()


                    Else

                    End If
                End If


                If IsDBNull(searchrecord31("layer2")) Then

                Else
                    layer2 = searchrecord31("layer2")


                    If System.Data.ConnectionState.Open <> ObjCon.State Then
                        ObjCon.Open()
                    End If
                    Dim objComm2 As New SqlCommand()
                    Dim objDa2 As New SqlDataAdapter()
                    Dim dtProf2 As New DataTable()
                    objComm2.Connection = ObjCon
                    objComm2.CommandText = "sp_getDelProfile_Temp3"
                    objComm2.CommandType = CommandType.StoredProcedure
                    objComm2.Parameters.AddWithValue("@mode", "getByCondition")
                    objComm2.Parameters.AddWithValue("@CategoryName", layer2)
                    objDa2.SelectCommand = objComm2
                    objDa2.Fill(dtProf2)
                    If dtProf2.Rows.Count > 0 Then
                        RepeaterInnerData2.DataSource = dtProf2
                        RepeaterInnerData2.DataBind()


                    Else

                    End If
                End If


                If IsDBNull(searchrecord31("layer3")) Then

                Else
                    layer3 = searchrecord31("layer3")

                    If System.Data.ConnectionState.Open <> ObjCon.State Then
                        ObjCon.Open()
                    End If
                    Dim objComm3 As New SqlCommand()
                    Dim objDa3 As New SqlDataAdapter()
                    Dim dtProf3 As New DataTable()
                    objComm3.Connection = ObjCon
                    objComm3.CommandText = "sp_getDelProfile_Temp3"
                    objComm3.CommandType = CommandType.StoredProcedure
                    objComm3.Parameters.AddWithValue("@mode", "getByCondition")
                    objComm3.Parameters.AddWithValue("@CategoryName", layer3)
                    objDa3.SelectCommand = objComm3
                    objDa3.Fill(dtProf3)
                    If dtProf3.Rows.Count > 0 Then
                        RepeaterInnerData3.DataSource = dtProf3
                        RepeaterInnerData3.DataBind()


                    Else

                    End If
                End If














            End If
        Catch ex As Exception
            ScriptManager.RegisterClientScriptBlock(Me.Page, Me.GetType(), "test", "alert('" + ex.Message + "');", True)
        Finally
            ObjCon.Close()
        End Try
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            bindGrid()
        End If
    End Sub




End Class
