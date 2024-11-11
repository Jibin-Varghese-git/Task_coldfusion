<cfcomponent>
    <cffunction  name="addTextDB" returntype="struct">
        <cfargument  name="textInput" type="string" required="true">
        <cfset local.myStruct = structNew()>
        <cfloop list="#arguments.textInput#" item="item" delimiters=" .">
            <cfif Not structKeyExists(local.myStruct, "#item#")>
                <cfset local.myStruct[#item#] = 0>
            </cfif>
            <cfset  local.myStruct[#item#]= local.myStruct[#item#] + 1>
        </cfloop>
        <cfloop collection="#local.myStruct#" item="item">
            <cfquery name="addWord" datasource="cf_ds">
                select count(word) as wordcount from qn25Table where word='#item#';
            </cfquery>
                <cfif  NOT addWord.wordcount>
                    <cfquery name="addWord" datasource="cf_ds">
                        insert into qn25Table values ('#item#') ;
                    </cfquery>
                </cfif>
        </cfloop>
       <cfreturn local.myStruct>
    </cffunction>

   <cffunction  name="showWords" returntype="any">
        <cfargument  name="textInput" type="string" required="true">
        <cfset local.myStruct = structNew()>
<!---    key sort      --->
        <cfloop list="#arguments.textInput#" item="item" delimiters=" .">
            <cfif Not structKeyExists(local.myStruct, "#item#")>
                <cfset local.myStruct[#item#] = 0>
            </cfif>
            <cfset  local.myStruct[#item#]= local.myStruct[#item#] + 1>
        </cfloop>
        <cfset local.structKeySort = StructToSorted(local.myStruct, "text", "asc")>
        <cfdump  var="#local.structKeySort#">
<!---  count sort        --->
        <cfset local.structCountSorted=structNew("ordered")>
        <cfset local.arraySorted = structSort(structKeySort, "numeric", "desc")>
        <cfdump  var="#local.arraySorted#">
        <cfloop array="#local.arraySorted#" item="item">
            <cfset local.structCountSorted[item] = myStruct[item]>
        </cfloop>   
   <!--- Length sort        --->     
        <cfset local.limit=3>
        <cfset local.lengthSortArray = []>
        <cfloop collection="#local.structCountSorted#" item="item">
            <cfif len(item) GTE local.limit>
                <cfset arrayAppend(local.lengthSortArray, item) >
            </cfif>
        </cfloop>
        <cfdump  var="#local.lengthSortArray#">
        <cfset local.start = 1>
        <cfset local.length = arrayLen(local.lengthSortArray)>
        <cfloop array="#local.lengthSortArray#" from="#local.start#" to="#local.length#" index="i">
            <cfloop array="#local.lengthSortArray#" from="#local.start + 1#" to="#local.length#" index="j">
                    <cfif Len(local.lengthSortArray[i]) LT Len(local.lengthSortArray[j]) >
                        <cfset local.temp = local.lengthSortArray[i]>
                        <cfset local.lengthSortArray[i]=local.lengthSortArray[j]>
                        <cfset local.lengthSortArray[j]=local.temp>
                    </cfif>
            </cfloop>
        </cfloop>
        <cfdump  var="#local.lengthSortArray#">
        <cfreturn local.myStruct>
   </cffunction>
</cfcomponent> 