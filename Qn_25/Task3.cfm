<html>
    <head>
        <title>>Question-25-Task-3</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <form method="post" class="p-3">
            <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                <h3>TASK-3</h3>
                <label class="text-success">Enter the text</label><br>
                <textarea  name="textInput"class="me-2 w-75"></textarea>
                <input type="submit" class="btn bg-black text-white m-2" name="submit" id="submit">
            </div>
        </form>
        <div class="border border-danger d-flex justify-content-around">
            <h2>RESULTS:</h2>
            <div class= p-2>
                <cfif structKeyExists(form, "submit")>
                    <cfset local.newObj = createObject("component", "components.tagCloud")>
                    <cfset local.result = local.newObj.sizeOfText(form.textInput)>
                    <cfset local.fontsize = 12>
                    <cfloop collection="#local.result#" item="item">
                        <cfoutput>
                            <span style="font-size:#local.fontsize + (5 * local.result[item])#px">#item#</span><br>
                        </cfoutput>
                    </cfloop>
                </cfif>
            </div>
        </div>
    </body>
</html>