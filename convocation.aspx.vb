Imports System.Data.SqlClient
Imports System.IO
Imports System.Data

Partial Class convocation
	Inherits System.Web.UI.Page
	Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\WebSite\Rangroot\App_Data\Database.mdf;Integrated Security=True")

	Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
		Dim radio_alumini As String = String.Empty
		If alumini_yes.Checked Then
			radio_alumini = "Yes"
		ElseIf alumini_no.Checked Then
			radio_alumini = "No"
		End If

        Dim rec_deg As String = String.Empty
        If deg_yes.Checked Then
            rec_deg = "Yes"
        ElseIf deg_no.Checked Then
            rec_deg = "No"
        End If
		con.Open()
        Dim cmd, cmd2, cmd3 As SqlCommand

        cmd = New SqlCommand("insert into convo_bank(email_id,du_no,bank_branch_name,allumni,allumni_du_no,allumni_bank_branch_name,trans_date,allumni_date,parents,passes) values ('" + Session("uname") + "','" + du_no.Text + "','" + b_name1.Text + "','" + radio_alumini + "','" + du_no2.Text + "','" + brname2.Text + "','" + trans_date.Text + "','" + c_date2.Text + "','" + RadioButtonList2.SelectedValue + "','" + RadioButtonList1.SelectedValue + "')", con)
        cmd2 = New SqlCommand("insert into convo_contact(email_id,address,city,state,pincode,phone_no,mobile_no) values('" + Session("uname") + "','" + address_std.Text + "','" + City.SelectedValue + "','" + state.SelectedValue + "','" + pincode.Text + "','" + ph_no.Text + "','" + mob_no.Text + "')", con)
        cmd3 = New SqlCommand("insert into convo_course(email_id,degree,placement,with_parent,no_pass) values('" + Session("uname") + "','" + rec_deg + "','" + RadioButtonList4.SelectedValue + RadioButtonList2.SelectedValue + "','" + RadioButtonList1.SelectedValue + "')", con)

		cmd.ExecuteNonQuery()
		cmd2.ExecuteNonQuery()
        cmd3.ExecuteNonQuery()
		con.Close()
		'Catch ex As SqlException
		'    MsgBox("Can't Registered")
		'End Try
		Dim filename As String = Path.GetFileName(FileUpload1.PostedFile.FileName)
		Dim fs As Stream = FileUpload1.PostedFile.InputStream
		Dim br As New BinaryReader(fs)
		Dim bytes As Byte() = br.ReadBytes(fs.Length)
		'Dim constr As String = ConfigurationManager.ConnectionStrings("constr").ConnectionString
		'Using con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\WebSite\Rangroot\App_Data\Database.mdf;Integrated Security=True")

		'Dim cmd As New SqlCommand("insert into fileUpload(id,Name,ContentType,Data) values('" + count + "','" + filename + "','" + type1 + "')", con)
        Dim query As String = "insert into convo_file values (@email_id,@fname, @data)"
		Dim cmd10 As New SqlCommand(query)
		cmd10.Connection = con
        cmd10.Parameters.Add("@email_id", SqlDbType.VarChar).Value = Session("uname")
		cmd10.Parameters.Add("@fname", SqlDbType.VarChar).Value = filename
		cmd10.Parameters.Add("@data", SqlDbType.Binary).Value = bytes
		con.Open()
		cmd10.ExecuteNonQuery()
        con.Close()

	End Sub

    Protected Sub std_logout_Click(sender As Object, e As EventArgs) Handles std_logout.Click
        Session.Remove("uname")
        Session.RemoveAll()
        Session.Abandon()
        Response.Redirect("home.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Session("uname") = "" Then
                Response.Redirect("home.aspx", False)
            End If
        End If
        Dim cmd As SqlCommand
        cmd = New SqlCommand("select address from convo_contact where email_id='" + Session("uname") + "'", con)

        con.Open()
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader()
        If dr.HasRows Then

            Response.Redirect("convocation_filled.aspx")
        End If
        con.Close()
    End Sub
End Class
