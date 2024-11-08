function val(event)
{
    let designation=document.getElementById("designation").value;
    let startDate=document.getElementById("startDate").value;
    let webSite=document.getElementById("webSite").value;
    let salaryDollar=document.getElementById("salaryDollar").value;
    let salaryCent=document.getElementById("salaryCent").value;
    let fname=document.getElementById("fname").value;
    let lname=document.getElementById("lname").value;
    let userEmail=document.getElementById("userEmail").value;
    let phn1=document.getElementById("phn1").value;
    let phn2=document.getElementById("phn2").value;
    let phn3=document.getElementById("phn3").value;
    let phn=phn1 + phn2 + phn3;
  
    const urlPattern = /(http(s)?:\/\/.)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)/g;
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    document.getElementById("errorDesignation").innerHTML="";
    document.getElementById("errorStartDate").innerHTML="";
    document.getElementById("errorWebSite").innerHTML="";
    document.getElementById("errorSalary").innerHTML="";
    document.getElementById("errorUserName").innerHTML="";
    document.getElementById("errorUserMail").innerHTML="";
    document.getElementById("errorPhn").innerHTML="";

    if(designation.length == 0)
    {
        document.getElementById("errorDesignation").innerHTML="Select the designation";
        event.preventDefault();
    }

    if(startDate.length == 0)
    {
        document.getElementById("errorStartDate").innerHTML="Select the startDate";
        event.preventDefault();
    }

    if(webSite.length == 0)
    {
        document.getElementById("errorWebSite").innerHTML="Enter the protfolio website";
        event.preventDefault();
    }
   

    if(salaryDollar.length == 0 && salaryCent.length == 0)
    {
        document.getElementById("errorSalary").innerHTML="Enter the salary in dollar and salary";
        event.preventDefault();
    }

    if(fname.length == 0 || lname.length == 0)
    {
        if(fname.length == 0 && lname.length == 0)
        {
            document.getElementById("errorUserName").innerHTML="Enter the First & Last name";
            event.preventDefault();
        }
        else if(lname.length == 0)
        {
            document.getElementById("errorUserName").innerHTML="Enter the Last name";
            event.preventDefault();
        }
        else if(fname.length == 0)
        {
            document.getElementById("errorUserName").innerHTML="Enter the First name";
            event.preventDefault();
        }
    }

    if(userEmail.length == 0)
    {
        document.getElementById("errorUserMail").innerHTML="Enter the email id";
        event.preventDefault();
    }
    else if(!emailRegex.test(userEmail))
    {
        document.getElementById("errorUserMail").innerHTML="Format not  valid";
        event.preventDefault();
    }

    if(phn1.length == 0 && phn2.length == 0 && phn3.length == 0) 
    {
        document.getElementById("errorPhn").innerHTML="Enter the phone number";
        event.preventDefault();
    }

}