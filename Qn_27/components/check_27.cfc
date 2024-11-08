<cffunction  name="fnUserValidate" returntype="any">
    <cfargument  name="userName" type="string" required="true">
    <cfargument  name="password" type="string" required="true">
    <cfif NOT structKeyExists(session, "username")>
        <cfset session.userName = "User123">
        <cfset session.password = "User@123">
    </cfif>
    <cfset local.result = false>
    <cfif arguments.userName == session.userName && arguments.password == session.password>
        <cfset local.result = true>
    </cfif>
    <cfreturn local.result>
</cffunction>