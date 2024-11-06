<cfcomponent>
    <cffunction  name="fnCheck" returnType="string">
        <cfargument name="subString" type="string" required="true">
        <cfargument name="myString" type="string" required="true">
        <cfset local.subString=arguments.subString>
        <cfset local.myString=arguments.myString>
        <cfset local.result = listValueCount(local.myString,local.subString," ")>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>
