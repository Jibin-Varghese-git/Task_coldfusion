<cffunction  name="fnCheck" type="">
    <cfargument  name="imgName" type="string" required="true">
    <cfargument  name="imgDescription" type="string" required="true">
    <cfargument  name="imgUpload" type="string" required="true">
    <cfset local.img = imageRead(arguments.imgUpload)>
    <cfset local.myStruct["imgUpload"] = local.img>
    <cfset local.myStruct["imgName"] = arguments.imgName>
    <cfset local.myStruct["imgDescription"] = arguments.imgDescription>
    <cfreturn local.myStruct>
</cffunction>