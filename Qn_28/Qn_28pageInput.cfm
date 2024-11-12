<cfapplication name="app" sessionmanagement="yes">
<html>
    <head>
        <title>>Question-28(Page-Input)</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <cfif NOT structKeyExists(session, "structUserLogin")>
                <cflocation  url="Qn_28Login.cfm">
        </cfif>
        <form method="post" class="p-3">
            <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                <h3>Page Details</h3>
                <input type="text" name="pageTitle" class="m-2" placeholder="Page Title">
                <textarea class="w-75 m-2" name="pageDesc" placeholder=" Page Description"></textarea>
                <input type="submit" class="btn bg-black text-white m-2" name="submit" id="submit">
            </div>
        </form>
        <div>
            <cfif NOT structKeyExists(session, "structUserLogin")>
                <cflocation  url="Qn_28Login.cfm">
            </cfif> 
            <cfif structKeyExists(form, "submit")>
                <cfset local.newObj = createObject("component","components.Qn_28")>
                <cfset local.result = local.newObj.pageInput(form.pageTitle,form.pageDesc)>
                <span class="fw-bold text-danger"><cfdump  var="#local.result#"></span>
            </cfif>
        </div>
    </body>
</html>