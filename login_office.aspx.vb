Imports System.Data.SqlClient
Imports System.Data

Partial Class login_office
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Website\Rangroot\App_Data\Database.mdf;Integrated Security=True")

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        sessiongrid()
    End Sub

    Public Sub sessiongrid()

        Dim ds As New DataSet
        Try
            If con.State = ConnectionState.Open Then
                con.Close()
            End If
            con.Open()
            Dim cmd As New SqlCommand()
            cmd.CommandText = "select * from login where u_name = '" + Session("uname") + "' and pswd = '" + Session("pswd") + "'"
            cmd.CommandType = CommandType.Text
            cmd.Connection = con
            Dim da As New SqlDataAdapter()
            da.Fill(ds)
            con.Close()

        Catch ex As Exception
            con.Close()

        End Try
    End Sub

    Protected Sub login_Click(sender As Object, e As EventArgs) Handles login.Click
        Dim cmd As SqlCommand
        cmd = New SqlCommand("select * from login where u_name='" + email.Text + "' and pswd = '" + pswd.Text + "'", con)

        con.Open()
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader()
        If dr.Read Then
            Session("uname") = email.Text
            Session("pswd") = pswd.Text
            Response.Redirect("EmployOffice_Dashboard.aspx")
        Else
            Label3.Text = "Login Unsuccessful"
        End If
        con.Close()
    End Sub
End Class
