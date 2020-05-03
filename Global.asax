<%@ Application Language="VB" %>

<script runat="server">

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application startup
        Dim myScriptResDef As ScriptResourceDefinition = New ScriptResourceDefinition()
        myScriptResDef.Path = "~/scripts/jquery-1.8.1.js"
        myScriptResDef.DebugPath = "~/scripts/jquery-1.8.1.js"
        myScriptResDef.CdnPath = "http://code.jquery.com/jquery-1.8.1.js"
        myScriptResDef.CdnDebugPath = "http://code.jquery.com/jquery-1.8.1.js"
        ScriptManager.ScriptResourceMapping.AddDefinition("jquery", Nothing, myScriptResDef)

    End Sub
    
    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application shutdown
    End Sub
        
    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when an unhandled error occurs
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a new session is started
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a session ends. 
        ' Note: The Session_End event is raised only when the sessionstate mode
        ' is set to InProc in the Web.config file. If session mode is set to StateServer 
        ' or SQLServer, the event is not raised.
    End Sub
       
</script>