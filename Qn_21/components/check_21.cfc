<cfcomponent>
    <cffunction  name="fnCheck" returntype="string">
        <cfargument  name="structBday" type="any" required="true">
        <cfset local.personName = arguments.structBday[personName]>
        <cfset local.personMail = arguments.structBday[personMail]>
        <cfset local.bdayDescription = arguments.structBday[bdayDescription]>
        <cfset local.imgUpload = arguments.structBday[imgUpload]>

        <cfmail  from="jjj@gmail.com"  subject="Happy Birthday #local.personName#"  to="#local.personMail#">
            #local.bdayDescription#
            <cfimage action="writeToBrowser" source="#local.imgUpload#">
        </cfmail>
        <cfset local.result = "Email Sent Successfully">
        <cfreturn local.result>
    </cffunction>
</cfcomponent>