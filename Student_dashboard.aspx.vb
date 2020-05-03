Imports System.Data.SqlClient

Partial Class Student_dashboard
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Website\Rangroot\App_Data\Database.mdf;Integrated Security=True")

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Session("uname") = "" Then
                Response.Redirect("home.aspx", False)
            End If
        End If

        'Dim cmd As New SqlCommand("Select status from login_std where u_name='" + Session("uname") + "'", con)
        'con.Open()
        'Dim dr As SqlDataReader
        'dr = cmd.ExecuteReader()
        'If dr.HasRows Then
        '    If dr.Read.Equals("Pending") Then
        '        Response.Redirect("std_activate")
        '    End If
        'End If

        'con.Close()
    End Sub

    Protected Sub std_logout_Click(sender As Object, e As EventArgs) Handles std_logout.Click
        Session.Remove("uname")
        Session.RemoveAll()
        Session.Abandon()
        Response.Redirect("home.aspx")
    End Sub
End Class
