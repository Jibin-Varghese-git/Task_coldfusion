<cffunction  name="fnCheck" reutrntype="query" >
    <cfquery datasource="cf_ds" name="result">
        select * from qn12;
    </cfquery>
    <cfreturn result>
</cffunction>