Imports iTextSharp.text
Imports iTextSharp.text.pdf
Imports System.Data.SqlClient
Imports System.Web.UI.DataVisualization.Charting
Imports System.Data

Partial Class Re_Active
    Inherits System.Web.UI.Page

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
        End If
        Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\WebSite\Rangroot\App_Data\Database.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework")
        Dim rowCount As Integer
        Dim i As Integer = 0

        rowCount = 1
        Dim cmd As SqlCommand
        cmd = New SqlCommand("select count(*) from convo_contact", con)


        con.Open()


        Dim da As New SqlDataAdapter
        Dim dt As New DataTable



        da.SelectCommand = cmd
        da.Fill(dt)

        Dim cnt1 As Integer = Convert.ToInt16(dt.Rows(0)(0).ToString())
        Chart5.Series.Add("Series6")
        Chart5.Series("Series6").ChartType = SeriesChartType.Column
        Chart5.Series("Series6").Points.AddY(cnt1)
        Chart5.Series("Series6").ChartArea = "ChartArea6"

        If dt.Rows.Count <> 0 Then
            Chart5.Series.Add("Series5")
            Chart5.Series("Series5").ChartType = SeriesChartType.Column

            'For i = 0 To i < dt.Rows.Count
            Do
                
                Dim cmd1 As SqlCommand
                cmd1 = New SqlCommand("select count(*) from emp_basic", con)
                Dim da1 As New SqlDataAdapter
                Dim dt1 As New DataTable
                da1.SelectCommand = cmd1
                da1.Fill(dt1)
                Dim cnt As Integer = Convert.ToInt16(dt1.Rows(0)(0).ToString())

                'Chart1.Series.Add("Series1")
                'Chart1.Series("Series1").ChartType = SeriesChartType.Column
                Chart5.Series("Series5").Points.AddXY(cnt1, cnt)
                Chart5.Series("Series5").ChartArea = "ChartArea5"
                'Next
                i = i + 1
            Loop While i < dt.Rows.Count
        End If


        'If dr.HasRows Then
        '          Do
        '              Dim str As String = dr(i).ToString()
        '              Dim cmd1 As SqlCommand
        '              cmd1 = New SqlCommand("select * from placement_details where dept='" + str + "'", con)
        '              Dim dr1 As SqlDataReader = cmd1.ExecuteReader()
        '              If dr1.HasRows Then
        '                  While dr1.Read
        '                      rowCount = rowCount + 1
        '                  End While

        '                  Chart1.Series.Add("Series1")
        '                  Chart1.Series("Series1").ChartType = SeriesChartType.Column
        '                  Chart1.Series("Series1").Points.AddXY(str, rowCount)
        '                  Chart1.Series("Series1").ChartArea = "ChartArea1"

        '              End If
        '              i = i + 1
        '          Loop While dr.Read
        'End If

        con.Close()

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If DropDownList1.SelectedValue.Equals("Export as Excel") Then
            Response.ClearContent()
            Response.AppendHeader("content-disposition", "attachment; filename=Employees.xls")
            Response.ContentType = "application/excel"
            Dim stringWriter As System.IO.StringWriter = New System.IO.StringWriter()
            Dim htw As HtmlTextWriter = New HtmlTextWriter(stringWriter)
            GridView5.HeaderRow.Style.Add("background-color", "#FFFFFF")
            For Each tableCell As TableCell In GridView5.HeaderRow.Cells
                tableCell.Style("background-color") = "#A55129"
            Next

            For Each gridViewRow As GridViewRow In GridView5.Rows
                gridViewRow.BackColor = System.Drawing.Color.White
                For Each gridViewRowTableCell As TableCell In gridViewRow.Cells
                    gridViewRowTableCell.Style("background-color") = "#FFF7E7"
                Next
            Next

            GridView5.RenderControl(htw)
            Response.Write(stringWriter.ToString())
            Response.[End]()
        ElseIf DropDownList1.SelectedValue.Equals("Export as PDF") Then

        End If

        Dim columnsCount As Integer = GridView5.HeaderRow.Cells.Count
        Dim pdfTable As PdfPTable = New PdfPTable(columnsCount)
        For Each gridViewHeaderCell As TableCell In GridView5.HeaderRow.Cells
            Dim font As Font = New Font()
            font.Color = New BaseColor(GridView5.HeaderStyle.ForeColor)
            Dim pdfCell As PdfPCell = New PdfPCell(New Phrase(gridViewHeaderCell.Text, font))
            pdfCell.BackgroundColor = New BaseColor(GridView5.HeaderStyle.BackColor)
            pdfTable.AddCell(pdfCell)
        Next

        For Each gridViewRow As GridViewRow In GridView5.Rows
            If gridViewRow.RowType = DataControlRowType.DataRow Then
                For Each gridViewCell As TableCell In gridViewRow.Cells
                    Dim font As Font = New Font()
                    font.Color = New BaseColor(GridView5.RowStyle.ForeColor)
                    Dim pdfCell As PdfPCell = New PdfPCell(New Phrase(gridViewCell.Text, font))
                    pdfCell.BackgroundColor = New BaseColor(GridView5.RowStyle.BackColor)
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


    End Sub
End Class
