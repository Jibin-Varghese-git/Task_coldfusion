<cfcomponent>
    <cffunction  name="fnCheck" returnType="any">
        <cfset local.todayDate = now()>
        <cfset local.result["today"] = dateFormat(local.todayDate,"dd-mm-yyyy")>
        <cfset local.monthNum =  month(todayDate)>
        <cfset local.monthString = monthAsString(monthNum)>
        <cfset local.result["monthNum"] = local.monthNum>
       <cfset local.result["monthString" ] = local.monthString>
<!---   Last Friday    --->
        <cfset local.dayofweekToday = dayOfWeek(todayDate)>
        <cfset local.fridayDiff=(6-local.dayofweekToday)-7>
        <cfset local.lastFriday = dateAdd("d",local.fridayDiff,local.todayDate)>
        <cfset local.lastFriday= dateFormat(local.lastFriday,"dd-mm-yyyy")>
        <cfset local.result["lastFriday"] = local.lastFriday>
<!---  Last day in month      --->
        <cfset local.DaysInMonth = daysInMonth(local.todayDate)>
        <cfset local.LastDayMonth = now()>
        <cfset local.LastDayMonth = local.LastDayMonth.setDay(local.DaysInMonth)>
        <cfset local.result["lastDaymonth"] = dateFormat(local.LastDayMonth,"eeee")>
<!---  Last 5 Days    --->
        <cfset local.diff =-5>
        <cfset local.start = 1>
        <cfset local.end = 5>
        <cfloop  index="i" from="#local.start#" to="#local.end#">
                <cfset local.arr[i] = dateAdd("d",local.diff,local.todayDate)>
                <cfset diff++>
        </cfloop>
        <cfset local.result["lastFiveDays"] = local.arr>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>
