<cfcomponent>
    <cffunction  name="fnCheck" returnType="any">
        <cfargument name="arr" type="any" required="true">
        <cfset local.val=arguments.arr>
        arr1=arrayNew(10);
        <cfloop array="#myArray#" index="idx">
            
            <cfif #idx# % 3 EQ 0>
                toAppend=ArrayAppend(arr1,11,true)
            </cfif> 
            
        <cfreturn local.arr1>
    </cffunction>
</cfcomponent>






