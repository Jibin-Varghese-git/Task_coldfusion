<cfapplication name="app" sessionmanagement="Yes">
<html>
    <head>
    <title>>Questiion-13</title>
    <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <form method="post" class="p-3">
            <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                <label class="text-success">Enter the string</label><br>
                <input  name="subString">
                <input type="submit" class="btn bg-black text-white m-2">
            </div>
        </form>
        <div class="border border-danger d-flex justify-content-around">
            <h2>RESULTS:</h2>
            <div class= p-2>
                
                <cfoutput>
                    <cfif structKeyExists(form,"subString") >  
                        <cfset local.myString ="the quick brown fox jumps over the lazy dog" >
                        <cfset local.subString = form.subString>
                        <cfset local.newObject = createObject("component", "components.check_13")>
                        <cfset local.result = local.newObject.fnCheck(local.subString,local.myString)>
                        <cfdump  var="Occurence of #local.subString# is #local.result#"><br> 
                        <cfloop list="#local.myString#" index="i" delimiters=" ">
                            <cfif compareNoCase(i, local.subString)>
                                <span >#i#</span>
                            <cfelse>
                                <span class="fw-bold">#i#</span>
                            </cfif>
                        </cfloop>                 
                    </cfif>
                </cfoutput>
            </div>
        </div>
    </body>
</html>