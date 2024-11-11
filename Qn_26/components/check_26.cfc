<cfcomponent>
    <cffunction  name="addText" returtype="string">
        <cfargument  name="fileText" type="string" required="true">
            <cfloop list="#arguments.fileText#" item="item" delimiters=" .">
                 <cfquery name="addWord" datasource="cf_ds">
                select count(words) as wordcount from qn26Table where words='#item#';
            </cfquery>
                <cfif  NOT addWord.wordcount>
                    <cfquery name="addWord" datasource="cf_ds">
                        insert into qn26Table values ('#item#') ;
                    </cfquery>
                </cfif>
            </cfloop>
            <cfset local.result = "Date added successfully">
            <cfreturn local.result>
    </cffunction>
</cfcomponent>