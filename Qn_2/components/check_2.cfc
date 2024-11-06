<cfcomponent>
    <cffunction  name="fnCheck" returnType="string">
        <cfargument name="numeric" type="numeric" required="true">
        <cfset local.val=arguments.num>
        <cfswitch expression=#local.val#> 
            <cfcase value="1">
                <cfset local.result = "OK">
            </cfcase>
            <cfcase value="2">
                <cfset local.result = "OK">
            </cfcase>
            <cfcase value="3">
                <cfset local.result = "Fair">
            </cfcase>
            <cfcase value="4">
                <cfset local.result = "Good">
            </cfcase>
            <cfcase value="5">
                <cfset local.result = "Very Good">
            </cfcase>
            <cfdefaultcase>
                <cfset local.result = "Invalid! Enter (1-5)">
            </cfdefaultcase> 
        </cfswitch>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>






