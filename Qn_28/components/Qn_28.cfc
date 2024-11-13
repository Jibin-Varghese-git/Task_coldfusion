<cfcomponent>
<!---  signup    ---> 
    <cffunction  name="userSignUp" returntype="string">
        <cfargument  name="userName" type="string" required="true">
        <cfargument  name="pass1" type="string" required="true">
        <cfargument  name="pass2" type="string" required="true">
        <cfargument  name="role" type="string" required="true">
        <cfquery name="qryUserCheck" datasource="cf_ds">
            SELECT count(userName) AS userCount 
            FROM qn28User 
            WHERE userName=<cfqueryparam VALUE='#arguments.userName#' CFSQLTYPE="CF_SQL_VARCHAR"> 
        </cfquery>
        <cfif qryUserCheck.userCount GT 0>
            <cfset local.result = "Username already exists">
        <cfelse>
            <cfquery name="qrySignUp" datasource="cf_ds">
                INSERT INTO qn28User VALUES (<cfqueryparam VALUE='#arguments.userName#' CFSQLTYPE="CF_SQL_VARCHAR">,
                                             <cfqueryparam VALUE='#arguments.pass1#' CFSQLTYPE="CF_SQL_VARCHAR">,
                                             <cfqueryparam VALUE='#arguments.role#' CFSQLTYPE="CF_SQL_VARCHAR">)
            </cfquery>
            <cfset local.result = "Data added succesfully">
        </cfif>
        <cfreturn local.result> 
    </cffunction>

<!--- Login --->
    <cffunction  name="loginCheck" returntype="string">
        <cfargument  name="userName" type="string" required="true">
        <cfargument  name="password" type="string" required="true">

        <cfquery name="qryUserLogin" datasource="cf_ds">
            SELECT userid,
                userName,
                role 
            FROM qn28User 
            where userName = <cfqueryparam VALUE='#arguments.userName#' CFSQLTYPE="CF_SQL_VARCHAR"> 
                AND pass = <cfqueryparam VALUE='#arguments.password#' CFSQLTYPE="CF_SQL_VARCHAR">
        </cfquery>

        <cfset local.result = "">
        <cfif qryUserLogin.userName == ''>
            <cfset local.result = "Invalid Username or Password">
            <cfreturn local.result>
        <cfelse>
            <cfset session.structUserLogin["userid"] = qryUserLogin.userid>
            <cfset session.structUserLogin["userName"] = qryUserLogin.userName>
            <cfset session.structUserLogin["role"] = qryUserLogin.role>
            <cflocation  url="./Qn_28Home.cfm" addToken="no">
        </cfif>

    </cffunction>

<!--- Page Input  --->
    <cffunction  name="pageInput" returntype="string">
        <cfargument  name="pageTitle" type="string" required="true">
        <cfargument  name="pageDesc" type="string" required="true">

        <cfquery name="qryPageInput" datasource="cf_ds">
            INSERT INTO Qn28Page VALUES (<cfqueryparam value="#arguments.pageTitle#" CFSQLTYPE="CF_SQL_VARCHAR">,
                                         <cfqueryparam value="#arguments.pageDesc#" CFSQLTYPE="CF_SQL_VARCHAR">)
        </cfquery>

        <cflocation  url="Qn_28pageView.cfm">
    </cffunction>

<!--- Page View --->
    <cffunction  name="viewPage" returntype="query">

        <cfquery name="qryViewPage" datasource="cf_ds">
            SELECT pageid,pageTitle,pageDesc 
            FROM Qn28Page ;
        </cfquery>

        <cfset local.result = qryViewPage>
        <cfreturn local.result>

    </cffunction>

<!---  Delete Page    --->
    <cffunction  name="deletePage" returntype="string">

        <cfargument  name="pageid" type="string" required="true">

        <cfquery name="qryDeletePage" datasource="cf_ds">
            DELETE FROM Qn28Page 
            WHERE pageid = <cfqueryparam value='#arguments.pageid#' CFSQLTYPE="CF_SQL_VARCHAR">
        </cfquery>

        <cflocation  url="Qn_28pageView.cfm">
        <cfset local.result = "Page deleted">
        <cfreturn local.result>

    </cffunction>

<!--- Single Page View --->
    <cffunction  name="selectPage" returntype="query">
        <cfargument  name="pageid" type="string">
        <cfquery name="qrySelectPage" datasource="cf_ds">
            SELECT pageid,pageTitle,pageDesc FROM Qn28Page  WHERE pageid = <cfqueryparam value='#arguments.pageid#' CFSQLTYPE="CF_SQL_VARCHAR">
        </cfquery>
        <cfset local.result = qrySelectPage>
        <cfreturn local.result>
    </cffunction>

<!--- Update Page --->
    <cffunction  name="pageEdit" returntype="any">
        <cfargument  name="pageTitle" type="string" required="true">
        <cfargument  name="pageDesc" type="string" required="true">
        <cfargument  name="pageid" type="string" required="true">
        <cfquery name="qryUpdatePage" datasource="cf_ds">
            update Qn28Page 
            set pageTitle=<cfqueryparam value='#arguments.pageTitle#' CFSQLTYPE="CF_SQL_VARCHAR">,
                                pageDesc=<cfqueryparam value='#arguments.pageDesc#' CFSQLTYPE="CF_SQL_VARCHAR">
                                where 
                                pageid=<cfqueryparam value='#arguments.pageid#' CFSQLTYPE="CF_SQL_VARCHAR">
        </cfquery>
        <cflocation  url="Qn_28pageView.cfm">
    </cffunction>

<!--- Logout --->
    <cffunction  name="logout" returntype="string">
        <cfset sessionInvalidate()>
        <cflocation  url="Qn_28Login.cfm">
    </cffunction>

</cfcomponent>
