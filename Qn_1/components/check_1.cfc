<cfcomponent>
    <cffunction  name="fnCheck" returnType="string">
    <cfargument name="num" type="numeric" required="true">
    <cfset local.val=arguments.num>
        <cfif local.val EQ 5>
            <cfset result="Very Good">
        <cfelseif local.val EQ 4>
            <cfset result="Good">
        <cfelseif local.val EQ 3>
            <cfset result="Fair">
        <cfelseif local.val EQ 2  OR local.val EQ 1>
            <cfset result="OK">
        <cfelse>
            <cfset result="Invalid ! Please select  number(1 - 5)">
        </cfif>
    <cfreturn result>
    </cffunction>
</cfcomponent>






