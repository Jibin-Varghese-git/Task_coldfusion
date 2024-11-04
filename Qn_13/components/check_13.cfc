<cfcomponent>
    <cffunction  name="fnCheck" returnType="any">
        <cfargument name="subString" type="any" required="true">
        <cfargument name="myString" type="any" required="true">
        <cfset subString=arguments.subString>
        <cfset myString=arguments.myString>
        <cfset result = listValueCount(myString,subString," ")>
        <cfreturn result>
    </cffunction>
</cfcomponent>
