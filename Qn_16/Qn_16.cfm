
<html>
    <head>
        <title>>Questiion-16</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <div class="border border-danger d-flex justify-content-around">
            <h2>RESULTS:</h2>
            <div class= p-2>  
                <cfoutput>
                        <cfset local.newObject = createObject("component", "components.check_16")>
                        <cfset local.result = local.newObject.fnCheck()>
                        <cfset local.k =1>
                        <cfloop  index="i" from="1" to="3">
                            <cfloop  index="j" from="1" to="3">
                                <cfdump  var="#local.result[local.k]#">
                                <cfset local.k++>
                            </cfloop>
                            <br>
                        </cfloop>
                </cfoutput>
            </div>
        </div>
    </body>
</html>