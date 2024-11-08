<cfapplication name="app" sessionmanagement="Yes">
<html>
    <head>
        <title>>Questiion-27</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <form method="post" class="p-3">
            <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                <label class="text-success">Enter the User Name</label><br>
                <input  name="userName" class="mb-2">

                <label class="text-success">Enter the password</label><br>
                <input type="password" name="password">

                <input type="submit" class="btn bg-black text-white m-2" name="submit">
            </div>
        </form>
        <div class="border border-danger d-flex justify-content-around">
            <div class= p-2>
                <cfif structKeyExists(form,"submit") >  
                    <cfset local.newObject = createObject("component", "components.check_27")>
                    <cfset local.result = local.newObject.fnUserValidate(form.userName,form.password)> 
                    <cfif local.result EQ true>
                        <cflocation  url="User_qn27.cfm">
                    <cfelse>
                        <span class="fw-bold text-danger">Invalid credentials</span>
                    </cfif>      
                </cfif>
            </div>
        </div>
    </body>
</html>