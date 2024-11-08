<cfapplication name="app" sessionmanagement="Yes">
<html>
    <head>
        <title>>Questiion-27</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <form method="post" class="p-3">
            <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                <h2 class="text-success">WELCOME USER</h2>
                <input type="submit" class="btn bg-warning text-white m-2" value="LOGOUT" name="logout">
            </div>
        </form>
        <cfif NOT structKeyExists(session, "userName")>
            <cflocation  url="Qn_27.cfm">
        </cfif>
        <cfif structKeyExists(form, "logout")>
            <cfset sessionInvalidate()>
            <cflocation  url="Qn_27.cfm">
        </cfif>
    </body>
</html>