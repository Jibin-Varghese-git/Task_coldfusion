
<cffunction  name="cookieCount" returntype="any">
    
    <cfif not structKeyExists(cookie,"visitCount")>
        <cfcookie  name="visitCount" expires=1>
        <cfset cookie.visitCount = 0>
    </cfif>
    <cfset cookie.visitCount=cookie.visitCount + 1>
    <cfreturn cookie.visitCount>
</cffunction>