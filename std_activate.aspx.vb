Imports System.Data.SqlClient
Imports System.Data

Partial Class std_activate
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Website\Rangroot\App_Data\Database.mdf;Integrated Security=True")

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim cmd As New SqlCommand("Select status from login_std where u_name='" + Session("uname") + "'", con)
        con.Open()
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader()

        If dr.Read.ToString = "Active" Then
            Response.Redirect("Student_dashboard.aspx")
        End If


        con.Close()
    End Sub

    Dim str As String
    Dim str1 As String
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim cmd As New SqlCommand("select otp from login_std where u_name='" + Session("uname") + "'", con)
        con.Open()
        'Dim dr As SqlDataReader
        'dr = cmd.ExecuteReader()
        'str = dr.Read.ToString

        'GridView1.DataSource = dr
        'GridView1.DataBind()
        'If TextBox1.Text.ToString().Equals(str) Then
        '    Dim cmd10 As New SqlCommand("update login_std set status='Active' where u_name='" + Session("uname") + "'", con)
        '    cmd10.ExecuteNonQuery()
        '    Response.Redirect("Student_dashboard.aspx")
        'Else
        '    Label1.Text = "Enter Correct OTP..."
        'End If
        Dim dr As New SqlDataAdapter
        Dim dt As New DataTable
        dr.SelectCommand = cmd
        dr.Fill(dt)
        'GridView1.DataSource = dt

        'GridView1.DataBind()

        Dim cmd10 As New SqlCommand("update login_std set status='Active' where u_name='" + Session("uname") + "'", con)
        cmd10.ExecuteNonQuery()
        Response.Redirect("Student_dashboard.aspx")
        str = dt.Rows(0).ToString
        'If TextBox1.Text.ToString = str Then
        Label1.Text = str
        'End If

        con.Close()
    End Sub
End Class
