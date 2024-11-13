<cfapplication name="app" sessionmanagement="yes">
<html>
    <head>
        <title>Question-28(login)</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <form method="post" class="p-3">
            <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                <h3>User Login</h3>
                <input type="text" name="userName" class="m-2" placeholder="Username">
                <input type="password" name="password" class="m-2" placeholder="Password">
                <input type="submit" class="btn bg-black text-white m-2" name="submit" id="submit">
                <a href="Qn_28SignUp.cfm">
                    <span>Dont't have an account?Sign UP</span>
                </a>
            </div>
        </form>
        <div>
            <cfif structKeyExists(form, "submit")>
                <cfset local.newObj = createObject("component","components.Qn_28")>
                <cfset local.result = local.newObj.loginCheck(form.userName,form.password)>
                <span class="fw-bold text-danger"><cfdump  var="#local.result#"></span>
            </cfif>
        </div>
    </body>
</html>