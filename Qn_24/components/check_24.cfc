<cfcomponent>
    <cffunction  name="checkEmail" returntype="any" access="remote">
        <cfargument  name="userEmail" type="string" required='true'>
            <cfquery name="emailCheck" datasource="cf_ds"> 
                     select count(email) as emailcount from user_qn24 where email='#arguments.userEmail#';
            </cfquery>
            <cfif emailCheck.emailCount GT 0>
                <cfset  local.result = true>
                <cfreturn local.result>
            </cfif>
    </cffunction>

    <cffunction  name="emailAdd" returntype="any">
        <cfargument  name="userEmail" type="string" required='true'>
        <cfargument  name="userName" type="string" required='true'>
            <cfquery name="emailAdd" datasource="cf_ds"> 
                     insert into user_qn24 values ('#arguments.userName#' , '#arguments.userEmail#')
            </cfquery>
            <cfset local.result = "Data added successfully">
            <cfreturn local.result>
    </cffunction>
</cfcomponent>