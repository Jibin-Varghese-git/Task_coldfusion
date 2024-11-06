<cfapplication name="app" sessionmanagement="Yes">
<html>
    <head>
    <title>>Questiion-11</title>
    <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <cfoutput>
            <form method="post" class="p-3">
                <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                    <label class="text-success">Enter using commas</label><br>
                    <input  name="myList">
                    <input type="submit" class="btn bg-black text-white m-2">
                </div>
            </form>
            <div class="border border-danger d-flex justify-content-around">
                <h2>RESULTS:</h2>
                <div class= p-2>
                    <cfif structKeyExists(form,"myList") >  
                        <cfset local.myList = form.myList>
                        <cfset local.newObject = createObject("component", "components.check_11")>
                        <cfset local.result = local.newObject.multiply(local.myList)>
                        <cfdump  var="#local.result#">                   
                    </cfif>
                </div>
            </div>
        </cfoutput>
    </body>
</html>