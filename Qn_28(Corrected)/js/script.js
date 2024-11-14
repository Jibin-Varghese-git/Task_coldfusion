function signupVal(event)
{
    var userName=document.getElementById("userName").value;
    var pass1=document.getElementById("pass1").value;
    var pass2=document.getElementById("pass2").value;

    var name_pattern=/[^\w]/;
    var nameSpace=/[\s]/;
    var psw_lower=/[a-z]/;
	var psw_upper=/[A-Z]/;
	var psw_digit=/[0-9]/;
	var psw_special=/[^a-zA-Z0-9]/;

    document.getElementById("errorUsername").innerHTML="";
    document.getElementById("errorPass1").innerHTML="";
    document.getElementById("errorPass2").innerHTML="";

    if(userName.length == 0)
    {
        document.getElementById("errorUsername").innerHTML="Enter the user name";
        event.preventDefault();
    }
    else if(nameSpace.test(userName)==true)
    {
        document.getElementById("errorUsername").innerHTML="User name shouldn't contain whitesapce ";
        event.preventDefault();
    }
    else if(name_pattern.test(userName)==true)
    {
        document.getElementById("errorUsername").innerHTML="User name shouldn't contain special characters";
        event.preventDefault();
    }

    if(pass1.length==0)
    {
        document.getElementById("errorPass1").innerHTML= "Enter the password";
        event.preventDefault();
    }   
    else if(/\s/.test(pass1)==true)
    {
        document.getElementById("errorPass1").innerHTML= "Should not contain whitespace";
        event.preventDefault();
    }	
    else if(psw_lower.test(pass1)!=true)
    {
        document.getElementById("errorPass1").innerHTML= "Must contain atleast a lower case letter";
        event.preventDefault();
    }
    else if(psw_upper.test(pass1)!=true)
    {
        document.getElementById("errorPass1").innerHTML= "Must contain atleast an upper case letter";
        event.preventDefault();
    }
    else if(psw_digit.test(pass1)!=true)
    {
        document.getElementById("errorPass1").innerHTML= "Must contain atleast a digit";
        event.preventDefault();
    }
    else if(psw_special.test(pass1)!=true)
    {
        document.getElementById("errorPass1").innerHTML= "Must contain atleast a special character";
        event.preventDefault();
    }
    else if(pass1.length<8)
    {
        document.getElementById("errorPass1").innerHTML= "Password must contain 8 chars";
        event.preventDefault();
    }
    

    if(pass1 != pass2)
    {
        document.getElementById("errorPass2").innerHTML="Password mismatch";
        event.preventDefault();
    }
           
}

function funLogout()
{
    if(confirm("Are you sure You want to logout?") == true)
    {
        $.ajax({
            type:"GET",
            url:"components/pageQn.cfc?method=logout",
            success:function(result){
                if(result)
                {
                    location.reload();
                }
                else
                {
                   alert("logout error")
                }
            }
        });
    }
   
}

function funDelete(pageId)
{
    if(confirm("Do you want to delete this page?"))
    {
        $.ajax({
            type:"POST",
            url:"components/pageQn.cfc?method=deletePage",
            data:{pageId : pageId.value},
            success:function(result){
                if(result)
                {
                    location.reload();
                }
                else
                {
                   alert("Delete error")
                }
            }
        });
    }
   
}


