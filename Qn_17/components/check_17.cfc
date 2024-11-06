<cfcomponent>
    <cffunction  name="fnCheck" returnType="any">
        <cfargument  name="num">
        <cfset local.num = arguments.num>
        <cfset local.myStruct = structNew()>
        <cfloop  index="i" from="1" to="#num#">
            <cfif i % 2==0>
                <cfset local.myStruct[i] = "green">
             <cfelse>
                <cfset local.myStruct[i] = "blue">    
            </cfif>
        </cfloop>
        <cfreturn local.myStruct>
    </cffunction>
</cfcomponent>
