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

        <cfset local.result = "">
        <cfif qryUserLogin.userName == ''>
            <cfset local.result = "Invalid Username or Password">
            <cfreturn local.result>
        <cfelse>
            <cfset session.qryUserLogin = qryUserLogin>
            <cflocation  url="Home.cfm">
        </cfif>

    </cffunction>

<!--- LogOut --->
    <cffunction  name="logout">
        <cfset sessionInvalidate()>
        <cflocation  url="Login.cfm">
    </cffunction>


</cfcomponent>