<cffunction  name="fnCheck" type="struct">
    <cfargument  name="imgName" type="any" required="true">
    <cfargument  name="imgDescription" type="any" required="true">
    <cfargument  name="imgUpload" type="any" required="true">
    <cfset local.imagesize = getFileInfo(arguments.imgUpload).size>
    <cfif local.imagesize GT 10000>
        <cfset local.myStruct["error"] = 0>
    <cfelse>
        <cfset local.img=imageRead(arguments.imgUpload)>
        <cfset local.myStruct["imgUpload"] =local.img>
        <cfset local.myStruct["imgName"] = arguments.imgName>
        <cfset local.myStruct["imgDescription"] = arguments.imgDescription>
        <cfset local.myStruct["error"] = 1>
    </cfif>
        <cfreturn local.myStruct>
</cffunction>