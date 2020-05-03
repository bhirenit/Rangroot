Imports System.Data.SqlClient

Partial Class company_verify
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\USERS\DHRUVIK SORATHIYA\DOCUMENTS\VISUAL STUDIO 2013\WEBSITES\HACKTHON2\RANGROOTCHART\APP_DATA\DATABASE.MDF")

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        '    If Not IsPostBack Then
        '        If Session("uname") = "" Then
        '            Response.Redirect("home.aspx", False)
        '        End If
        '    End  if 

        Dim cmd As SqlCommand
        cmd = New SqlCommand("SELECT comp_details.cmp_id,comp_details.cmp_name,comp_details.cmp_pswd,comp_details.cmp_email,comp_details.care_email,cmp_work_details.cmp_category,cmp_work_details.desc_business,cmp_work_details.male_emp,cmp_work_details.female_emp,cmp_work_details.emps,cmp_work_details.nic_head,cmp_key.m_person,cmp_key.m_phone,cmp_key.m_email,cmp_key.c_person,cmp_key.c_email,cmp_key.emp_reg_id,cmp_key.m_desig,cmp_key.m_mobile,cmp_key.c_desig,cmp_key.c_mobile,cmp_key.pan_no,cmp_key.sales_reg,cmp_file.cmp_profile,cmp_file.data,cmp_add.cmp_city,cmp_add.cmp_area,cmp_add.taluka,cmp_add.cmp_varea,cmp_add.cmp_add1,cmp_add.cmp_add2 FROM comp_details INNER JOIN cmp_work_details ON comp_details.cmp_id = cmp_work_details.cmp_id  INNER JOIN cmp_key ON comp_details.cmp_id  = cmp_key.cmp_id  INNER JOIN cmp_file ON comp_details.cmp_id  = cmp_file.cmp_id  INNER JOIN cmp_add ON comp_details.cmp_id  = cmp_add.cmp_id   where comp_details.status=pending", con)
        con.Open()
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader()
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
End Class
