Imports System.Data.SqlClient
Imports System.Data

Partial Class company
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\HIREN\Documents\Visual Studio 2012\WebSites\hackathon final\Rangroot\App_Data\Database.mdf;Integrated Security=True")

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Session("uname") = "" Then
                Response.Redirect("home.aspx", False)
            End If
        End If
    End Sub

    Protected Sub comp_logout_Click(sender As Object, e As EventArgs) Handles comp_logout.Click
        Session.Remove("uname")
        Session.RemoveAll()
        Session.Abandon()
        Response.Redirect("home.aspx")
    End Sub

    Protected Sub submit_Click(sender As Object, e As EventArgs) Handles submit.Click
        sessiongrid()
        Try
            Dim cmd As SqlCommand
            con.Open()
            cmd = New SqlCommand("insert into company_requirement(comp_id,comp_name,email_id,mobile_no,quaification,experience,indus_type,role,salary,working_hr) values('" + Comp_id.Text + "','" + Comp_name.Text + "','" + Comp_email.Text + "','" + Comp_mono.Text + "','" + qualification.Text + "','" + experience.Text + "','" + inst_type.SelectedValue + "','" + role.Text + "','" + salary.Text + "','" + working_hour.SelectedValue + "')", con)
            cmd.ExecuteNonQuery()
            Session("uname") = Comp_email.Text
            'Session("pswd") = pswd.Text
            Response.Redirect("industry_dashboard.aspx")

            con.Close()
        Catch ex As SqlException
            MsgBox("Sorry! Try Again", MsgBoxStyle.SystemModal)

        End Try
    End Sub

    Private Sub sessiongrid()
        Dim ds As New DataSet
        Try
            If con.State = ConnectionState.Open Then
                con.Close()
            End If
            con.Open()
            Dim cmd As New SqlCommand()
            cmd.CommandText = "select * from company_requirement where email_id = '" + Session("uname") + "'"

            cmd.CommandType = CommandType.Text
            cmd.Connection = con
            Dim da As New SqlDataAdapter()
            da.Fill(ds)
            con.Close()

        Catch ex As Exception
            con.Close()
            'MsgBox("Sorry! Try Again", MsgBoxStyle.SystemModal)

        End Try
    End Sub

End Class
