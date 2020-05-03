Imports System.Data.SqlClient
Imports System.Data
Imports System.IO

Partial Class reg_uni
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Website\Rangroot\App_Data\Database.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework")

    Protected Sub Page_Load(ByVal sender As Object, e As EventArgs) Handles Me.Load
        sessiongrid()

    End Sub

    Protected Sub register_Click(sender As Object, e As EventArgs) Handles register.Click

        Try
            Dim cmd As SqlCommand
            cmd = New SqlCommand("insert into uni_basic(uni_reg_id,uni_name,uni_email,care_email,pswd) values('" + u_id.Text + "','" + u_name.Text + "','" + u_email.Text + "','" + c_email.Text + "','" + pswd.Text + "')", con)

            Dim cmd1 As SqlCommand
            cmd1 = New SqlCommand("insert into uni_contact(uni_reg_id,state,city,urban_area,taluka,area,addr1,addr2,pincode,fax,tel1,tel2,website) values('" + u_id.Text + "','" + u_state.Text + "','" + u_city.SelectedValue + "','" + u_area.SelectedValue + "','" + u_taluka.Text + "','" + u_areaVillage.Text + "','" + u_address1.Text + "','" + address2.Text + "','" + pincode.Text + "','" + fax.Text + "','" + telephone1.Text + "','" + telephone2.Text + "','" + website.Text + "')", con)

            Dim cmd2 As SqlCommand
            cmd2 = New SqlCommand("insert into uni_key(uni_reg_id,main_per,main_per_desig,main_per_phone,main_per_mobile,main_per_email,con_per,con_per_desig,con_per_phone,con_per_mobile,con_per_email) values('" + u_id.Text + "','" + mainperson.Text + "','" + mainpersondesignation.Text + "','" + mainpersonphone.Text + "','" + mainpersonmobile.Text + "','" + mainpersonemail.Text + "','" + contactperson.Text + "','" + contactpersondesignation.SelectedValue + "','" + contactpersonphone.Text + "','" + contactpersonmobile.Text + "','" + contactpersonemail.Text + "')", con)

            Dim cmd3 As SqlCommand
            cmd3 = New SqlCommand("insert into login_uni(u_name,pswd)values('" + u_email.Text + "','" + pswd.Text + "')", con)

            con.Open()
            cmd.ExecuteNonQuery()
            cmd1.ExecuteNonQuery()
            cmd2.ExecuteNonQuery()
            cmd3.ExecuteNonQuery()
            Session("uname") = u_email.Text
            Session("pswd") = pswd.Text

            con.Close()


            Dim filename As String = Path.GetFileName(File.PostedFile.FileName)
            Dim fs As Stream = File.PostedFile.InputStream
            Dim br As New BinaryReader(fs)
            Dim bytes As Byte() = br.ReadBytes(fs.Length)

            Dim query As String = "insert into uni_file values (@uni_reg_id,@fname, @data)"
            Dim cmd10 As New SqlCommand(query)
            cmd10.Connection = con
            cmd10.Parameters.Add("@uni_reg_id", SqlDbType.VarChar).Value = u_id.Text
            cmd10.Parameters.Add("@fname", SqlDbType.VarChar).Value = filename
            cmd10.Parameters.Add("@data", SqlDbType.Binary).Value = bytes
            con.Open()
            cmd10.ExecuteNonQuery()
            con.Close()
        Catch ex As SqlException
            MsgBox("Sorry! Try Again", MsgBoxStyle.SystemModal)
        End Try

        Response.Redirect("uni_activate.aspx")
    End Sub

    Private Sub sessiongrid()
        Dim ds As New DataSet
        Try
            If con.State = ConnectionState.Open Then
                con.Close()
            End If
            con.Open()
            Dim cmd As New SqlCommand()
            cmd.CommandText = "select * from uni_basic where uni_email = '" + Session("uname") + "' and pswd = '" + Session("pswd") + "'"

            cmd.CommandType = CommandType.Text
            cmd.Connection = con
            Dim da As New SqlDataAdapter()
            da.Fill(ds)
            con.Close()

        Catch ex As Exception
            con.Close()
            'MsgBox("Sorry! Try Again", MsgBoxStyle.SystemModal)

        End Try
    End Sub

End Class
