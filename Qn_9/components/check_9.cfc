<cfcomponent>
    <cfset This.sessionmanagement="Yes">
    <cffunction  name="fnCheck" returnType="struct">
        <cfargument name="key" type="string" required="true">
        <cfargument name="value" type="string" required="true">
        <cfset local.key=arguments.key>
        <cfset local.value=arguments.value>
        <cfif not structKeyExists(session,"myStruct")>
            <cfset session.myStruct = structNew()>
        </cfif>
        <cfif structKeyExists(session.myStruct,local.key)>
            <cfset local.result = "#local.key# already exist">
        <cfelse>
            <cfset session.myStruct[local.key] = local.value>
            <cfset local.result = session.myStruct>
        </cfif>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>
