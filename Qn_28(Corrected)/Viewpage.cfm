<html>
    <head>
        <title>View Page</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <script src="js/script.js"></script>
    </head>
    <body class="p-5">

         <header class="w-100  border border-success px-2">
            <input type="submit" name="logout" value="Logout" onclick="funLogout()" class=" p-2 bg-danger text-white float-end">
        </header>

       

        <div class="pageContainer border border-success">
            
           
                    <cfoutput>
                        <div class="border border-black bg-white">
                        
                            <cfif session.structUserLogin["roleId"] == "103">
                                <cfset local.newobj = createObject("component", "components.pageQn")>
                                <cfset local.result = local.newObj.fetchFilesUser()>
                                <cfloop query="#local.result#">
                                    <form method="POST">
                                        <h4>#local.result.pageName#</h4>
                                        <p>#local.result.pageDesc#</p>
                                    </form>
                                </cfloop>
                            <cfelse>
                                <cfset local.newobj = createObject("component", "components.pageQn")>
                                <cfset local.result = local.newObj.fetchFiles(session.structUserLogin["userId"])>
                                <cfloop query="#local.result#">
                                    <form method="POST">
                                        <h4 class="">
                                            #local.result.pageName# 
                                            <div>
                                                <input type="button" value="Edit" class="editBtn bg-success text-white m-2" onclick="funEdit()">
                                                <button type="button" value="#local.result.pageId#" class="deleteBtn bg-danger text-white m-2" onclick="funDelete(this)">Delete</button>
                                            </div>
                                        </h4>
                                        <p>#local.result.pageDesc#</p>
                                    </form>
                                </cfloop>
                            </cfif>
                        </div>
                    </cfoutput>

            <div>
                <a href="Pageadd.cfm">
                    <input type="submit" name="addPage" value="Add More Pages"  class="p-2 bg-success text-white float-end">
                </a>
            </div>
        </div>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    </body>

</html>