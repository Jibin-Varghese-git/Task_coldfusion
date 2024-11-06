<cfcomponent>
    <cffunction  name="fnCheck" returnType="array">
        <cfargument name="dobYour" type="date" required="true">
        <cfargument name="dobMother" type="date" required="true">
        <cfset local.dobYour=arguments.dobYour>
        <cfset local.dobMother=arguments.dobMother>
        <cfset local.ageYour = DateDiff('yyyy', local.dobyour, now())>
        <cfset local.agemother = DateDiff('yyyy', local.dobmother, now())>
        <cfset local.nextBirthdayYou = local.dobYour.setYear(year(now()))>
        <cfset local.remainingDayYour = dayOfYear(local.nextBirthdayYou) - dayOfYear(now())>
        <cfif local.remainingDayYour LT 0>
            <cfset local.remainingDayYour=(365+local.remainingDayYour)>    
        </cfif>
        <cfset local.nextBirthdayMother = local.dobMother.setYear(year(now()))>
        <cfset local.remainingDayMother = dayOfYear(local.nextBirthdayMother) - dayOfYear(now())>
        <cfif local.remainingDayMother LT 0>
            <cfset local.remainingDayMother=(365+local.remainingDayMother)>    
        </cfif>
        <cfset local.result = []>
        <cfset arrayAppend(local.result, local.ageYour) >
        <cfset arrayAppend(local.result,  local.agemother-local.ageYour)>
        <cfset arrayAppend(local.result,  local.remainingDayYour)>
        <cfset arrayAppend(local.result,  local.remainingDayMother)>
        <cfreturn result>
    </cffunction>
</cfcomponent>
