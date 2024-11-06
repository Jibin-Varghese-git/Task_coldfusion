<html>
    <head>
    <title>>Questiion-14</title>
    <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <cfoutput>
            <div class="border border-danger p-2">
                <h2>RESULTS:</h2>
                <p class="fw-bold">
                    Image Name : <cfdump  var="#session.objImage["imgName"]#">
                </p>
                <p class="fw-bold">
                    Image Description:<cfdump  var="#session.objImage["imgdescription"]#"><br>
                </p>
                <div class="w-75 border border-success">
                    <cfimage action="writeToBrowser" source="#session.objImage["imgUpload"]#" width="100%">
                </div>
            </div>
        </cfoutput>
    </body>
</html>