<html>
    <head>
        <title>Question 4</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css"
    </head>
    <body class = "w-100 p-5">
        <div class="border border-success p-5">
            <cfoutput>
                <cfset local.newObject = createObject("component", "components.check_4")>
                <cfset local.result = local.newObject.fnCheck()>
                <span class="fw-bold">TODAY IS : #local.result["today"]#</span><br>
                <span class="fw-bold">MONTH IN NUMBER : #local.result["monthNum"]#</span><br>
                <span class="fw-bold">MONTH IN STRING : #local.result["monthString"]#</span><br>
                <span class="fw-bold">LAST FRIDAY : #local.result["lastFriday"]#</span><br>
                <span class="fw-bold">LAST DAY IN MONTH : #local.result["lastDayMonth"]#</span><br>
                <cfset  local.structLastFive="#local.result["lastFiveDays"]#">
                <h3>LAST FIVE DAYS</h3>

                <cfloop collection="#local.structLastFive#" item="item">
                    <cfset local.day = dateFormat(local.structLastFive[item] , "ddd")>
                    <cfset local.dateToPrint = dateFormat(local.structLastFive[item] , "dd-mm-yyyy-eeee")>
                    <cfswitch expression=#local.day#>
                        <cfcase value="Sun">
                            <span class="fw-bold text-danger">#local.dateToPrint#</span>
                        </cfcase>
                        <cfcase value="Mon">
                            <span class="fw-bold text-success">#local.dateToPrint#</span>
                        </cfcase>
                        <cfcase value="Tue">
                            <span class="orange fw-bold">#local.dateToPrint#</span>
                        </cfcase>
                        <cfcase value="Wed">
                            <span class="fw-bold text-warning">#local.dateToPrint#</span>
                        </cfcase>
                        <cfcase value="Thu">
                            <span class="fw-bold text-black">#local.dateToPrint#</span>
                        </cfcase>
                        <cfcase value="Fri">
                            <span class="fw-bold text-primary">#local.dateToPrint#</span>
                        </cfcase>
                        <cfcase value="Sat">
                            <span class="bold-red fw-bold">#local.dateToPrint#</span>
                        </cfcase>
                    </cfswitch>
                    <br>
                </cfloop>

            </cfoutput>
        </div>
    </body>
</html>

