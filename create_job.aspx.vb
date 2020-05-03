Imports System.Net.Mail
Imports System.Data.SqlClient
Imports System.Data

Partial Class create_job
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim ds As New DataSet()
        Using con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\WebSite\Rangroot\App_Data\Database.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework")
            con.Open()
            con.Close()
        End Using
        For Each row As GridViewRow In GridView1.Rows
            If row.RowType = DataControlRowType.DataRow Then
                If (TryCast(row.FindControl("CheckBox1"), CheckBox)).Checked Then
                    Dim email As String = row.Cells(2).Text
                    Dim mail As MailMessage = New MailMessage()
                    mail.[To].Add(email)
                    mail.From = New MailAddress("convorangroot.gh05@gmail.com")
                    mail.Subject = "JOB REQUIREMENT"
                    mail.Body = msg.Text
                    mail.IsBodyHtml = False
                    Dim smtp As SmtpClient = New SmtpClient()
                    smtp.Host = "smtp.gmail.com"
                    smtp.Credentials = New System.Net.NetworkCredential("convorangroot.gh05@gmail.com", "vgecit_gh05")
                    smtp.EnableSsl = True
                    smtp.Port = 587
                    smtp.Send(mail)
                    MsgBox("Mail has been sent, thank you :)")
                End If
            End If
        Next
    End Sub

    Private Function msg() As Object
        Throw New NotImplementedException
    End Function

End Class
