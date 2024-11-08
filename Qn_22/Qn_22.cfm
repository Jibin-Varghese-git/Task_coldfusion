<html>
    <head>
        <title>>Questiion-22</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <cfoutput>
            <form method="post" class="p-3" enctype="multipart/form-data">
                <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                    <input type="submit" class="btn bg-black text-white m-2" name="submit">
                </div>
            </form>
            <div class="border border-danger p-2">
                <h2>RESULTS:</h2>
                <cfif structKeyExists(form , "submit")>
                    <cfset local.mystruct = [{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}]>
                    <cfset local.length = arrayLen(local.myStruct)>
                    <table class="table border">
                        <tr>
                            <th>NAME</th>
                            <th>AGE</th>
                            <th>Location</th>
                        </tr>
                        <cfloop index="i" from=1 to="#local.length#">
                            <tr>
                                <td>#local.mystruct[i].name#</td>
                                <td>#local.mystruct[i].age#</td>
                                <td>#local.mystruct[i].location#</td>
                            </tr>
                        </cfloop>
                    </table>
                </cfif>
            </div>
        </cfoutput>
    </body>
</html>