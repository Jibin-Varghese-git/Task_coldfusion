<cfapplication name="app" sessionmanagement="yes">
<html>
    <head>
        <title>>Question-28(View Page)</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.14.0/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body class="p-5">
        <cfif NOT structKeyExists(session, "structUserLogin")>
            <cflocation url="Qn_28Login.cfm">
        <cfelse>
            <cfset local.newObj=createObject( "component", "components.Qn_28")>
            <cfset local.result=local.newObj.viewPage()>
        </cfif>
        <div class=" d-flex flex-column justify-content-between align-items-center p-3 w-75 border border-success">
            <form method="post" class="w-100">
                <header class="w-100">
                        <input type="submit" name="logout" value="logout" class="bg-danger text-white float-end">
                </header>
            </form>
            <cfloop query="#local.result#">
                <form method="post" class=" w-75">
                    <div id="listContainer" class="w-75 border border-black p-2">
                        <cfif session.structUserLogin[ "role"]=="user">
                            <cfoutput>
                                <div class="page_heading ">
                                    <h3>
                                        #local.result.pageTitle#
                                        </h3>
                                </div>
                                <div class="display_none">
                                    <p>#local.result.pageDesc#</p>
                                </div>
                            </cfoutput>
                        <cfelse>
                            <cfoutput>
                                <div class="page_heading d-flex justify-content-between">
                                    <h5>#local.result.pageTitle#</h5>
                                    <div>
                                        <input type="hidden" name="pageid" value="#local.result.pageid#">
                                        <input type="submit" name="editPage" class="bg-info text-white" value="Edit">
                                        <input type="submit" name="deletePage" class="bg-danger text-white" value="Delete">
                                    </div>
                                </div>
                                <div class="display_none">
                                    <p>#local.result.pageDesc#</p>
                                </div>
                            </cfoutput>
                        </cfif>
                    </div>
                </form>
            </cfloop>
            <cfif Not session.structUserLogin[ "role"]=="user">
                <div class="m-4">
                    <a href="Qn_28pageInput.cfm">
                        <input type="button" value="Add more page" class="bg-success text-white">
                    </a>
                </div>
            </cfif>
        </div>
        <div>

            <cfif structKeyExists(form, "editPage")>
                <cfset session.changePageId=form.pageId>
                <cflocation url="Qn_28pageEdit.cfm">
            </cfif>

            <cfif structKeyExists(form, "deletePage")>
                <cfset local.newObj = createObject( "component", "components.Qn_28")>
                <cfset local.result = local.newObj.deletePage(form.pageid)>
                <span class="fw-bold text-danger"><cfdump  var="#local.result#"></span>
            </cfif>

            <cfif structKeyExists(form, "logout")>
                <cfset local.newObj = createObject("component","components.Qn_28")>
                <cfset local.res = local.newObj.logout()> 
            </cfif>

        </div>
        <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
        <script src="https://code.jquery.com/ui/1.14.0/jquery-ui.js"></script>
        <script src="js/accordion.js"></script>
    </body>

</html>