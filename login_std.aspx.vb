Imports System.Data.SqlClient
Imports System.Data

Partial Class login_std
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Website\Rangroot\App_Data\Database.mdf;Integrated Security=True")

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        sessiongrid()
    End Sub
    Dim str As String
    Protected Sub login_Click(sender As Object, e As EventArgs) Handles login.Click
        Dim cmd As SqlCommand
        cmd = New SqlCommand("select * from login_std where u_name='" + email.Text + "' and pswd = '" + pswd.Text + "'", con)

        con.Open()
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader()
        If dr.Read Then
            Session("uname") = email.Text
            Session("pswd") = pswd.Text

            dr.Close()
            Dim cmd12 As New SqlCommand("select status from login_std where u_name='" + Session("uname") + "'", con)

            'Dim dr1 As New SqlDataAdapter
            'Dim dt As New DataTable
            'dr1.SelectCommand = cmd12
            'dr1.Fill(dt)
            Dim dr1 As SqlDataReader
            dr1 = cmd12.ExecuteReader()
            GridView1.DataSource = dr1
            GridView1.DataBind()
            str = dr1.Read.ToString()
            Label3.Text = str
            If str.Equals("False") Then
                Response.Redirect("std_activate.aspx")
            Else
                Response.Redirect("Student_dashboard.aspx")
            End If
        Else
            Label3.Text = "Login Unsuccessful"
        End If
            con.Close()
    End Sub

    Public Sub sessiongrid()

        Dim ds As New DataSet
        Try
            If con.State = ConnectionState.Open Then
                con.Close()
            End If
            con.Open()
            Dim cmd As New SqlCommand()
            cmd.CommandText = "select * from login_std where u_name = '" + Session("uname") + "' and pswd = '" + Session("pswd") + "'"
            cmd.CommandType = CommandType.Text
            cmd.Connection = con
            Dim da As New SqlDataAdapter()
            da.Fill(ds)
            con.Close()

        Catch ex As Exception
            con.Close()

        End Try
    End Sub

End Class
