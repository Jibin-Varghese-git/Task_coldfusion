<cfapplication name="app" sessionmanagement="yes">
<html>
    <head>
        <title>>Question-28(login)</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <cfif NOT structKeyExists(session, "structUserLogin")>
            <cflocation  url="Qn_28Login.cfm">
        </cfif>
        <form method="post" class="p-3">
            <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                <header class="w-100">
                    <input type="submit" name="logout" value="logout" class="bg-danger text-white float-end">
                </header>
                <a href="Qn_28pageView.cfm">
                    <input type="button" class="btn bg-black text-white m-2" value="View Page">
                </a>
            </div>
        </form>
        <div>
            <cfif structKeyExists(form, "logout")>
                <cfset local.newObj = createObject("component","components.Qn_28")>
                <cfset local.res = local.newObj.logout()> 
            </cfif>
        </div>
    </body>
</html>