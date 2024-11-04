<cfcomponent>
    <cffunction  name="fnCheck" returnType="any">
        <cfset local.todayDate = now()>
        <cfdump  var="Today Date : #local.todayDate#"><br>
        <cfset monthNum =  month(todayDate)>
        <cfset monthString = monthAsString(monthNum)>
        <cfdump  var="Month in num:#monthNum#"><br>
        <cfdump  var="Month in alphabet:#monthString#"><br>
<!---   Last Friday    --->
        <cfset dayofweekToday = dayOfWeek(todayDate)>
        <cfset fridayDiff=(6-dayofweekToday)-7>
        <cfdump  var="Last friday is #dateAdd("d",fridayDiff,todayDate)#"><br>
<!---  Last day in month      --->
        <cfset DaysInMonth = daysInMonth(todayDate)>
        <cfset LastDayMonth = now()>
        <cfset LastDayMonth = LastDayMonth.setDay(DaysInMonth)>
        <cfdump  var="Last Day in Month:#dateFormat(LastDayMonth,"eeee") #"><br>
<!---  Last 5 Days    --->
        <cfset diff =-5>
        <cfloop  index="i" from="1" to="5">
            <cfset dateadd = dateAdd("d",diff,todayDate)>
            <cfset arr[i] = dateFormat(dateadd,"dd-mm-yyyy-eeee")>
             <cfdump  var="#arr[i]#"><br>
             <cfset diff++>
        </cfloop>
       
    </cffunction>
</cfcomponent>
