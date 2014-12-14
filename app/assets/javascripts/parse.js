<script type="text/javascript">
if(window.orientation !== undefined){
    location.replace("../playzone,/mobile_login.html");
}
else
{
    var queryArg = location.search;
    if (queryArg.substring(1,5) == "url=")
    {
        var hiddenURL = queryArg.substring(5,queryArg.length);
    }
    else if (queryArg.substring(1,7) == "mount=")
    {
        var hiddenURL = queryArg.substring(7,queryArg.length);
    }
    else 
    {
        var hiddenURL = "";
    }

    if (hiddenURL == "")
    {
        var seperateHref = window.location.href.split("/");
        if (seperateHref[0] == "https:")
            window.location = "https://"+seperateHref[2]+"/"+seperateHref[3]+"/adv,/loginwrap.html";
        else 
            window.location = "http://"+seperateHref[2]+"/"+seperateHref[3]+"/adv,/loginwrap.html";
        if(window.orientation !== undefined){
            location.replace("../playzone,/mobile_login.html");
        }
    }
    else
    {
        location.replace("loginwrap.html"+queryArg);
    }
}
</script>
