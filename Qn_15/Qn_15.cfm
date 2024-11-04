<cfapplication name="app" sessionmanagement="Yes">
<html>
    <head>
    <title>>Questiion-15</title>
    <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
    </head>
    <body class="p-5">
        <div class="border border-danger d-flex justify-content-around">
            <h2>RESULTS:</h2>
            <div class= p-2>  
                <cfoutput>
                        <cfset newObject = createObject("component", "components.check_15")>
                        <cfset result1 = newObject.multiply(1,2)>
                        <cfdump  var="create object method: #result1#"><br>                   
                        <cfobject  name="newObject" type="component" component="components.check_15">
                        <cfset result2 = newObject.multiply(1,2,3)>
                        <cfdump  var="cfobject method: #result2#"><br>  
                        <cfinvoke  component="components.check_15" method="multiply" returnVariable="result3"> 
                            <cfinvokeargument  name="value1"  value="1">
                            <cfinvokeargument  name="value2"  value="2">
                            <cfinvokeargument  name="value3"  value="3">
                            <cfinvokeargument  name="value4"  value="4">                
                        </cfinvoke>
                        <cfdump  var="cfinvoke method: #result3#"> 
                </cfoutput>
            </div>
        </div>
    </body>
</html>