function authorization() {
    var login = document.getElementById("login").value;
    var password = document.getElementById("password").value;
    var user = {};
    user.login = login;
    user.password = password;
    if(login === '' || password === '') {
        alert("This login or password is empty!")
    }
    else {
        $.ajax({
            url: "/authorization",
            type: "POST",
            data: JSON.stringify(user),
            dataType: "json",
            contentType: "application/json; charset=utf-8"
        });
    }

}

function registration() {


}

function setLocation(locale) {

    $.ajax({
        url: "/setLocale",
        type: "POST",
        data: JSON.stringify(locale),
        dataType: "json",
        contentType: "application/json; charset=utf-8"
    });

}





