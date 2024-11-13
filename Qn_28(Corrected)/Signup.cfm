<html>
    <head>
        <title>Sign Up Page</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
        <script src="js/script.js"></script>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body class="p-5  d-flex flex-column justify-content-between align-items-center">
        <form method="post" class="p-3 bg-primary ">
            <div class=" d-flex flex-column justify-content-between align-items-center p-3 bg-white ">
                <h3>SignUp</h3>
                <input type="text" name="userName" id="userName" class="m-2" placeholder="Username"><br>
                <span class="text-danger" id="errorUsername"></span>
                <input type="password" name="pass1" id="pass1" class="m-2" placeholder="Password">
                <span class="text-danger" id="errorPass1"></span>
                <input type="password" name="pass2" id="pass2" class="m-2" placeholder="Confirm Password">
                <span class="text-danger" id="errorPass2"></span>
                <select class="m-2" name="role">
                    <option value="101">Admin</option>
                    <option value="102">Editor</option>
                    <option value="103">User</option>
                </select>
                <input type="submit" class="btn bg-black text-white m-2" name="submit" onclick=signupVal(event)>        
                <a href="Login.cfm" >
                    <span>Already have an account? Login</span>
                </a>
            </div>
        </form>
        <div>
            <cfoutput>
                <cfif structKeyExists(form, "submit")>
                    <cfset local.newObj = createObject("component","components.pageQn")>
                    <cfset local.result = local.newObj.userSignUp(form.userName,form.pass1,form.role)>
                    <span class="fw-bold text-danger">#local.result#</span>
                </cfif>
            </cfoutput>
        </div>
    </body>
</html>