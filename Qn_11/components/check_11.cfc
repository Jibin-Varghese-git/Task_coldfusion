<cfcomponent>
    <cffunction  name="multiply" returnType="string">
        <cfargument name="myList" type="string  " required="true">
        <cfset local.myList = arguments.myList>
        <cfset local.mulAnswer = 1>
        <cfloop list = "#local.myList#" index = "name"> 
            <cfset local.mulAnswer = local.mulAnswer * name>
        </cfloop>
        <cfreturn local.mulAnswer>
    </cffunction>
</cfcomponent>
