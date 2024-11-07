<html>
    <head>
    <title>>Questiion-14</title>
    <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <cfoutput>
            <form method="post" class="p-3" enctype="multipart/form-data">
                <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                    <label class="text-success">Enter the image name</label><br>
                    <input type="text" name="imgName" class="m-2">
                    <textarea name="imgDescription" class="m-2"></textarea>
                    <input name="imgUpload" type="file">
                    <input type="submit" class="btn bg-black text-white m-2" name = "submit">
                </div>
            </form>
            <div class="border border-danger p-2">
                <h2>RESULTS:</h2>
                <cfif structKeyExists(form,"submit")>
                    <cffile  action="upload" destination="C:\ColdFusion2021\cfusion\wwwroot\Tasks\Assets\Images" fileField = "form.imgUpload" allowedextensions=".png, .gif , .png ,.jpg" nameconflict="MakeUnique">
                    <cfset local.newObject = createObject("component", "components.check_14")>
                    <cfset local.result = local.newObject.fnCheck(form.imgName,form.imgDescription,form.imgUpload)>
                    <div class="p-3">
                    <cfif local.result["error"] eq 0>
                       <span class="fw-bold"><cfdump  var="Size should not exceed 1MB"></span>
                    <cfelse>
                        <a href="./imageShow.cfm" class="d-flex">
                            <div class="border border-success h-100 me-3"><cfimage action="writeToBrowser" source="#local.result["imgUpload"]#" width="20" height="20"></div>
                            <span class="fw-bold"><cfdump  var="#imgName#"></span>
                        </a>
                    </cfif>
                    </div>
                   <cfset session.objImage = local.result>
                </cfif>
            </div>
        </cfoutput>
    </body>
</html>