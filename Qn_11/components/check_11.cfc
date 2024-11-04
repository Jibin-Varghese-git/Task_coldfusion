<cfcomponent>
    <cffunction  name="multiply" returnType="any">
        <cfargument name="myList" type="any" required="true">
        <cfset val=arguments.myList>
        <cfset mul = 1>
        <cfloop list="#val#" index="name"> 
            <cfset mul = mul*name>
        </cfloop>
        <cfreturn mul>
    </cffunction>
</cfcomponent>
