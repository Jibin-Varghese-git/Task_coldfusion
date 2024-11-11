//disable button
document.getElementById("submitbtn").disabled = true;

function verifyEmail()
{
    let userEmail=document.getElementById("userEmail").value;
    $.ajax({
        type:"POST",
        url:"components/check_24.cfc?method=checkEmail" ,
        cache:false,
        data:{userEmail : userEmail},
        success:function(result){
            if(result)
            {
                let errorMsg="Email already exist"
                document.getElementById("errorMail").innerHTML=errorMsg;
                document.getElementById("submitbtn").disabled = true;
            }
            else
            {
                document.getElementById("errorMail").innerHTML="";
                document.getElementById("submitbtn").disabled = false;
            }

        }
    })
}

function disableButton()
{
    document.getElementById("submitbtn").disabled = true;
}
