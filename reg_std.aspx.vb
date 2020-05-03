Imports System.Data.SqlClient
Imports System.Data
Imports System.Net.Mail

Partial Class register
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Website\Rangroot\App_Data\Database.mdf;Integrated Security=True")

    Protected Sub Page_Load(ByVal sender As Object, e As EventArgs) Handles Me.Load
        sessiongrid()
        Dim cmd As New SqlCommand("Select uni_name from uni_basic", con)
        con.Open()
        Dim sda As New SqlDataAdapter
        Dim da As New DataTable
        sda.SelectCommand = cmd
        sda.Fill(da)
        uni.DataSource = da
        'uni.DataValueField = "ID"
        uni.DataTextField = "uni_name"
        uni.DataBind()
        con.Close()
    End Sub

    Protected Sub submit_Click(sender As Object, e As EventArgs) Handles submit.Click
        Try
            Dim cmd As SqlCommand
            cmd = New SqlCommand("insert into student_registration(eno_no,u_name,name,email_id,mobile_no,university,pswd) values('" + eno.Text + "','" + uname.Text + "','" + name.Text + "','" + email.Text + "','" + mob_no.Text + "','" + uni.SelectedValue + "','" + pswd.Text + "')", con)
            Dim cmd1 As SqlCommand
            cmd1 = New SqlCommand("insert into login_std(u_name,pswd,status) values('" + email.Text + "','" + pswd.Text + "','Pending')", con)
            con.Open()
            cmd.ExecuteNonQuery()
            cmd1.ExecuteNonQuery()
            Session("uname") = email.Text
            Session("pswd") = pswd.Text


            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage
            Smtp_Server.UseDefaultCredentials = False
            Smtp_Server.Credentials = New Net.NetworkCredential("vgecit2020@gmail.com", "160170116012")
            Smtp_Server.Port = 587
            Smtp_Server.EnableSsl = True
            Smtp_Server.Host = "smtp.gmail.com"
            e_mail = New MailMessage()
            e_mail.From = New MailAddress("vgecit2020@gmail.com")
            e_mail.To.Add(email.Text)
            e_mail.Subject = "OTP FOR RANGROOT"
            e_mail.IsBodyHtml = False
            Dim rn As New Random
            Dim num As New Integer

            num = rn.Next(100000, 1000000)
            Dim query As New SqlCommand("update login_std set otp='" + num.ToString + "' where u_name='" + Session("uname") + "'", con)
            query.ExecuteNonQuery()
            e_mail.Body = "Your OTP is " + num.ToString
            Smtp_Server.Send(e_mail)
            MsgBox("Mail Sended, thank you :)")
            con.Close()
            Response.Redirect("std_activate.aspx")

        Catch ex As SqlException
            'MsgBox("Sorry! Try Again", MsgBoxStyle.SystemModal)
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
            cmd.CommandText = "select * from student_registration where email_id = '" + Session("uname") + "' and pswd = '" + Session("pswd") + "' and uid = '" + Session("uid") + "'"
            cmd.CommandType = CommandType.Text
            cmd.Connection = con
            Dim da As New SqlDataAdapter()
            da.Fill(ds)
            con.Close()

        Catch ex As Exception

            con.Close()
        End Try
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim cmd As New SqlCommand("Select * from student_registration where u_name='" + uname.Text + "'", con)
        con.Open()
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader()
        If dr.HasRows Then
            Label9.Text = "UserName Not Available"
        Else
            Label9.Text = "Username Available"
        End If
        con.Close()
    End Sub
End Class
