<cfcomponent>
    <cffunction  name="fnCheck" returnType="any">
        <cfargument  name="num">
        <cfset num = arguments.num>
        <cfset myStruct = structNew()>
        <cfloop  index="i" from="1" to="#num#">
            <cfif i % 2==0>
                <cfset myStruct[i] = "green">
             <cfelse>
                <cfset myStruct[i] = "blue">    
            </cfif>
        </cfloop>
        <cfreturn myStruct>
    </cffunction>
</cfcomponent>
