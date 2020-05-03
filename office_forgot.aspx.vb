Imports System.Data
Imports System.Data.SqlClient
Imports System.Net.Mail

Partial Class office_forgot
    Inherits System.Web.UI.Page

    Protected Sub submit_Click(sender As Object, e As EventArgs) Handles submit.Click
        ' Try

        Dim ds As New DataSet()
        Using con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\Rangroot\App_Data\Database.mdf;Integrated Security=True")
            con.Open()
            Dim cmd As New SqlCommand("SELECT u_name,pswd from login Where u_name= '" + email.Text + "'", con)
            Dim da As New SqlDataAdapter(cmd)
            da.Fill(ds)
            con.Close()
        End Using
        'If ds.Tables(0).Rows.Count > 0 Then
        Dim Msg As New MailMessage
        ' Sender e-mail address.
        Msg.From = New MailAddress(email.Text)
        ' Recipient e-mail address.
        Msg.[To].Add(email.Text)
        Msg.Subject = "Your Password Details"
        Msg.Body = "Hi, Please check your Login Details Your Username: " & Convert.ToString(ds.Tables(0).Rows(0)("u_name")) & "                      Your Password: " & Convert.ToString(ds.Tables(0).Rows(0)("pswd")) & ""
        Msg.IsBodyHtml = False

        ' your remote SMTP server IP.
        Dim smtp As New SmtpClient
        smtp.Host = "smtp.gmail.com"
        smtp.Port = 587
        smtp.Credentials = New System.Net.NetworkCredential("vgecit2020@gmail.com", "160170116012")
        smtp.EnableSsl = True
        smtp.Send(Msg)
        'Msg = null;
        'lbltxt.Text = "Your Password has been mailed...."
        ' Clear the textbox valuess
        email.Text = ""
        MsgBox("Mail has been sent, thank you :)")
        'Else
        'lbltxt.Text = "The Email you entered not exists."
        'End If
        'Catch ex As Exception
        '    Console.WriteLine("{0} Exception caught.", ex)
        'End Try
    End Sub
End Class

   