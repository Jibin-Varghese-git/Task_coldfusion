function val()
{
    document.getElementById("errMsg").innerHTML=" "
    let num=document.getElementById("num").value;
   
    if(num.length == 0  )
    {
        document.getElementById("errMsg").innerHTML="Please enter a value";
        event.preventDefault();
    }
    else if(isNaN(num))
    {
        document.getElementById("errMsg").innerHTML="Please enter number";
        event.preventDefault();
    }
    
}