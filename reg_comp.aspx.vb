Imports System.Data.SqlClient
Imports System.Data
Imports System.IO

Partial Class reg_comp
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\WebSite\Rangroot\App_Data\Database.mdf;Integrated Security=True")

    Protected Sub Page_Load(ByVal sender As Object, e As EventArgs) Handles Me.Load
        sessiongrid()

    End Sub

    Protected Sub submit_Click(sender As Object, e As EventArgs) Handles Submit.Click
        Try

            Dim cmd, cmd2, cmd3, cmd4 As SqlCommand
            cmd = New SqlCommand("insert into cmp_add(cmp_id,cmp_city,cmp_area,cmp_taluka,cmp_varea,cmp_add1,cmp_add2) values('" + cmp_id.Text + "','" + city.SelectedValue + "','" + urban.SelectedValue + "','" + taluka.Text + "','" + areavillage.Text + "','" + address1.Text + "','" + address1.Text + "')", con)
            cmd2 = New SqlCommand("insert into cmp_key(cmp_id,m_person,m_phone,m_email,c_person,c_phone,c_email,emp_reg_id,m_desig,m_mobile,c_desig,c_moblie,pan_no,sales_reg) values('" + cmp_id.Text + "','" + mainperson.Text + "','" + mainpersonmobile.Text + "','" + mainpersonemail.Text + "','" + contactperson.Text + "','" + contactpersonphone.Text + "','" + contactpersonemail.Text + "','" + employerregistrationno.Text + "','" + mainpersondesignation.SelectedValue + "','" + mainpersonmobile.Text + "','" + contactpersondesignation.SelectedValue + "','" + contactpersonmobile.Text + "','" + pancardno.Text + "','" + salestaxregistrationno.Text + "')", con)
            cmd3 = New SqlCommand("insert into cmp_work_details(cmp_id,cmp_category,desc_business,male_emp,female_emp,emps,nic_head) values('" + cmp_id.Text + "','" + categoryofemployer.SelectedValue + "','" + descriptionofbusiness.Text + "','" + totalmaleemployees.Text + "','" + totalfemaleemployees.Text + "','" + totalemployees.Text + "','" + nichead.SelectedValue + "')", con)
            cmd4 = New SqlCommand("insert into comp_details(cmp_id,cmp_name,cmp_pswd,cmp_email,care_email) values('" + cmp_id.Text + "','" + companyname.Text + "','" + pswd.Text + "','" + companyemail.Text + "','" + careemail.Text + "')", con)

            Dim filename As String = Path.GetFileName(File1.PostedFile.FileName)

            Dim fs As Stream = File1.PostedFile.InputStream
            Dim br As New BinaryReader(fs)
            Dim bytes As Byte() = br.ReadBytes(fs.Length)

            Dim query As String = "insert into cmp_file values (@cmp_id,@cmp_profile, @data)"
            Dim cmd5 As New SqlCommand(query)
            cmd5.Connection = con
            cmd5.Parameters.Add("@cmp_id", SqlDbType.VarChar).Value = cmp_id.Text
            cmd5.Parameters.Add("@cmp_profile", SqlDbType.VarChar).Value = filename
            cmd5.Parameters.Add("@data", SqlDbType.Binary).Value = bytes

            Dim cmd1 As SqlCommand
            cmd1 = New SqlCommand("insert into login_comp(u_name,pswd) values('" + companyemail.Text + "','" + pswd.Text + "')", con)

            con.Open()
            cmd.ExecuteNonQuery()
            cmd2.ExecuteNonQuery()
            cmd3.ExecuteNonQuery()
            cmd4.ExecuteNonQuery()
            cmd5.ExecuteNonQuery()
            cmd1.ExecuteNonQuery()

            Session("uname") = companyemail.Text
            Session("pswd") = pswd.Text
            Response.Redirect("industry_dashboard.aspx")
            con.Close()

        Catch ex As SqlException
            MsgBox("Sorry! Try Again", MsgBoxStyle.SystemModal)
        End Try

    End Sub

    Public Sub sessiongrid()
        Dim ds As New DataSet
        Try
            If con.State = ConnectionState.Open Then
                con.Close()
            End If
            con.Open()
            Dim cmd As New SqlCommand()
            cmd.CommandText = "select * from comp_details where cmp_email = '" + Session("uname") + "' and pswd = '" + Session("pswd") + "'"

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
