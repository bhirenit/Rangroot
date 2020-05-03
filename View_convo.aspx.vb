Imports System.Data.SqlClient

Partial Class View_convo
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\WebSite\Rangroot\App_Data\Database.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework")

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        '    If Not IsPostBack Then
        '        If Session("uname") = "" Then
        '            Response.Redirect("home.aspx", False)
        '        End If
        '    End If
        Dim str As String
        Dim cmd, cmd1 As SqlCommand
      
        cmd = New SqlCommand("SELECT student_details.eno, student_details.std_name, student_details.inst_name, student_details.course_type, student_details.std_branch, student_details.pass_year, student_details.pass_month, student_details.cgpa, student_details.aadhar,convo_contact.email_id, convo_contact.address, convo_contact.city, convo_contact.state, convo_contact.pincode, convo_contact.phone_no, convo_contact.mobile_no, convo_course.degree, convo_course.placement,convo_file.fname, convo_file.data,convo_img.image FROM student_details INNER JOIN convo_contact ON student_details.email_id = convo_contact.email_id INNER JOIN convo_course ON student_details.email_id = convo_course.email_id INNER JOIN convo_file ON student_details.email_id = convo_file.email_id INNER JOIN convo_img ON student_details.email_id = convo_img.email_id ", con)
        cmd1 = New SqlCommand("SELECT uni_name from uni_basic where uni_email='" + Session("uname") + "'", con)
        con.Open()
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader()
        str = cmd1.ExecuteReader().ToString
        GridView1.DataSource = dr
        GridView1.DataBind()
        con.Close()

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
        If e.CommandName = "Accept" Then
            index = Convert.ToInt32(e.CommandArgument)

            row = GridView1.Rows(index)
            Dim cmd1 As SqlCommand
            cmd1 = New SqlCommand("update leave set status='Accept' where uid='" + row.Cells(0).Text + "'", con)
            con.Open()
            cmd1.ExecuteNonQuery()
            con.Close()

        ElseIf e.CommandName = "Reject" Then
            index = Convert.ToInt32(e.CommandArgument)

            row = GridView1.Rows(index)
            Dim cmd2 As SqlCommand
            cmd2 = New SqlCommand("update leave set status='Reject' where uid='" + row.Cells(0).Text + "'", con)
            con.Open()
            cmd2.ExecuteNonQuery()
            con.Close()

            'ElseIf e.CommandName = "Delete" Then


        End If

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        

    End Sub
End Class
