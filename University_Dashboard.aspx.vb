Imports System.Data.SqlClient

Partial Class Default2
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Session("uname") = "" Then
                Response.Redirect("home.aspx", False)
            End If
        End If

        Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Website\Rangroot\App_Data\Database.mdf;Integrated Security=True")
        Dim cmd As SqlCommand
        cmd = New SqlCommand("select count(*) from login_uni", con)

        con.Open()
        CountConvoLabel.Text = cmd.ExecuteScalar().ToString()
        con.Close()

        Dim cmd1 As SqlCommand
        cmd1 = New SqlCommand("select count(*) from login_uni", con)

        con.Open()
        CountPlacementLabel.Text = cmd.ExecuteScalar().ToString()
        con.Close()

    End Sub

    Protected Sub uni_logout_Click(sender As Object, e As EventArgs) Handles uni_logout.Click
        Session.Remove("uname")
        Session.Remove("pswd")
        Session.RemoveAll()
        Session.Abandon()
        Response.Redirect("home.aspx")
    End Sub
End Class
