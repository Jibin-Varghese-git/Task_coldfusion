<cfcomponent>    
    <cffunction  name="fnCheck" retuntype="query">
        <cfset queryEmail = queryNew("id,name,email", "integer,varchar,varchar")>

        <cfset queryAddRow(queryEmail)>
        <cfset querySetCell(queryEmail, "id", "1")>
        <cfset querySetCell(queryEmail, "name", "Billy Butcher")>
        <cfset querySetCell(queryEmail, "email", "abc@gmail.com")>

        <cfset queryAddRow(queryEmail)>
        <cfset querySetCell(queryEmail, "id", "2")>
        <cfset querySetCell(queryEmail, "name", "Victoria Truman")>
        <cfset querySetCell(queryEmail, "email", "bcd@gmail.com")>

        <cfset queryAddRow(queryEmail)>
        <cfset querySetCell(queryEmail, "id", "3")>
        <cfset querySetCell(queryEmail, "name", "Peter Parker")>
        <cfset querySetCell(queryEmail, "email", "cde@gmail.com")>

        <cfreturn queryEmail>
    </cffunction>
</cfcomponent>