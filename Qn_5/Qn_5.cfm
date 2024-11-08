<html>
<head>
    <title>Question 5</title>
    <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
</head>
<body class = "w-100" >
    <cfoutput>
        <form method="POST">
            <div class="border border-success d-flex flex-column justify-content-between align-items-center p-3">
                <label>Enter your date of birth</label>
                <input type="date" name="dobYou" >
                <br>
                <label>Enter your mothers date of birth</label>
                <input type="date" name="dobMother">
                <br>
                <input type="submit">
            </div>
        </form>
        <div class="border border-danger d-flex justify-content-around">
            <h2>RESULTS:</h2>
            <div class= p-2>
                <cfif isDefined("form.dobYou") && isDefined("form.dobMother")>
                    <cfset newObject = createObject("component", "components.check_5")>
                    <cfset result = newObject.fnCheck(form.dobYou,form.dobMother)>
                    <div>
                        <span>Your Age </span><span> #result[1]#</span>
                    </div>
                    <div>
                        <span>Mothers age during delivery </span><span> #result[2]#</span>
                    </div>
                    <div>
                       <span>Remaining days for your birthday</span><span> #result[3]#</span>
                    </div>
                    <div>
                        <span>Remaining days for mothers birthday</span><span> #result[4]#</span>
                    </div>
                </cfif>
            </div>    
        </div>
    </cfoutput>
</body>
</html>

