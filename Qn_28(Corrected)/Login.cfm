<html>
    <head>
        <title>Login Page</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body class="p-5 d-flex flex-column justify-content-between align-items-center">
        <form method="post" class="p-3 bg-primary">
            <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3 bg-white">
                <h3>Login</h3>
                <input type="text" name="userName" class="m-2" placeholder="Username">
                <input type="password" name="password" class="m-2" placeholder="Password">
                <input type="submit" class="btn bg-black text-white m-2" name="submit" id="submit">
                <a href="Signup.cfm">
                    <span>Dont't have an account? Sign UP</span>
                </a>
            </div>
        </form>
        <div>
            <cfif structKeyExists(form, "submit")>
                <cfset local.newObj = createObject("component","components.pageQn")>
                <cfset local.result = local.newObj.loginCheck(form.userName,form.password)>
                <cfoutput>
                    <span class="fw-bold text-danger">#local.result#</span>
                </cfoutput>
            </cfif>
        </div>
    </body>
</html>