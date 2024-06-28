Imports System.Data.SqlClient
Imports System.Data

Partial Class ecommerce
    Inherits System.Web.UI.Page

    Dim strConntection As String = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
    Dim ObjCon As New System.Data.SqlClient.SqlConnection(strConntection)


    Public Sub bindGrid()
        Try
            If System.Data.ConnectionState.Open <> ObjCon.State Then
                ObjCon.Open()
            End If
            Dim objComm As New SqlCommand()
            Dim objDa As New SqlDataAdapter()
            Dim dtProf As New DataTable()
            objComm.Connection = ObjCon
            objComm.CommandText = "sp_getDelProfile_Temp"
            objComm.CommandType = CommandType.StoredProcedure
            objComm.Parameters.AddWithValue("@mode", "getByCondition")
            objComm.Parameters.AddWithValue("@CategoryName", "bags")
            objDa.SelectCommand = objComm
            objDa.Fill(dtProf)
            If dtProf.Rows.Count > 0 Then
                'Dim Data As String = ""
                'For index = 0 To dtProf.Rows.Count - 1
                '    Data += "<div class=ecommercelist><a  href=ViewDetail.aspx?ID=" + dtProf.Rows(index)("ID").ToString() + ">" & "<p class=epricen>" + dtProf.Rows(index)("firstName").ToString() & " " & dtProf.Rows(index)("lastName").ToString() + "</p>"

                '    Data += "<a href=ViewDetail.aspx?ID=" + dtProf.Rows(index)("ID").ToString() + " ><img runat=server class=forimg src=" + dtProf.Rows(index)("photos").ToString() + "  /></a><div class=forad>" + dtProf.Rows(index)("address").ToString()

                '    Data += "<div class=eprice><span>&#8358;</span> " + dtProf.Rows(index)("amountPaid").ToString() + "</div>"
                '    Data += "<div class=eprice3 >Buy Now" + "</div></div></div>"

                'Next
                'divInnerData.InnerHtml = Data

                RepeaterInnerData.DataSource = dtProf
                RepeaterInnerData.DataBind()

            Else
            End If







            If System.Data.ConnectionState.Open <> ObjCon.State Then
                ObjCon.Open()
            End If
            Dim objComm2 As New SqlCommand()
            Dim objDa2 As New SqlDataAdapter()
            Dim dtProf2 As New DataTable()
            objComm2.Connection = ObjCon
            objComm2.CommandText = "sp_getDelProfile_Temp"
            objComm2.CommandType = CommandType.StoredProcedure
            objComm2.Parameters.AddWithValue("@mode", "getByCondition")
            objComm2.Parameters.AddWithValue("@CategoryName", "bags")
            objDa2.SelectCommand = objComm2
            objDa2.Fill(dtProf2)
            If dtProf2.Rows.Count > 0 Then
                Dim Data As String = ""
                For index = 0 To dtProf2.Rows.Count - 1
                    Data += "<div class=ecommercelist><a  href=ViewDetail.aspx?ID=" + dtProf2.Rows(index)("ID").ToString() + ">" & "<p class=epricen>" + dtProf2.Rows(index)("firstName").ToString() & " " & dtProf2.Rows(index)("lastName").ToString() + "</p>"

                    Data += "<a href=ViewDetail.aspx?ID=" + dtProf2.Rows(index)("ID").ToString() + " ><img runat=server class=forimg src=" + dtProf2.Rows(index)("photos").ToString() + "  /></a><div class=forad>" + dtProf2.Rows(index)("address").ToString()

                    Data += "<div class=eprice><span>&#8358;</span> " + dtProf2.Rows(index)("amountPaid").ToString() + "</div>"
                    Data += "<div class=eprice3 >Buy Now" + "</div></div></div>"

                Next
                divInnerData2.InnerHtml = Data



            Else
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

    
    
    Protected Sub RepeaterInnerData_PagePropertiesChanging(sender As Object, e As PagePropertiesChangingEventArgs) Handles RepeaterInnerData.PagePropertiesChanging
        lvDataPager1.SetPageProperties(e.StartRowIndex, e.MaximumRows, False)

        If System.Data.ConnectionState.Open <> ObjCon.State Then
            ObjCon.Open()
        End If
        Dim objComm As New SqlCommand()
        Dim objDa As New SqlDataAdapter()
        Dim dtProf As New DataTable()
        objComm.Connection = ObjCon
        objComm.CommandText = "sp_getDelProfile_Temp"
        objComm.CommandType = CommandType.StoredProcedure
        objComm.Parameters.AddWithValue("@mode", "getByCondition")
        objComm.Parameters.AddWithValue("@CategoryName", "bags")
        objDa.SelectCommand = objComm
        objDa.Fill(dtProf)
        If dtProf.Rows.Count > 0 Then
            'Dim Data As String = ""
            'For index = 0 To dtProf.Rows.Count - 1
            '    Data += "<div class=ecommercelist><a  href=ViewDetail.aspx?ID=" + dtProf.Rows(index)("ID").ToString() + ">" & "<p class=epricen>" + dtProf.Rows(index)("firstName").ToString() & " " & dtProf.Rows(index)("lastName").ToString() + "</p>"

            '    Data += "<a href=ViewDetail.aspx?ID=" + dtProf.Rows(index)("ID").ToString() + " ><img runat=server class=forimg src=" + dtProf.Rows(index)("photos").ToString() + "  /></a><div class=forad>" + dtProf.Rows(index)("address").ToString()

            '    Data += "<div class=eprice><span>&#8358;</span> " + dtProf.Rows(index)("amountPaid").ToString() + "</div>"
            '    Data += "<div class=eprice3 >Buy Now" + "</div></div></div>"

            'Next
            'divInnerData.InnerHtml = Data

            RepeaterInnerData.DataSource = dtProf
            RepeaterInnerData.DataBind()

        Else
        End If
    End Sub
End Class
