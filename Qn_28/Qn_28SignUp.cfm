<html>
    <head>
        <title>>Question-28(signup)</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
        <script src="js/script.js"></script>
    </head>
    <body class="p-5">
        <form method="post" class="p-3 border border-success">
            <div class=" d-flex flex-column justify-content-between align-items-center p-3">
                <h3>User SignUp</h3>
                <input type="text" name="userName" id="userName" class="m-2" placeholder="Username"><br>
                <span class="text-danger" id="errorUsername"></span>
                <input type="password" name="pass1" id="pass1" class="m-2" placeholder="Password">
                <span class="text-danger" id="errorPass1"></span>
                <input type="password" name="pass2" id="pass2" class="m-2" placeholder="Confirm Password">
                <span class="text-danger" id="errorPass2"></span>
                <select class="m-2" name="role">
                    <option value="admin">Admin</option>
                    <option value="editor">Editor</option>
                    <option value="user">User</option>
                </select>
                <input type="submit" class="btn bg-black text-white m-2" name="submit" onclick=signupVal(event)>        
                <a href="Qn_28Login.cfm" >
                    <span>Already have an account?Login</span>
                </a>
            </div>
        </form>
        <div>
            <cfif structKeyExists(form, "submit")>
                <cfset local.newObj = createObject("component","components.Qn_28")>
                <cfset local.result = local.newObj.userSignUp(form.userName,form.pass1,form.pass2,form.role)>
                <span class="fw-bold text-danger"><cfdump  var="#local.result#"></span>
            </cfif>
        </div>
    </body>
</html>