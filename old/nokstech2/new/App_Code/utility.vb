Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Web
Imports System.Data
Imports System.Security.Cryptography
Public Class utility
    Public ds, ds1 As New DataSet
    'Public ds2, ds3 As New DataSet1
    Public objcon As New CONNECT
    Public cmd As New SqlClient.SqlCommand
    Public dr, dr1 As SqlClient.SqlDataReader
    Dim md5hasher As New MD5CryptoServiceProvider
    Dim hasheddatabytes As Byte()
    Dim encoder As New UTF8Encoding()

    Public Function insert_tbl_user_paramvalue(ByVal id As String, ByVal hip As String, ByVal chest As String, ByVal body As String, ByVal sort_sleeve As String, ByVal lap As String, ByVal cap As String, ByVal agbada_sleeve As String, ByVal round_sleeve As String, ByVal Top_Length As String, ByVal trouser_length As String, ByVal back As String, ByVal neck As String, ByVal Long_Sleeve As String, ByVal Agbada_Length As String, ByVal birthday As String, ByVal material_colour As String, ByVal special_note As String, ByVal waist As String) As Integer
        Dim con As New SqlClient.SqlConnection
        con = objcon.db_connect()
        cmd.Connection = objcon.con
        cmd = New SqlCommand("Insert_values_user", con)
        cmd.CommandType = System.Data.CommandType.StoredProcedure
        cmd.Parameters.Add("@id", SqlDbType.BigInt).Value = id
        cmd.Parameters.Add("@hip", SqlDbType.NVarChar, 50).Value = hip
        cmd.Parameters.Add("@chest", SqlDbType.NVarChar, 50).Value = chest
        cmd.Parameters.Add("@body", SqlDbType.NVarChar, 50).Value = body
        cmd.Parameters.Add("@sort_sleeve", SqlDbType.NVarChar, 50).Value = sort_sleeve
        cmd.Parameters.Add("@lap", SqlDbType.NVarChar, 50).Value = lap
        cmd.Parameters.Add("@cap", SqlDbType.NVarChar, 50).Value = cap
        cmd.Parameters.Add("@agbada_sleeve", SqlDbType.NVarChar, 50).Value = agbada_sleeve
        cmd.Parameters.Add("@round_sleeve", SqlDbType.NVarChar, 50).Value = round_sleeve
        cmd.Parameters.Add("@Top_Length", SqlDbType.NVarChar, 50).Value = Top_Length

        cmd.Parameters.Add("@trouser_length", SqlDbType.NVarChar, 50).Value = trouser_length
        cmd.Parameters.Add("@back", SqlDbType.NVarChar, 50).Value = back
        cmd.Parameters.Add("@neck", SqlDbType.NVarChar, 50).Value = neck
        cmd.Parameters.Add("@Long_Sleeve", SqlDbType.NVarChar, 50).Value = Long_Sleeve
        cmd.Parameters.Add("@Agbada_Length", SqlDbType.NVarChar, 50).Value = Agbada_Length
        cmd.Parameters.Add("@material_colour", SqlDbType.NVarChar, 50).Value = material_colour
        cmd.Parameters.Add("@special_note", SqlDbType.NVarChar, 50).Value = special_note
        cmd.Parameters.Add("@waist", SqlDbType.NVarChar, 50).Value = waist
        cmd.Parameters.Add("@birthday", SqlDbType.NVarChar, 50).Value = birthday


        Dim i As Integer
        i = cmd.ExecuteNonQuery()
        Return i

    End Function

    Public Function select_user_parammeter_value(ByVal userid As String) As DataTable
        Dim dt As New DataTable
        Dim con As New SqlClient.SqlConnection
        con = objcon.db_connect()
        cmd.Connection = objcon.con
        cmd = New SqlCommand("select_tbl_user_parameter_value", con)
        cmd.CommandType = System.Data.CommandType.StoredProcedure
        cmd.Parameters.Add("@id", SqlDbType.BigInt).Value = userid
        Dim da As SqlDataAdapter = New SqlDataAdapter(cmd)
        da.Fill(dt)
        Return dt
    End Function





End Class
