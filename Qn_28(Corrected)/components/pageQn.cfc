<cfcomponent>
<!---  Sign up     --->
    <cffunction  name="userSignUp" returntype="String">
        <cfargument  name="userName" type="string">
        <cfargument  name="pass1" type="string">
        <cfargument  name="roleid" type="numeric">

        <cfset local.userPassword = hash("#arguments.pass1#" , "SHA-256" , "UTF-8")>

        <cfquery name="qryUserCheck">
            SELECT count(userName) AS userCount 
            FROM userTable
            WHERE userName=<cfqueryparam VALUE='#arguments.userName#' CFSQLTYPE="CF_SQL_VARCHAR"> 
        </cfquery>

        <cfif qryUserCheck.userCount GT 0>
            <cfset local.result = "Username already exists">
        <cfelse>
            <cfquery name="qrySignUp">
                INSERT INTO userTable (userName,userPassword,roleId)
                VALUES (<cfqueryparam VALUE='#arguments.userName#' CFSQLTYPE="CF_SQL_VARCHAR">,
                        <cfqueryparam VALUE='#local.userPassword#' CFSQLTYPE="CF_SQL_VARCHAR">,
                        <cfqueryparam VALUE=#arguments.roleid# CFSQLTYPE="CF_SQL_VARCHAR">)                   
            </cfquery>

            <cfset local.result = "Data added succesfully">
        </cfif>
        <cfreturn local.result> 

    </cffunction>

<!--- Login --->
<cffunction  name="loginCheck" returntype="string">
        <cfargument  name="userName" type="string" required="true">
        <cfargument  name="password" type="string" required="true">

        <cfset local.password = hash("#arguments.password#" , "SHA-256" , "UTF-8")>

        <cfquery name="qryUserLogin">
            SELECT userid,
                userName,
                roleId 
            FROM userTable 
            WHERE   userName = <cfqueryparam VALUE='#arguments.userName#' CFSQLTYPE="CF_SQL_VARCHAR"> 
                AND userPassword = <cfqueryparam VALUE='#local.password#' CFSQLTYPE="CF_SQL_VARCHAR">
        </cfquery>

        <cfif qryUserLogin.recordcount>
            <cfset session.structUserLogin["userId"] = qryUserLogin.userId>
            <cfset session.structUserLogin["userName"] = qryUserLogin.userName>
            <cfset session.structUserLogin["roleId"] = qryUserLogin.roleId>
            <cflocation  url="Home.cfm">
        <cfelse>
            <cfset local.result = "Invalid Username or Password">
            <cfreturn local.result>
        </cfif>

    </cffunction>

<!--- LogOut --->
    <cffunction  name="logout" access="remote">
        <cfset  structClear(session)>
        <cfreturn true>
    </cffunction>

<!--- Fetch Files admin--->
    <cffunction  name="fetchFiles" returntype="any">
        <cfargument  name="userId" type="string">

        <cfquery name="qrySelectFiles">
            SELECT  pageId,
                    pageName,
                    pageDesc,
                    _createdBy 
            FROM pageTable 
            WHERE _createdBy =<cfqueryparam VALUE='#arguments.userId#' CFSQLTYPE="CF_SQL_VARCHAR">
        </cfquery>

        <cfset local.result = qrySelectFiles>
        <cfreturn local.result>
    </cffunction>

<!--- Fetch Files User--->
    <cffunction  name="fetchFilesUser" returntype="any">

        <cfquery name="qrySelectFiles">
            SELECT  pageId,
                    pageName,
                    pageDesc
            FROM pageTable 
        </cfquery>

        <cfset local.result = qrySelectFiles>
        <cfreturn local.result>
    </cffunction>

<!--- Add Page --->
    <cffunction  name="addPage" returntype="any">
        <cfargument  name="pageName" type="string">
        <cfargument  name="pageDesc" type="string">

        <cfset local.date = now()>
        <cfset local.userId = session.structUserLogin["userId"]>

        <cfquery name="qryPagecount">
            SELECT COUNT(pageName) AS pageCount 
            FROM pageTable 
            WHERE pageName=<cfqueryparam VALUE='#arguments.pageName#' CFSQLTYPE="CF_SQL_VARCHAR">
        </cfquery>

        <cfif qryPageCount.pageCount GT 0>
            <cfset local.result = false>
        <cfelse>

            <cfquery name="qryPageAdd">
                INSERT INTO pageTable (pageName,pageDesc,_createdBy,_createdOn,_updatedBy,_updatedOn)
                VALUES( <cfqueryparam VALUE='#arguments.pageName#' CFSQLTYPE="CF_SQL_VARCHAR">,
                        <cfqueryparam VALUE='#arguments.pageDesc#' CFSQLTYPE="CF_SQL_VARCHAR">,
                        <cfqueryparam VALUE='#local.userId#' CFSQLTYPE="CF_SQL_VARCHAR">,
                        <cfqueryparam VALUE='#local.date#' CFSQLTYPE="CF_SQL_DATE">,
                        <cfqueryparam VALUE='#local.userId#' CFSQLTYPE="CF_SQL_VARCHAR">,
                        <cfqueryparam VALUE='#local.date#' CFSQLTYPE="CF_SQL_DATE">
                    )
            </cfquery>
            <cfset local.result = true>
        </cfif>

        <cfreturn local.result>

    </cffunction>

<!--- Delete Page --->
    <cffunction  name="deletePage" returntype="string" access="remote">
        <cfargument  name="pageid" type="string" required="true">

        <cfquery name="qryDeletePage" datasource="cf_ds">
            DELETE FROM pageTable 
            WHERE pageId = <cfqueryparam value='#arguments.pageid#' CFSQLTYPE="CF_SQL_VARCHAR">
        </cfquery>
        
        <cfreturn true>

    </cffunction>


</cfcomponent>