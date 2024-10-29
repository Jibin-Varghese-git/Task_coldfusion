<html>
    <head>
    <title>>Questiion-1</title>
    </head>
    <body>
        <form method="post">
            <label>Enter number using commas</label><br>
            <input  name="num">
            <input type="submit">
        </form>
        <cfoutput>
            <cfif structKeyExists(form,"num")>  
                <cfset locl.num = form.num>
                <cfset local.arr = listToArray(num,",",false,true)>
                
                #local.arr#
            </cfif>
        </cfoutput>
    </body>
</html>