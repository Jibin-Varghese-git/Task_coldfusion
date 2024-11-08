<cfapplication name="app" sessionmanagement="Yes">
<html>
    <head>
        <title>>Questiion-13</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <form method="post" class="p-3">
            <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                <label class="text-success">Enter the email id</label><br>
                <input  name="userEmail">
                <div class="d-flex p-2">
                    <input type="checkbox" name="checkEmail"><span class="ms-2">Check email</span>
                </div>
                <input type="submit" class="btn bg-black text-white m-2" name="submit" disabled>
            </div>
        </form>
        <div class="border border-danger d-flex justify-content-around">
            <h2>RESULTS:</h2>
            <div class= p-2>
                
            </div>
        </div>
    </body>
</html>