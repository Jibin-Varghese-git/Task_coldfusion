<html>
    <head>
    <title>>Questiion-21</title>
    <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <cfoutput>
            <form method="post" class="p-3" enctype="multipart/form-data">
                <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                    <label class="text-success">Birthday Person Name</label><br>
                    <input type="text" name="personName" class="mb-2">
                    <label class="text-success">Birthday Person Mail</label><br>
                    <input type="email" name="personMail" class="mb-2">
                    <label class="text-success">Birthday Wish</label><br>
                    <textarea name="bdayDescription" class = "mb-2"></textarea>
                    <label class="text-success">Greeting card Upload</label><br>
                    <input name="imgUpload" type="file">
                    <input type="submit" class="btn bg-black text-white m-2" name = "submit">
                </div>
            </form>
            <div class="border border-danger p-2">
                <h2>RESULTS:</h2>
                <cfif structKeyExists(form , "submit ")>
                    <cfset local.newObject = createObject("component", "components.chack_21")>
                    <cfset local.result = local.newObject.fnCheck(form.personName , form.personMail , form.personMail , form.bdayDescription , form.imgUpload)>
                </cfif>
            </div>
        </cfoutput>
    </body>
</html>