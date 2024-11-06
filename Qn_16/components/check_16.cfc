<cfcomponent>
    <cffunction  name="fnCheck" returnType="any">
    <cfset local.c = 1>
        <cfloop  index="i" from="1" to="3">
            <cfset local.k = 0>
            <cfloop index="j" from="1" to="3">
                <cfset local.arr[c] = i+(3*local.k)>
                <cfset local.c++>
                <cfset local.k++>
            </cfloop>
        </cfloop>
        <cfreturn local.arr>
    </cffunction>
</cfcomponent>
