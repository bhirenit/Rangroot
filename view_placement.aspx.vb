﻿
Partial Class view_placement
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Session("uname") = "" Then
                Response.Redirect("home.aspx", False)
            End If
        End If
    End Sub

    Protected Sub emp_logout_Click(sender As Object, e As EventArgs) Handles emp_logout.Click
        Session.Remove("uname")
        Session.RemoveAll()
        Session.Abandon()
        Response.Redirect("home.aspx")
    End Sub

End Class
