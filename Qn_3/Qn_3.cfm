<html>
    <head>
    <title>>Questiion-3</title>
    <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <form method="post" class="p-3">
            <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                <label class="text-success">Enter using commas</label><br>
                <input  name="num">
                <input type="submit" class="btn bg-black text-white m-2">
            </div>
        </form>
        <div class="border border-danger d-flex ">
            <h2>RESULTS:</h2>
            <cfoutput>
                <cfif structKeyExists(form,"num")>  
                    <cfset local.num = form.num>
                    <cfset local.value = createObject("component","components.check_3")>
                    <cfset local.res = local.value.fnCheck(local.num) >
                    <div class="m-2">#local.res# </div>
                </cfif>
            </cfoutput>
        </div>
    </body>
</html>