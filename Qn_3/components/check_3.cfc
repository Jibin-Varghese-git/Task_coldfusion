<cfcomponent>
    <cffunction  name="fnCheck" returnType="string">
        <cfargument name="num" type="string" required="true">
        <cfset local.val=arguments.num>
        <cfset result ="">
        <cfloop list="#val#" index="name"> 
            <cfif #name# % 3 != 0>
                <cfcontinue>
            </cfif> 
            <cfset result=listAppend(result, name,",")>
        </cfloop>
        <cfreturn result>
    </cffunction>
</cfcomponent>



 


