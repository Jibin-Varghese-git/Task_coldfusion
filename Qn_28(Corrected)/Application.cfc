<cfcomponent>
    <cfset  this.sessionmanagement="true">
    <cfset  this.datasource="cf_ds">

    <cffunction  name="onrequest" returntype="any">
        <cfargument name="requestpage">
        <cfset local.arrayExculdes = ["/Tasks/Qn_28(Corrected)/Login.cfm","/Tasks/Qn_28(Corrected)/Signup.cfm"]>
        <cfif arrayContains(local.arrayExculdes,arguments.requestpage)>
            <cfinclude  template="#arguments.requestpage#">
        <cfelseif structKeyExists(session, "structUserLogin")>
            <cfinclude  template="#arguments.requestpage#">
        <cfelse>
            <cfinclude  template="Login.cfm">
        </cfif>

    </cffunction>

</cfcomponent>