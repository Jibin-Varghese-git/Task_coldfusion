<html>
    <head>
        <title>>Question-24</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <form method="post" class="p-3">
            <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                 <label class="text-success">Enter the username</label><br>
                <input  name="userName" id="userName" class="me-2">
                <label class="text-success">Enter the email id</label><br>
                <input type="email"  name="userEmail" id="userEmail" onkeydown="disableButton()">
                <div class="d-flex p-2">
                    <input type="button" onclick=verifyEmail() value="Verify" name="checkEmail" class="text-white bg-primary"><br>
                    <span class="ms-2 text-danger" id="errorMail" ></span>
                </div>
                <input type="submit" class="btn bg-black text-white m-2" name="submitbtn" id="submitbtn" >
            </div>
        </form>
        <div class="border border-danger d-flex justify-content-around">
            <h2>RESULTS:</h2>
            <div class= p-2>
                <cfif structKeyExists(form, "submitbtn")>
                    <cfset local.newObj = createObject("component","components.check_24")>
                    <cfset local.result = local.newObj.emailAdd(form.userEmail,form.userName)>
                    <span class="text-success"><cfdump  var="#local.result#"></span>
                </cfif>
            </div>
        </div>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="js/script.js"></script>
    </body>
</html>