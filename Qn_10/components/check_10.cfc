<cfcomponent>
    <cfset This.sessionmanagement="Yes">
    <cffunction  name="fnCheck" returnType="any">
        <cfargument name="key" type="any" required="true">
        <cfargument name="value" type="any" required="true">
        <cfset key=arguments.key>
        <cfset value=arguments.value>
        <cfif not structKeyExists(session,"myStruct")>
            <cfset session.myStruct = structNew()>
        </cfif>
        <cfif structKeyExists(session.myStruct,key)>
            <cfdump  var="#key# already exist">
        <cfelse>
            <cfset session.myStruct[key] = value>
        </cfif>
        <cfdump var="#session.myStruct#">
    </cffunction>
</cfcomponent>
