
<html>
    <head>
        <title>>Questiion-17</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <cfoutput>
            <form method="post" class="p-3">
                <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                    <label class="text-success">Enter the limit</label><br>
                    <input  name="num" id="num">
                    <span id="errMsg" class="text-danger"></span>
                    <input onclick="val()" type="submit" class="btn bg-black text-white m-2" >
                </div>
            </form>
            <div class="border border-danger d-flex justify-content-around">
                <h2>RESULTS:</h2>
                <div class= p-2>  
                    <cfif structKeyExists(form,"num") && Len(form.num) gt 0>
                        <cfset local.num = form.num>
                        <cfset local.newObject = createObject("component", "components.check_17")>
                        <cfset local.result = newObject.fnCheck(num)>
                        <cfloop  index="i" from="1" to="#num#">
                            <span style="color:#local.result[i]#">#i#</span><br>
                        </cfloop>
                    <cfelse>   
                        <cfdump  var="Enter a value"> 
                    </cfif>                                     
                </div>
            </div>
        </cfoutput>
        <script src="js/script.js"></script>
    </body>
</html>