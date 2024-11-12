<cfcomponent>
    <cffunction  name="fnCheck" returnType="any">
    <cfset local.c = 1>
    <cfset local.start = 1>
    <cfset local.end = 3>
        <cfloop  index="i" from="#local.start#" to="#local.end#">
            <cfset local.k = 0>
            <cfloop index="j" from="#local.start#" to="#local.end#">
                <cfset local.arr[c] = i+(3*local.k)>
                <cfset local.c++>
                <cfset local.k++>
            </cfloop>
        </cfloop>
        <cfreturn local.arr>
    </cffunction>
</cfcomponent>
