<cfcomponent>
    <cffunction  name="multiply" returnType="any">
        <cfset val=arguments>
        <cfset mul = 1>
        <cfloop array="#val#" index="name"> 
            <cfset mul = mul*name>
        </cfloop>
        <cfreturn mul>
    </cffunction>
</cfcomponent>
