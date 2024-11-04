<cfcomponent>
    <cffunction  name="fnCheck" returnType="any">
     <cfset local.todayDate = now()>
     <cfdump  var="Today Date : #local.todayDate#">
     <cfset monthNum =  month(todayDate)>
     <cfset monthString = monthAsString(todayDate)>
     <cfdump  var="It is month:#monthNum# #monthString#">
    </cffunction>
</cfcomponent>
