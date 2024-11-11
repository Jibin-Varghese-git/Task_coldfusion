<cfcomponent>
    <cffunction  name="cookieCount" returntype="any">
        <cfargument  name="inputValue" type="any" required="true">
        <cfargument  name="captchaText" type="any" required="true">
        <cfargument  name="email" type="any" required="true">
        <cfset inputValue = arguments.inputValue>
        <cfset captchaText = arguments.captchaText>
        <cfset email = arguments.email>

        <cfif inputValue==captchaText && reFind( "^[^\s@]+@[^\s@]+\.[^\s@]+$" , email)>
            <cfset result=1>
        <cfelse>
            <cfset result=0>
        </cfif>
        <cfreturn result>
    </cffunction>
</cfcomponent>