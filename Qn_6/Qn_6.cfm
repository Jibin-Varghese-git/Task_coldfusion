<html>
    <head>
    <title>>Questiion-6</title>
    <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <form method="post" class="p-3">
            <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                <label class="text-success">Enter  key</label><br>
                <input  name="key">
                <label class="text-success">Enter value</label><br>
                <input  name="value">
                <input type="submit" class="btn bg-black text-white m-2">
            </div>
        </form>
        <div class="border border-danger d-flex justify-content-around">
            <h2>RESULTS:</h2>
            <div class= p-2>
                <cfoutput>
                    <cfif structKeyExists(form,"key") && structKeyExists(form,"value")>  
                        <cfset local.key = form.key>
                        <cfset local.value = form.value>
                        <cfset myStruct={#local.key# = #local.value#}>
                        <cfdump  var="#myStruct#">                    
                    </cfif>
                </cfoutput>
            </div>
        </div>
    </body>
</html>