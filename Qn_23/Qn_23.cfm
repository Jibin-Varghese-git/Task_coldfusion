<html>
    <head>
        <title>>Question-23</title>
        <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <script src="./js/script.js"></script>
    </head>
    <body>
        
            <div class="mid-container bg-white pb-3">
                <div class="header-logo">
                    <a class="logo-link" href="">
                        <img src="Assets/Images/wflogo.png" alt="No image found">
                    </a>
                </div>
                <form method="POST" class="p-2 bg-white" enctype="multipart/form-data">
                    <header class="p-4 my-2">
                        <h4>Employment Application</h4>
                        <div class="header-div-one mt-2">Infinity Box Inc.</div>
                    </header>

                    <div class="content-questions">
                        <div class="qn1-div p-3 w-75" id="qn1-div">
                            <label class="qns-label fw-bold">Which position are you applying for?</label>
                            <span class="text-danger fw-bold">*</span><br>
                            <select class="qn1-select" name="designation" id="designation">
                                <option value="" selected="selected"></option>
                                <option value="Interface Designer">Interface Designer</option>
                                <option value="Software Engineer">MSoftware Engineer</option>
                                <option value="System Administrator">System Administrator</option>
                                <option value="Office Manager">Office Manager</option>
                            </select><br>
                            <span id="errorDesignation" class="text-danger"></span>
                        </div>

                        <div class="qn2-div p-3 w-75">
                            <label class="qns-label fw-bold">Are you willing to relocate?</label>
                             <span class="text-danger fw-bold">*</span><br>
                            <input type="radio" value="Yes" name="locateOption" checked><label class="ms-2">Yes</label><br>
                            <input type="radio" value="No" name="locateOption"><label class="ms-2">No</label>
                        </div>

                        <div class="qn3-div p-3 w-75" id="qn3-div">
                            <label class="qns-label fw-bold mb-2">When can You start ?</label>
                             <span class="text-danger fw-bold">*</span><br>
                            <input type="date"  name="startDate" id="startDate"><br>
                            <span id="errorStartDate" class="text-danger"></span>
                        </div>

                        <div class="qn4-div p-3 w-75">
                            <label class="qns-label fw-bold mb-2">Portfolio Web Site</label>
                             <span class="text-danger fw-bold">*</span><br>
                            <input class="w-50" type="text" value="http://"  name="webSite" id="webSite"><br>
                            <span id="errorWebSite" class="text-danger"></span>
                        </div>

                        <div class="qn5-div p-3 w-75">
                            <label class="qns-label fw-bold mb-2">Attach a Copy of Your Resume</label><br>
                            <input class="w-50" type="file"   name="userResume">
                        </div>

                        <div class="qn6-div p-3 ">
                            <label class="qns-label fw-bold mb-2">Salary</label><br>
                            <label class="me-2">$</label><input class="salaryDollar" type="text" id="salaryDollar" name="salaryDollar"><span class="mx-2">.</span><input class="salaryCent" type="text" id="salaryCent" name="salaryCent"><br>
                            <span id="errorSalary" class="text-danger"></span>
                        </div>
                    </div>
                    <div class="contactInfo p-2">
                        <h6>Your contact Information</h6>

                        <div class="userName p-3 w-75" id="userName">
                            <label class="qns-label fw-bold mb-2">Name</label>
                             <span class="text-danger fw-bold">*</span><br>
                            <input type="text" name="fname" id="fname" class="fname me-2"><input type="text" name="lname" id="lname" class="lname"><br>
                            <label class="me-5">First</label><label class="ms-4">Last</label><br>
                            <span id="errorUserName" class="text-danger"></span>
                        </div>

                        <div class="userEmailAddress p-3 w-75 mt-1" id="userEmailAddress">
                            <label class="qns-label fw-bold mb-2">Email Address</label>
                            <span class="text-danger fw-bold">*</span><br>
                            <input type="text" name="userEmail" id="userEmail" class="userEmail"><br>
                            <span id="errorUserMail" class="text-danger"></span>
                        </div>

                        <div class="userPhoneNo p-3 w-75 mt-1" id="userPhoneNo">
                            <label class="qns-label fw-bold mb-2">Phone</label>
                            <span class="text-danger fw-bold">*</span><br>
                            <input name="phn1" type="text" id="phn1" size="3" class="required">
                            <input name="phn2" type="text" id="phn2" size="3" class="required">
                            <input name="phn3" type="text" id="phn3" size="4" class="required"><br>
                            <span id="errorPhn" class="text-danger"></span>
                        </div>

                        <input type="Submit" value="submit" name="submit" onclick=val(event)>

                    </div>
                </form>
            
                <cfif structKeyExists(form, "submit")>
                <cfset local.structUser=structNew()>
                <cfset local.structUser["designation"] = form.designation>
                <cfset local.structUser["locateOption"] = form.locateOption>
                <cfset local.structUser["startDate"] = form.startDate>
                <cfset local.structUser["webSite"] = form.webSite>
                <cfset local.structUser["userResume"] = form.userResume>
                <cfset local.structUser["salary"] = form.salaryDollar & "." & form.salaryCent>
                <cfset local.structUser["fname"] = form.fname>
                <cfset local.structUser["lname"] = form.lname>
                <cfset local.structUser["userEmail"] = form.userEmail>
                <cfset local.structUser["phn"] = form.phn1 & form.phn2 & form.phn3>
                <cfset local.result="">
                <cfset local.obj = createObject("component","components.check_23")>
                <cfset local.result = local.obj.fnUser(local.structUser)>

                <div class="bg-success text-white fw-bold p-2">
                        <cfdump  var="#local.result#">
                </div>
                </cfif>
        
        </div>
    </body>
</html>