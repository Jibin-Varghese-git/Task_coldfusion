<html>
    <head>
        <title>Page-Input</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <script src="js/script.js"></script>
    </head>
    <body class="p-5">
        <cfif NOT structKeyExists(session, "structUserLogin")>
                <cflocation  url="Qn_28Login.cfm">
        </cfif>
        <form method="post" class="p-3">
            <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3 bg-white">
                <h3>Page Details</h3>
                <input type="text" name="pageTitle" class="m-2" placeholder="Page Title">
                <textarea class="w-75 m-2" name="pageDesc" placeholder=" Page Description"></textarea>
                <input type="submit" class="btn bg-black text-white m-2" name="submit" id="submit">
            </div>
        </form>
        <div>
            <cfif structKeyExists(form, "submit")>
                <cfset local.newObj = createObject("component","components.pageQn")>
                <cfset local.result = local.newObj.addPage(trim(form.pageTitle),form.pageDesc)>
                <cfif local.result>
                    <cflocation  url="Viewpage.cfm">
                <cfelse>
                    <span class="fw-bold text-danger">Page Name Alreday Exists</span>
                </cfif>
            </cfif>
        </div>
    </body>
</html>