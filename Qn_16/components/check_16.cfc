<cfcomponent>
    <cffunction  name="fnCheck" returnType="any">
    <cfset c = 1>
        <cfloop  index="i" from="1" to="3">
            <cfset k = 0>
            <cfloop index="j" from="1" to="3">
                <cfset arr[c] = i+(3*k)>
                <cfset c++>
                <cfset k++>
            </cfloop>
        </cfloop>
        <cfreturn arr>
    </cffunction>
</cfcomponent>
