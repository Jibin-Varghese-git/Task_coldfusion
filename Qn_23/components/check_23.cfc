<cfcomponent>
    <cffunction  name="fnUser" returntype="string">
        <cfargument  name="structUser" type="struct" required="true">
        
        <cfquery name="userDetail" datasource="cf_ds">
                insert into Qn23_userDetails (designation,
                                            locateOption,
                                            startDate,
                                            website,
                                            userResume,
                                            salary,
                                            fname,
                                            lname,
                                            email,
                                            phn)
                                        values ('#arguments.structUser["designation"]#',
                                                '#arguments.structUser["locateOption"]#',
                                                '#arguments.structUser["startDate"]#',
                                                '#arguments.structUser["webSite"]#',
                                                '#arguments.structUser["userResume"]#',
                                                '#arguments.structUser["salary"]#',
                                                '#arguments.structUser["fname"]#',
                                                '#arguments.structUser["lname"]#',
                                                '#arguments.structUser["userEmail"]#',
                                                '#arguments.structUser["phn"]#')
        
        </cfquery>

        <cfset local.result = "Data Stored succefully">
        <cfreturn local.result>
    </cffunction>
</cfcomponent>