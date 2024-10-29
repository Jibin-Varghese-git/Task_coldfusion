<html>
    <head>
    <title>>Questiion-1</title>
    </head>
    <body>
        <form method="post">
            <label>Enter number (1-5)</label><br>
            <input  name="num">
            <input type="submit">
        </form>
        <cfoutput>
            <cfif structKeyExists(form,"num")>  
                <cfset local.num = form.num>
                <cfset local.value = createObject("component","components.check")>
                <cfset local.res = local.value.fnCheck(local.num) >
                #local.res#
            </cfif>
        </cfoutput>
    </body>
</html>