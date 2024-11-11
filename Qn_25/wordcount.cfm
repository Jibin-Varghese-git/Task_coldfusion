<html>
    <head>
        <title>>Question-25-Task-2</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <form method="post" class="p-3">
            <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                <label class="text-success">Enter the text</label><br>
                <textarea  name="textInput"class="me-2"></textarea>
                <input type="submit" class="btn bg-black text-white m-2" name="printWords">
            </div>
        </form>
        <div class="border border-danger d-flex justify-content-around">
            <h2>RESULTS:</h2>
            <div class= p-2>
                <cfif structKeyExists(form, "printWords")>
                    <cfset local.newObj = createObject("component", "components.tagCloud")>
                    <cfset local.result = local.newObj.showWords(form.textInput)>
                   
                </cfif>
            </div>
        </div>
    </body>
</html>