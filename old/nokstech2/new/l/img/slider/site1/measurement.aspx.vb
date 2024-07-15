Imports System.Data.SqlClient
Imports System.Data
Imports utility
Partial Class measurement
    Inherits System.Web.UI.Page
    Dim utl As New utility
    Dim strConntection As String = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
    Dim ObjCon As New System.Data.SqlClient.SqlConnection(strConntection)
    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Dim connection9x As SqlConnection
        Dim recordinsert9x As SqlCommand
        Dim strquery9x As String
        Dim strconn9x As String

        strconn9x = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
        connection9x = New SqlConnection(strconn9x)
        connection9x.Open()

        strquery9x = "update tbl_User_Parameter_Value set Hip='" & txt_hip.Text & "',Chest='" & txt_chee.Text & "', Body='" & txt_body.Text & "', Short_Sleeve='" & txt_shortsleeve.Text & "', Lap='" & txt_lap.Text & "', Cap='" & txt_cap.Text & "', Agbada_Sleeve='" & txt_agbadasleeve.Text & "', Round_Sleeve='" & txt_agbadasleeve.Text & "', Top_Length='" & txt_toplength.Text & "', Tourser_Length='" & txt_tourserlength.Text & "', Back='" & txt_back.Text & "', Neck='" & txt_neck.Text & "', Long_Sleeve='" & txt_longsleeve.Text & "', Waist='" & txt_waist.Text & "', Agbada_Length='" & txt_agbadalength.Text & "', Birth_Day='" & txt_birthday.Text & "', Material_Colour='" & txt_materialcolour.Text & "', Special_Note='" & txt_specialnote.Text & "' where user_name ='" & Me.nametx.Text & "' "
        recordinsert9x = New SqlCommand(strquery9x, connection9x)
        recordinsert9x.ExecuteNonQuery()
        connection9x.Close()


        ''Dim connection5q4qx1 As SqlConnection
        ''Dim recordinsert5q4qx1 As SqlCommand
        ''Dim searchrecord5q4qx1 As SqlDataReader
        ''Dim strquery5q4qx1 As String
        ''Dim strconnx1 As String

        ''strconnx1 = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
        ''connection5q4qx1 = New SqlConnection(strconnx1)

        ''connection5q4qx1.Open()

        ''strconnx1 = "delete from tbl_User_Parameter_Value where user_name ='" & Me.nametx.Text & "' "

        ''recordinsert5q4qx1 = New SqlCommand(strconnx1, connection5q4qx1)
        ''recordinsert5q4qx1.ExecuteNonQuery()
        ''recordinsert5q4qx1.CommandTimeout = 0

        ''connection5q4qx1.Close()

        ''  MsgBox(Me.txt_hip.Text)




        'Dim connection5q4qx As SqlConnection
        'Dim recordinsert5q4qx As SqlCommand
        'Dim searchrecord5q4qx As SqlDataReader
        'Dim strquery5q4qx As String
        'Dim strconnx As String

        'strconnx = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
        'connection5q4qx = New SqlConnection(strconnx)

        'connection5q4qx.Open()
        'strquery5q4qx = "insert into tbl_User_Parameter_Value (Hip,Chest,Body,user_name)values ('" & Me.txt_hip.Text & "','" & txt_chee.Text & "','" & txt_body.Text & "','" & nametx.Text & "')"

        ''Chest='" & txt_chee.Text & "', Body='" & txt_body.Text & "',
        'recordinsert5q4qx = New SqlCommand(strquery5q4qx, connection5q4qx)
        'searchrecord5q4qx = recordinsert5q4qx.ExecuteReader
        'recordinsert5q4qx.CommandTimeout = 0
        'connection5q4qx.Close()

        Response.Redirect("members.aspx")

       
    End Sub

    Protected Sub hfID_ValueChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles hfID.ValueChanged


    End Sub

    Protected Sub lnkHip_Click(ByVal sender As Object, ByVal e As EventArgs) Handles lnkHip.Click
        Retrieve("Hip")
    End Sub

    Protected Sub lnkChee_Click(sender As Object, e As EventArgs)
        Retrieve("Chest")
    End Sub

    Protected Sub lnkBody_Click(sender As Object, e As EventArgs)
        Retrieve("Body")
    End Sub

    Protected Sub lnkShortSleeve_Click(sender As Object, e As EventArgs)
        Retrieve("Short Sleeve")
    End Sub

    Protected Sub lnkLap_Click(sender As Object, e As EventArgs)
        Retrieve("Lap")
    End Sub

    Protected Sub lnkCap_Click(sender As Object, e As EventArgs)
        Retrieve("Cap")
    End Sub

    Protected Sub lnkAgbadaSleeve_Click(sender As Object, e As EventArgs)
        Retrieve("Agbada Sleeve")
    End Sub

    Protected Sub lnkRoundSleeve_Click(sender As Object, e As EventArgs)
        Retrieve("Round Sleeve")
    End Sub

    Protected Sub lnkTopLength_Click(sender As Object, e As EventArgs)
        Retrieve("Top Length")
    End Sub

    Protected Sub lnkBack_Click(sender As Object, e As EventArgs)
        Retrieve("Back")
    End Sub

    Protected Sub lnkNeck_Click(sender As Object, e As EventArgs)
        Retrieve("Neck")
    End Sub

    Protected Sub lnkLongSleeve_Click(sender As Object, e As EventArgs)
        Retrieve("Long Sleeve")
    End Sub

    Protected Sub lnkWaist_Click(sender As Object, e As EventArgs)
        Retrieve("Waist")
    End Sub

    Protected Sub lnkAgbadaLength_Click(sender As Object, e As EventArgs)
        Retrieve("Agbada Length")
    End Sub

    Protected Sub lnkBIrthDay_Click(sender As Object, e As EventArgs)
        Retrieve("Birth Day")
    End Sub

    Protected Sub lnkMaterialColour_Click(sender As Object, e As EventArgs)
        Retrieve("Material Colour")
    End Sub

    Protected Sub lnkSpecialNote_Click(ByVal sender As Object, ByVal e As EventArgs) Handles lnkSpecialNote.Click
        Retrieve("Special Note")
    End Sub

    Public Sub Retrieve(param As String)
        If System.Data.ConnectionState.Open <> ObjCon.State Then
            ObjCon.Open()
        End If
        Dim objComm As New SqlDataAdapter("Select * from tblParameter where Parameter = '" + param + "'", ObjCon)
        Dim dt As New DataTable
        objComm.Fill(dt)
        If dt.Rows.Count > 0 Then
            lblHip.Text = dt.Rows(0)("Description").ToString()
            imgHip.ImageUrl = dt.Rows(0)("ImagePath").ToString()
            '~/img/Kulpati, pantnagar.jpg
        Else
            lblHip.Text = ""
            imgHip.ImageUrl = ""
        End If




        ObjCon.Close()
        ScriptManager.RegisterStartupScript(Me, [GetType](), "Show Modal Popup", "showmodalpopup();", True)
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Page.IsPostBack Then
        Else





            If Session("userid") <> "" Then


            Else
                Response.Redirect("members.aspx")
            End If




            Dim connection9 As SqlConnection
            Dim recordinsert9 As SqlCommand
            Dim searchrecord9 As SqlDataReader
            Dim strquery9 As String
            Dim strconn9 As String

            strconn9 = System.Configuration.ConfigurationManager.ConnectionStrings("cs").ConnectionString
            connection9 = New SqlConnection(strconn9)
            connection9.Open()

            strquery9 = "select * from tbl_User_Parameter_Value where zip_code ='" & "main" & "'"

            recordinsert9 = New SqlCommand(strquery9, connection9)
            searchrecord9 = recordinsert9.ExecuteReader
            recordinsert9.CommandTimeout = 0
            If searchrecord9.Read = True Then

                If IsDBNull(searchrecord9("user_name")) Then
                Else
                    nametx.Text = searchrecord9("user_name")
                End If


                If IsDBNull(searchrecord9("Hip")) Then
                Else
                    txt_hip.Text = searchrecord9("Hip")
                End If

                If IsDBNull(searchrecord9("Chest")) Then
                Else
                    txt_chee.Text = searchrecord9("Chest")
                End If

                If IsDBNull(searchrecord9("Body")) Then
                Else
                    txt_body.Text = searchrecord9("Body")
                End If

                If IsDBNull(searchrecord9("Short_Sleeve")) Then
                Else
                    txt_shortsleeve.Text = searchrecord9("Short_Sleeve")
                End If


                If IsDBNull(searchrecord9("Lap")) Then
                Else
                    txt_lap.Text = searchrecord9("Lap")
                End If

                If IsDBNull(searchrecord9("Cap")) Then
                Else
                    txt_cap.Text = searchrecord9("Cap")
                End If

                If IsDBNull(searchrecord9("Agbada_Sleeve")) Then
                Else
                    txt_agbadasleeve.Text = searchrecord9("Agbada_Sleeve")
                End If

                If IsDBNull(searchrecord9("Round_Sleeve")) Then
                Else
                    txt_agbadasleeve.Text = searchrecord9("Round_Sleeve")
                End If

                If IsDBNull(searchrecord9("Top_Length")) Then
                Else
                    txt_toplength.Text = searchrecord9("Top_Length")
                End If

                If IsDBNull(searchrecord9("Tourser_Length")) Then
                Else
                    txt_tourserlength.Text = searchrecord9("Tourser_Length")
                End If


                If IsDBNull(searchrecord9("Back")) Then
                Else
                    txt_back.Text = searchrecord9("Back")
                End If

                If IsDBNull(searchrecord9("Neck")) Then
                Else
                    txt_neck.Text = searchrecord9("Neck")
                End If



                If IsDBNull(searchrecord9("Long_Sleeve")) Then
                Else
                    txt_longsleeve.Text = searchrecord9("Long_Sleeve")
                End If


                If IsDBNull(searchrecord9("Waist")) Then
                Else
                    txt_waist.Text = searchrecord9("Waist")
                End If

                If IsDBNull(searchrecord9("Agbada_Length")) Then
                Else
                    txt_agbadalength.Text = searchrecord9("Agbada_Length")
                End If

                If IsDBNull(searchrecord9("Birth_Day")) Then
                Else
                    txt_birthday.Text = searchrecord9("Birth_Day")
                End If

                If IsDBNull(searchrecord9("Material_Colour")) Then
                Else
                    txt_materialcolour.Text = searchrecord9("Material_Colour")
                End If

                If IsDBNull(searchrecord9("Special_Note")) Then
                Else
                    txt_specialnote.Text = searchrecord9("Special_Note")
                End If



            End If

        End If
    End Sub
End Class
