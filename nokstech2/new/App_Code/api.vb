Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.Web.Script.Services
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web.Script.Serialization
Imports System.IO
Imports System.Net
Imports Newtonsoft.Json.Linq
Imports System.Data
Imports System.Data.SqlClient

' To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line.
' <System.Web.Script.Services.ScriptService()> _
<WebService(Namespace:="http://tempuri.org/")>
<WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)>
<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
<System.ComponentModel.ToolboxItem(False)>
<System.Web.Script.Services.ScriptService()>
Public Class api
    Inherits System.Web.Services.WebService

    <WebMethod()>
    <ScriptMethod(ResponseFormat:=ResponseFormat.Json)>
    Public Function getdata() As String
        Dim constr As String = "Data Source=SQL5016.site4now.net;Initial Catalog=DB_9BB51E_noksaccounting;User Id=DB_9BB51E_noksaccounting_admin;Password=loveme12;"
        Using con As New SqlConnection(constr)
            ''Using cmd As New SqlCommand("SELECT clientname,otherinvoicenumber,end_sales,status,total_qty,totalpayable,totalpaid,balance,subfileno,expatriates FROM arcadia_acct_invoice3 where item=1 and end_sales is null order by invoiceno desc ", con)
            Using cmd As New SqlCommand("SELECT clientname,otherinvoicenumber,end_sales,status,total_qty,totalpayable,totalpaid,balance,subfileno,expatriates FROM arcadia_acct_invoice3 ", con)
                Using sda As New SqlDataAdapter(cmd)
                    cmd.CommandType = CommandType.Text
                    Dim dt As New DataTable()
                    sda.Fill(dt)
                    Dim obj As oDeviceData() = New oDeviceData(0) {}
                    obj(0) = New oDeviceData()
                    obj(0).data = New JavaScriptSerializer().Serialize(TableToObject(dt)).ToString.Replace("\", "")
                    obj(0).msg = New JavaScriptSerializer().Serialize(1)
                    obj(0).status = New JavaScriptSerializer().Serialize(1)
                    Return New JavaScriptSerializer().Serialize(obj)

                End Using
            End Using
        End Using

        Return "Hello World"
    End Function
    Public Shared Function TableToObject(dt As DataTable) As List(Of Dictionary(Of String, Object))
        Dim rows As New List(Of Dictionary(Of String, Object))
        Dim row As Dictionary(Of String, Object)

        For Each dr As DataRow In dt.Rows
            row = New Dictionary(Of String, Object)
            For Each col As DataColumn In dt.Columns
                row.Add(col.ColumnName, dr(col))
            Next
            rows.Add(row)
        Next
        Return rows

    End Function
End Class
Public Class oDeviceData
    Private _status As String
    Public Property status() As String
        Get
            Return _status
        End Get
        Set(ByVal value As String)
            _status = value
        End Set
    End Property
    Private _msg As String
    Public Property msg() As String
        Get
            Return _msg
        End Get
        Set(ByVal value As String)
            _msg = value
        End Set
    End Property
    Private _data As String
    Public Property data() As String
        Get
            Return _data
        End Get
        Set(ByVal value As String)
            _data = value
        End Set
    End Property
End Class