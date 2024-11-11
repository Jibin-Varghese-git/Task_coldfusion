<html>
    <head>
        <title>>Question-26</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <form method="post" class="p-3" enctype="multipart/form-data">
            <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                 <label class="text-success">Choose the file</label><br>
                <input type="file" name="uploadedFile">
                <input type="submit" class="btn bg-black text-white m-2" name="submit" id="submit">
                
            </div>
        </form>
        <div class="border border-danger d-flex justify-content-around">
            <h2>RESULTS:</h2>
            <div class= p-2>
                <cfif structKeyExists(form, "submit")>
                   <cffile  action="read" allowedextensions=".txt" file="#form.uploadedFile#" variable="fileText">
                   <cfset local.newObj = createObject("component", "components.check_26")>
                   <cfset local.result = local.newObj.addText(fileText)>
                   <span class="text-success"><cfdump  var="#local.result#"></span>
                </cfif>
            </div>
        </div>
    </body>
</html>