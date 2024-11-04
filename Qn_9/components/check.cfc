<cfcomponent>
    <cfset This.sessionmanagement="Yes">
    <cffunction  name="fnCheck" returnType="any">
        <cfargument name="key" type="any" required="true">
        <cfargument name="value" type="any" required="true">
        <cfset key=arguments.key>
        <cfset value=arguments.value>
        <cfset myStruct = structNew()>
        <cfset session.myStruct[key] = value>
        <cfdump var="#session.myStruct#">
    </cffunction>
</cfcomponent>
