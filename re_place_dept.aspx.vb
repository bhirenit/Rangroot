
Imports System.Data.SqlClient
Imports System.Web.UI.DataVisualization.Charting
Imports System.Data



Partial Class re_place_dept
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim con As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\WebSite\Rangroot\App_Data\Database.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework")
        Dim rowCount As Integer
        Dim i As Integer = 0

        rowCount = 1
        Dim cmd As SqlCommand
        cmd = New SqlCommand("select DISTINCT dept from placement_details", con)


        con.Open()
        'Dim dr As SqlDataReader
        'dr = cmd.ExecuteReader()


        Dim da As New SqlDataAdapter
        Dim dt As New DataTable
        Dim dr As SqlDataReader

        Dim da1 As New SqlDataAdapter
        Dim dt1 As New DataTable
        da.SelectCommand = cmd
        da.Fill(dt)

        If dt.Rows.Count <> 0 Then
            'Chart1.Series.Add("Series1")
            'Chart1.Series("Series1").ChartType = SeriesChartType.Pie

            'For i = 0 To i < dt.Rows.Count
            Do

                Dim str As String = dt.Rows(i)(0).ToString()
                Dim cmd1 As SqlCommand
                cmd1 = New SqlCommand("select count(*) from placement_details where dept='" + str + "'", con)

                da1.SelectCommand = cmd1
                da1.Fill(dt1)
                Dim cnt As Integer = Convert.ToInt16(dt1.Rows(0)(0).ToString())

                'Chart1.Series.Add("Series1")
                'Chart1.Series("Series1").ChartType = SeriesChartType.Column
                Chart1.Series("Series1").Points.AddXY(str, cnt)
                Chart1.Series("Series1").ChartArea = "ChartArea1"
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
End Class
