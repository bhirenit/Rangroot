Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data.SqlClient
Imports System.Data
Imports System.Configuration
Imports System.IO
Imports iTextSharp.text
Imports iTextSharp.text.pdf
Imports iTextSharp.Text.Html.simpleparser
Partial Class view_employ
    Inherits System.Web.UI.Page


    Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\WebSite\Rangroot\App_Data\Database.mdf;Integrated Security=True")

    Protected Sub search_Click(sender As Object, e As EventArgs) Handles search.Click
        Dim cmd As SqlCommand
        If search_cat.SelectedValue.Equals("Caste") Then
            cmd = New SqlCommand("SELECT emp_basic.email, emp_basic.name, emp_basic.emp_status, emp_contact.city, emp_discrim.s_caste, emp_edu.basic_edu, emp_edu.exp, emp_edu.percentage, emp_edu.interest, emp_edu.special, emp_edu.detail_edu FROM emp_basic INNER JOIN emp_contact ON emp_basic.email = emp_contact.email INNER JOIN emp_discrim ON emp_basic.email = emp_discrim.email INNER JOIN emp_edu ON emp_basic.email = emp_edu.email where s_caste='" + search_txt.Text + "'", con)
            con.Open()
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            GridView1.DataSource = dr
            GridView1.DataBind()
            con.Close()
        ElseIf search_cat.SelectedValue.Equals("Basic Education") Then
            cmd = New SqlCommand("SELECT emp_basic.email, emp_basic.name, emp_basic.emp_status, emp_contact.city, emp_discrim.s_caste, emp_edu.basic_edu, emp_edu.exp, emp_edu.percentage, emp_edu.interest, emp_edu.special, emp_edu.detail_edu FROM emp_basic INNER JOIN emp_contact ON emp_basic.email = emp_contact.email INNER JOIN emp_discrim ON emp_basic.email = emp_discrim.email INNER JOIN emp_edu ON emp_basic.email = emp_edu.email where basic_edu='" + search_txt.Text + "'", con)
            con.Open()
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            GridView2.DataSource = dr
            GridView2.DataBind()
            con.Close()
        ElseIf search_cat.SelectedValue.Equals("Department") Then
            cmd = New SqlCommand("SELECT emp_basic.email, emp_basic.name, emp_basic.emp_status, emp_contact.city, emp_discrim.s_caste, emp_edu.basic_edu, emp_edu.exp, emp_edu.percentage, emp_edu.interest, emp_edu.special, emp_edu.detail_edu FROM emp_basic INNER JOIN emp_contact ON emp_basic.email = emp_contact.email INNER JOIN emp_discrim ON emp_basic.email = emp_discrim.email INNER JOIN emp_edu ON emp_basic.email = emp_edu.email where detail_edu='" + search_txt.Text + "'", con)
            con.Open()
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            GridView2.DataSource = dr
            GridView2.DataBind()
            con.Close()
        ElseIf search_cat.SelectedValue.Equals("Percentage") Then
            cmd = New SqlCommand("SELECT emp_basic.email, emp_basic.name, emp_basic.emp_status, emp_contact.city, emp_discrim.s_caste, emp_edu.basic_edu, emp_edu.exp, emp_edu.percentage, emp_edu.interest, emp_edu.special, emp_edu.detail_edu FROM emp_basic INNER JOIN emp_contact ON emp_basic.email = emp_contact.email INNER JOIN emp_discrim ON emp_basic.email = emp_discrim.email INNER JOIN emp_edu ON emp_basic.email = emp_edu.email where percentage='" + search_txt.Text + "'", con)
            con.Open()
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            GridView2.DataSource = dr
            GridView2.DataBind()
            con.Close()
        ElseIf search_cat.SelectedValue.Equals("Year") Then
            cmd = New SqlCommand("SELECT emp_basic.email, emp_basic.name, emp_basic.emp_status, emp_contact.city, emp_discrim.s_caste, emp_edu.basic_edu, emp_edu.exp, emp_edu.percentage, emp_edu.interest, emp_edu.special, emp_edu.detail_edu FROM emp_basic INNER JOIN emp_contact ON emp_basic.email = emp_contact.email INNER JOIN emp_discrim ON emp_basic.email = emp_discrim.email INNER JOIN emp_edu ON emp_basic.email = emp_edu.email where pass_yr='" + search_txt.Text + "'", con)
            con.Open()
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            GridView2.DataSource = dr
            GridView2.DataBind()
            con.Close()
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        If DropDownList1.SelectedValue.Equals("Export as Excel") Then
            Response.ClearContent()
            Response.AppendHeader("content-disposition", "attachment; filename=Employees.xls")
            Response.ContentType = "application/excel"
            Dim stringWriter As System.IO.StringWriter = New System.IO.StringWriter()
            Dim htw As HtmlTextWriter = New HtmlTextWriter(stringWriter)
            GridView1.HeaderRow.Style.Add("background-color", "#FFFFFF")
            For Each tableCell As TableCell In GridView1.HeaderRow.Cells
                tableCell.Style("background-color") = "#A55129"
            Next

            For Each gridViewRow As GridViewRow In GridView1.Rows
                gridViewRow.BackColor = System.Drawing.Color.White
                For Each gridViewRowTableCell As TableCell In gridViewRow.Cells
                    gridViewRowTableCell.Style("background-color") = "#FFF7E7"
                Next
            Next

            GridView1.RenderControl(htw)
            Response.Write(stringWriter.ToString())
            Response.[End]()
        ElseIf DropDownList1.SelectedValue.Equals("Export as PDF") Then

            Dim columnsCount As Integer = GridView1.HeaderRow.Cells.Count
            Dim pdfTable As PdfPTable = New PdfPTable(columnsCount)
            For Each gridViewHeaderCell As TableCell In GridView1.HeaderRow.Cells
                Dim font As Font = New Font()
                font.Color = New BaseColor(GridView1.HeaderStyle.ForeColor)
                Dim pdfCell As PdfPCell = New PdfPCell(New Phrase(gridViewHeaderCell.Text, font))
                pdfCell.BackgroundColor = New BaseColor(GridView1.HeaderStyle.BackColor)
                pdfTable.AddCell(pdfCell)
            Next

            For Each gridViewRow As GridViewRow In GridView1.Rows
                If gridViewRow.RowType = DataControlRowType.DataRow Then
                    For Each gridViewCell As TableCell In gridViewRow.Cells
                        Dim font As Font = New Font()
                        font.Color = New BaseColor(GridView1.RowStyle.ForeColor)
                        Dim pdfCell As PdfPCell = New PdfPCell(New Phrase(gridViewCell.Text, font))
                        pdfCell.BackgroundColor = New BaseColor(GridView1.RowStyle.BackColor)
                        pdfTable.AddCell(pdfCell)
                    Next
                End If
            Next

            Dim pdfDocument As Document = New Document(PageSize.A4, 10.0F, 10.0F, 10.0F, 10.0F)
            PdfWriter.GetInstance(pdfDocument, Response.OutputStream)
            pdfDocument.Open()
            pdfDocument.Add(pdfTable)
            pdfDocument.Close()
            Response.ContentType = "application/pdf"
            Response.AppendHeader("content-disposition", "attachment;filename=Employees.pdf")
            Response.Write(pdfDocument)
            Response.Flush()
            Response.[End]()

        End If
    End Sub

    Protected Sub emp_logout_Click(sender As Object, e As EventArgs) Handles emp_logout.Click
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
            GridView1.Visible = True
        Else
            GridView1.Visible = False
        End If
    End Sub
    Public Overrides Sub VerifyRenderingInServerForm(ByVal control As Control)

    End Sub
End Class
