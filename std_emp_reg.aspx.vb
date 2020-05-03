Imports System.Data.SqlClient
Imports System.Data
Imports System.IO


Partial Class _Default
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\WebSite\Rangroot\App_Data\Database.mdf;Integrated Security=True")

    Protected Sub Page_Load(ByVal sender As Object, e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Session("uname") = "" Then
                Response.Redirect("home.aspx", False)
            End If
        End If
        ' sessiongrid()
    End Sub

    Protected Sub submit_Click(sender As Object, e As System.EventArgs) Handles submit.Click

        'Try
        Dim status As String = "Unemployed"
        Dim cmd, cmd1, cmd2, cmd3 As SqlCommand
        cmd = New SqlCommand("insert into emp_basic(email,surname,name,dob,emp_status,gender) values('" + txt_email.Text + "','" + txt_surname.Text + "','" + txt_fname.Text + "','" + txt_date.Text + "','" + status + "','" + r_gender.SelectedValue + "')", con)

        cmd1 = New SqlCommand("insert into emp_contact(email,city,area,addr,urban_area,tel,mobile_no,pincode) values('" + txt_email.Text + "','" + d_district.SelectedValue + "','" + l_area.Text + "','" + txt_add.Text + "','" + radio_area.SelectedValue + "','" + txt_tele.Text + "','" + txt_mob.Text + "','" + txt_pin.Text + "')", con)

        cmd2 = New SqlCommand("insert into emp_edu(email,basic_edu,detail_edu,pass_month,pass_yr,percentage,exp,special,interest,field) values('" + txt_email.Text + "','" + s_edudetails.Text + "','" + detail.Text + "','" + p_month.SelectedValue + "','" + p_year.SelectedValue + "','" + perc.Text + "','" + experience.Text + "','" + txt_spec.Text + "','" + interest.Text + "','" + p_year.SelectedValue + "')", con)

        cmd3 = New SqlCommand("insert into emp_discrim(email,s_caste,s_prior,minor,c_caste,c_cat,c_prior,s_cat) values('" + txt_email.Text + "','" + s_caste.SelectedValue + "','" + s_priority.SelectedValue + "','" + minority.SelectedValue + "','" + central_caste.SelectedValue + "','" + caste.SelectedValue + "','" + c_prior.SelectedValue + "','" + s_category.SelectedValue + "')", con)
        con.Open()
        cmd.ExecuteNonQuery()
        cmd1.ExecuteNonQuery()
        cmd2.ExecuteNonQuery()
        cmd3.ExecuteNonQuery()
        'Session("uname") = txt_email.Text
        'Session("pswd") = pswd.Text
        '  Response.Redirect("Student_dashboard.aspx")
        con.Close()
        Dim filename As String = Path.GetFileName(File1.PostedFile.FileName)
        Dim fs As Stream = File1.PostedFile.InputStream
        Dim br As New BinaryReader(fs)
        Dim bytes As Byte() = br.ReadBytes(fs.Length)

        Dim query As String = "insert into resume_file values (@email,@fname, @data)"
        Dim cmd4 As New SqlCommand(query)
        cmd4.Connection = con
        cmd4.Parameters.Add("@email", SqlDbType.VarChar).Value = txt_email.Text
        cmd4.Parameters.Add("@fname", SqlDbType.VarChar).Value = filename
        cmd4.Parameters.Add("@data", SqlDbType.Binary).Value = bytes
        con.Open()
        cmd4.ExecuteNonQuery()
        con.Close()

        'Catch ex As SqlException
        '    'MsgBox("Sorry! Try Again", MsgBoxStyle.SystemModal)
        'End Try
    End Sub

    Protected Sub std_logout_Click(sender As Object, e As EventArgs) Handles std_logout.Click
        Session.Remove("uname")
        Session.RemoveAll()
        Session.Abandon()
        Response.Redirect("home.aspx")
    End Sub
    'Private Sub sessiongrid()
    '    Dim ds As New DataSet
    '    Try
    '        If con.State = ConnectionState.Open Then
    '            con.Close()
    '        End If
    '        con.Open()
    '        Dim cmd As New SqlCommand()
    '        cmd.CommandText = "select * from emp_basic where email = '" + Session("uname") + "'"

    '        cmd.CommandType = CommandType.Text
    '        cmd.Connection = con
    '        Dim da As New SqlDataAdapter()
    '        da.Fill(ds)
    '        con.Close()

    '    Catch ex As Exception

    '        con.Close()
    '        'MsgBox("Sorry! Try Again", MsgBoxStyle.SystemModal)
    '    End Try
    'End Sub

End Class
