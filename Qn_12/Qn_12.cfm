<html>
    <head>
    <title>>Questiion-12</title>
    <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
            <form method="post" class="p-3">
                <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                    <label class="text-success">Enter  Number Between 1-10</label><br>
                    <input  name="number">
                    <input type="submit" class="btn bg-black text-white m-2" name="submit">
                </div>
            </form>
            <div class="border border-danger d-flex justify-content-around">
                <h2>RESULTS:</h2>
                <div class= p-2>
                    <cfif structKeyExists(form, "submit")>
                        <cfset  local.number = form.number>
                        <cfif local.number gt 0 && local.number lte 10>
                            <cfset local.newObject = createObject("component","components.check_12")>
                            <cfset local.result = local.newObject.fnCheck()>
                            <table class="table border">
                                <tr>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                </tr>
                                <cfoutput query="local.result">
                                    <tr>
                                        <td>#firstname#</td>
                                        <td>#lastname#</td>
                                    </tr>
                                </cfoutput>
                            </table>
                             <cfoutput>
                              <span class="fw-bold">Person #local.number# is  #local.result.firstname[local.number]#</span>
                             </cfoutput>
                        <cfelse>
                            <span class="text-danger"><cfdump  var="Invalid value!Enter number between (1-10)">
                        </cfif> 
                    <cfelse>
                        <cfdump  var="Error">
                    </cfif>
                </div>
            </div>
    </body>
</html>