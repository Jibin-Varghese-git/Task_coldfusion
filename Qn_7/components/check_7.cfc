<cfcomponent>
    <cfset This.sessionmanagement="Yes">
    <cffunction  name="fnCheck" returnType="sruct">
        <cfargument name="key" type="string" required="true">
        <cfargument name="value" type="string" required="true">
        <cfset local.key=arguments.key>
        <cfset local.value=arguments.value>
        <cfset myStruct = structNew()>
        <cfset session.myStruct[local.key] = local.value>
        <cfreturn session.myStruct>
    </cffunction>
</cfcomponent>