<cfcomponent>
    <cffunction  name="multiply" returnType="string">
        <cfset local.value=arguments>
        <cfset local.mulAnswer = 1>
        <cfloop array="#local.value#" index="name"> 
            <cfset local.mulAnswer = local.mulAnswer*name>
        </cfloop>
        <cfreturn local.mulAnswer>
    </cffunction>
</cfcomponent>
