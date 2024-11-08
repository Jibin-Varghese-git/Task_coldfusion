<html>
    <head>
        <title>>Questiion-18</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
            <form method="post" class="p-3">
                <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                    <input type="submit" class="btn bg-black text-white m-2" name="submit">
                </div>
            </form>
            <div class="border border-danger d-flex justify-content-around">
                <h2>RESULTS:</h2>
                <div class= p-2>
                    <cfif structKeyExists(form, "submit")>
                        <cfset local.newObject = createObject("component","components.check_18")>
                        <cfset local.result = local.newObject.fnCheck()>
                        <cfdump  var="#local.result#">
                    </cfif>
                </div>
            </div>
    </body>
</html>