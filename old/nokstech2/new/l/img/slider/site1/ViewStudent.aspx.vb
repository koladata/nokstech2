Imports System.Data.SqlClient
Imports System.Data

Partial Class Default2
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
            objComm.CommandText = "sp_getDelProfile"
            objComm.CommandType = CommandType.StoredProcedure
            objComm.Parameters.AddWithValue("@mode", "get")
            objDa.SelectCommand = objComm
            objDa.Fill(dtProf)
            If dtProf.Rows.Count > 0 Then
                Dim Data As String = ""
                For index = 0 To dtProf.Rows.Count - 1
                    Data += "<div class=col-lg-3 col-md-3 col-sm-6><div class=propertyItem><div class=propertyContent><a href=ViewDetail.aspx?ID=" + dtProf.Rows(index)("ID").ToString() + " class=propertyType >" & dtProf.Rows(index)("firstName").ToString() & " " & dtProf.Rows(index)("lastName").ToString()
                    Data += "<a href=ViewDetail.aspx?ID=" + dtProf.Rows(index)("ID").ToString() + " class=propertyImgLink><img class=propertyImg height=152 style=max-width:250 runat=server src=" + dtProf.Rows(index)("photos").ToString() + "  /></a><h4>" + dtProf.Rows(index)("address").ToString() + "<br></h4>"
                    Data += "<div class=divider thin></div><p class=price>$ " + dtProf.Rows(index)("amountPaid").ToString() + "</p></div></div></div>"
                Next
                divInnerData.InnerHtml = Data
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

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        Try
            If System.Data.ConnectionState.Open <> ObjCon.State Then
                ObjCon.Open()
            End If
            Dim objComm As New SqlCommand()
            Dim objDa As New SqlDataAdapter()
            Dim dtProf As New DataTable()
            objComm.Connection = ObjCon
            objDa = New SqlDataAdapter("Select * from tblProfile where firstName LIKE '%" + txtsearch.Text + "%' OR lastName LIKE'%" + txtsearch.Text + "%' OR address LIKE'%" + txtsearch.Text + "%' OR amountPaid LIKE'%" + txtsearch.Text + "%'", ObjCon)
            objDa.Fill(dtProf)
            If dtProf.Rows.Count > 0 Then
                Dim Data As String = ""
                For index = 0 To dtProf.Rows.Count - 1
                    Data += "<div class=col-lg-3 col-md-3 col-sm-6><div class=propertyItem><div class=propertyContent><a href=ViewDetail.aspx?ID=" + dtProf.Rows(index)("ID").ToString() + " class=propertyType >" & dtProf.Rows(index)("firstName").ToString() & " " & dtProf.Rows(index)("lastName").ToString()
                    Data += "<a href=ViewDetail.aspx?ID=" + dtProf.Rows(index)("ID").ToString() + " class=propertyImgLink><img class=propertyImg height=152 style=max-width:250 runat=server src=" + dtProf.Rows(index)("photos").ToString() + "  /></a><h4>" + dtProf.Rows(index)("address").ToString() + "<br></h4>"
                    Data += "<div class=divider thin></div><p class=price>$ " + dtProf.Rows(index)("amountPaid").ToString() + "</p></div></div></div>"
                Next
                divInnerData.InnerHtml = Data
            Else
            End If
        Catch ex As Exception
            ScriptManager.RegisterClientScriptBlock(Me.Page, Me.GetType(), "test", "alert('" + ex.Message + "');", True)
        Finally
            ObjCon.Close()
        End Try
    End Sub
End Class
