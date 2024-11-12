<html>
    <head>
        <title>>Question-25-Task-2</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <form method="post" class="p-3">
            <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                <h3>TASK-2</h3>
                <label class="text-success">Enter the text</label><br>
                <textarea  name="textInput"class="me-2 w-75"></textarea>
                <input type="submit" class="btn bg-black text-white m-2" name="printWords">
            </div>
        </form>
        <div class="border border-danger d-flex justify-content-around">
            <h2>RESULTS:</h2>
            <div class= p-2>
                <cfif structKeyExists(form, "printWords")>
                    <cfset local.newObj = createObject("component", "components.tagCloud")>
                    <cfset local.result = local.newObj.showWords(form.textInput)>
                    <div>
                        <h4>Alphabetical order</h4>
                        <cfdump  var="#local.result["key"]#">
                    </div>
                    <div>
                        <h4>According to the count </h4>
                        <cfdump  var="#local.result["count"]#">
                    </div>
                    <div>
                        <h4>According to length of string</h4>
                        <cfdump  var="#local.result["length"]#">
                    </div>
                </cfif>
            </div>
        </div>
    </body>
</html>