<cfcomponent>
    <cfset This.sessionmanagement="Yes">
    <cffunction  name="fnCheck" returnType="any">
        <cfargument name="key" type="any" required="true">
        <cfargument name="value" type="any" required="true">
        <cfset key=arguments.key>
        <cfset value=arguments.value>
        <cfset session.keyArray = []>
        <cfset session.valueArray = []>
        <cfset arrayAppend(session.keyArray, #key#)>
        <cfset arrayAppend(session.valueArray, #value#)>
        <cfloop index="i" from="1" to="#arrayLen(session.keyArray)#">
        <cfdump var="#session.keyArray[i]# : #session.valueArray[i]#">
        </cfloop>
    </cffunction>
</cfcomponent>
