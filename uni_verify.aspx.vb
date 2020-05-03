Imports System.Data.SqlClient
Imports System.Net.Mail

Partial Class uni_verify
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\WebSite\Rangroot\App_Data\Database.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework")

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        '    If Not IsPostBack Then
        '        If Session("uname") = "" Then
        '            Response.Redirect("home.aspx", False)
        '        End If
        '    End  if 

        'Dim cmd As SqlCommand
        'cmd = New SqlCommand("SELECT uni_basic.uni_reg_id,uni_basic.uni_name,uni_basic.uni_email,uni_basic.care_email,uni_basic.pswd,uni_contact.state,uni_contact.city,uni_contact.urban_area,uni_contact.taluka,uni_contact.area,uni_contact.addr1,uni_contact.addr2,uni_contact.pincode,uni_contact.fax,uni_contact.tel1,uni_contact.tel2,uni_contact.website,uni_file.fname,uni_file.data,uni_key.main_per,uni_key.main_per_desig,uni_key.main_per_phone,uni_key.main_per_email,uni_key.con_per,uni_key.con_per_desig,uni_key.con_per_phone,uni_key.con_per_mobile,uni_key.con_per_email FROM uni_basic INNER JOIN uni_contact ON uni_basic.uni_reg_id = uni_contact.uni_reg_id INNER JOIN uni_file ON uni_basic.uni_reg_id = uni_file.uni_reg_id INNER JOIN uni_key ON uni_basic.uni_reg_id = uni_key.uni_reg_id  where uni_basic.status=pending", con)
        'con.Open()
        'Dim dr As SqlDataReader
        'dr = cmd.ExecuteReader()
        'GridView1.DataSource = dr
        'GridView1.DataBind()
        'con.Close()

    End Sub

    'Protected Sub uni_logout_Click(sender As Object, e As EventArgs) Handles uni_logout.Click
    '    Session.Remove("uname")
    '    Session.RemoveAll()
    '    Session.Abandon()
    '    Response.Redirect("home.aspx")
    'End Sub


    Protected Sub GridView1_RowCommand(sender As Object, e As GridViewCommandEventArgs)
        Dim index As Integer
        Dim row As GridViewRow
        Dim str As String
        If e.CommandName = "Accept" Then
            con.Open()
            Dim dr As SqlDataReader
            Dim index1 As Integer
            index1 = Convert.ToInt32(e.CommandArgument)
            row = GridView1.Rows(index)
            Dim cmd As New SqlCommand("select u_name from login_uni where u_name='" + row.Cells(3).Text + "'", con)
            dr = cmd.ExecuteReader()
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage
            Smtp_Server.UseDefaultCredentials = False
            Smtp_Server.Credentials = New Net.NetworkCredential("vgecit2020@gmail.com", "160170116012")
            Smtp_Server.Port = 587
            Smtp_Server.EnableSsl = True
            Smtp_Server.Host = "smtp.gmail.com"
            e_mail = New MailMessage()
            e_mail.From = New MailAddress("vgecit2020@gmail.com")
            str = row.Cells(3).Text
            e_mail.To.Add(str)
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
            'index = Convert.ToInt32(e.CommandArgument)

            'row = GridView1.Rows(index)
            'Dim cmd1 As SqlCommand
            'cmd1 = New SqlCommand("update leave set status='Accept' where uid='" + row.Cells(0).Text + "'", con)
            'con.Open()
            'cmd1.ExecuteNonQuery()
            'con.Close()

        ElseIf e.CommandName = "Reject" Then
            'index = Convert.ToInt32(e.CommandArgument)

            'row = GridView1.Rows(index)
            'Dim cmd2 As SqlCommand
            'cmd2 = New SqlCommand("update leave set status='Reject' where uid='" + row.Cells(0).Text + "'", con)
            'con.Open()
            'cmd2.ExecuteNonQuery()
            'con.Close()

            'ElseIf e.CommandName = "Delete" Then


        End If

    End Sub

End Class
