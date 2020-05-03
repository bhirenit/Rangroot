Imports System.Data.SqlClient

Partial Class create_user
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Website\Rangroot\App_Data\Database.mdf;Integrated Security=True")
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Session("uname") = "" Then
                Response.Redirect("home.aspx", False)
            End If
        End If
        If Session("uname") <> "hariom103@gmail.com" Then
            Response.Redirect("user_creation.aspx")
        End If
    End Sub

    Protected Sub emp_logout_Click(sender As Object, e As EventArgs) Handles emp_logout.Click
        Session.Remove("uname")
        Session.RemoveAll()
        Session.Abandon()
        Response.Redirect("home.aspx")
    End Sub

    Protected Sub login_Click(sender As Object, e As EventArgs) Handles login.Click
        Try
            Dim cmd As SqlCommand
            cmd = New SqlCommand("insert into login(u_name,pswd) values('" + email.Text + "','" + pswd.Text + "')", con)
            
            con.Open()
            cmd.ExecuteNonQuery()

            'Session("uname") = email.Text
            'Session("pswd") = pswd.Text


            con.Close()
        Catch ex As SqlException
            'MsgBox("Sorry! Try Again", MsgBoxStyle.SystemModal)
        End Try
    End Sub
End Class
