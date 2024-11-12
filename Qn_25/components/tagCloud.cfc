<cfcomponent>
    <cffunction  name="addTextDB" returntype="string">
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
        <cfset local.result = "Data addedd">
       <cfreturn local.result>
    </cffunction>
<!--- Task-2 Fucnction --->
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
        <cfset local.myStruct["key"] = local.structKeySort>
<!---  count sort        --->
        <cfset local.structCountSorted=structNew("ordered")>
        <cfset local.arraySorted = structSort(structKeySort, "numeric", "desc")>
        <cfloop array="#local.arraySorted#" item="item">
            <cfset local.structCountSorted[item] = myStruct[item]>
        </cfloop>  
         <cfset local.myStruct["count"] = local.structCountSorted> 
   <!--- Length sort        --->     
        <cfset local.limit=3>
        <cfset local.lengthSortArray = []>
        <cfloop collection="#local.structCountSorted#" item="item">
            <cfif len(item) GTE local.limit>
                <cfset arrayAppend(local.lengthSortArray, item) >
            </cfif>
        </cfloop>
        <cfset local.start = 1>
        <cfset local.length = arrayLen(local.lengthSortArray)>
         <cfloop  from="#local.start#" to="#local.length#" index="i">
            <cfloop  from="#i + 1#" to="#local.length#" index="j">
                <cfif Len(local.lengthSortArray[i]) LT Len(local.lengthSortArray[j]) >
                    <cfset local.temp = local.lengthSortArray[i]>
                    <cfset local.lengthSortArray[i]=local.lengthSortArray[j]>
                    <cfset local.lengthSortArray[j]=local.temp>
                </cfif>
            </cfloop>
        </cfloop>
        <cfset local.structLengthSort = structNew("ordered")>
        <cfloop array="#local.lengthSortArray#" index="index">
            <cfset local.structLengthSort[index] = local.structCountSorted[index]>
        </cfloop>
        <cfset  local.mystruct["length"] = local.structLengthSort>
        <cfreturn local.myStruct>
   </cffunction>
<!--- Task-3 Function --->
    <cffunction  name="sizeOfText" returntype="struct">
        <cfargument  name="textInput" type="string" required="true">
        <cfset local.myStruct = structNew()>
        <cfloop list="#arguments.textInput#" item="item" delimiters=" .">
            <cfif Not structKeyExists(local.myStruct, "#item#")>
                <cfset local.myStruct[#item#] = 0>
            </cfif>
            <cfset  local.myStruct[#item#]= local.myStruct[#item#] + 1>
        </cfloop>
        <cfreturn local.myStruct>
    </cffunction>
</cfcomponent> 