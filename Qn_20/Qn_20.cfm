
<html>
    <head>
        <title>>Questiion-20</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <form method="post" class="p-3">
            <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                <cfimage action="captcha" text="value" difficulty="low" fontsize="18">
                <label>Enter the captcha</label>
                <input name="inputValue">
                <label>Enter the mail</label>
                <input name="email">
                <input type="submit" class="btn bg-black text-white m-2" >
            </div>
        </form>
        <div class="border border-danger d-flex justify-content-around">
            <h2>RESULTS:</h2>
            <div class= p-2>  
                <cfoutput>
                    <cfif structKeyExists(form,"inputValue") && structKeyExists(form,"email")> 
                        <cfset inputValue =form.inputValue>
                        <cfset email =form.email>
                        <cfset capchaText = "value">
                        <cfset newObject = createObject("component","components.check_20")>
                        <cfset result = 0>
                        <cfset result = newObject.cookieCount(inputValue,capchaText,email)>
                        <cfif result == 1>
                            <cfdump  var="Valid">
                        <cfelse>
                            <cfdump  var="Invalid Captcha or email">
                        </cfif>
                    </cfif>
                </cfoutput>
            </div>
        </div>
    </body>
</html>