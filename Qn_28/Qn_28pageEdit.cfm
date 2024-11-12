<cfapplication name="app" sessionmanagement="yes">
<html>
    <head>
        <title>>Question-28(Page-Edit)</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
         <cfif NOT structKeyExists(session, "structUserLogin")>
                <cflocation  url="Qn_28Login.cfm">
            </cfif> 
        <cfoutput>
                <cfset local.newObj = createObject("component", "components.Qn_28")>
                <cfset local.result = local.newObj.selectPage(session.changePageId)>
                <form method="post" class="p-3">
                    <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                        <h3>Page Details</h3>
                        <input type="text" name="pageTitle" class="m-2" value="#local.result.pageTitle#">
                        <textarea class="w-75 m-2" name="pageDesc" placeholder=" Page Description">#local.result.pageDesc#</textarea>
                        <input type="submit" class="btn bg-black text-white m-2" name="submit" id="submit">
                    </div>
                </form>
            </cfif>
        </cfoutput>
        <div>
            <cfif structKeyExists(form, "submit")>
                <cfset local.newObj = createObject("component","components.Qn_28")>
                <cfset local.res = local.newObj.pageEdit(form.pageTitle,form.pageDesc,session.changePageId)>
            </cfif>
        </div>
    </body>
</html>