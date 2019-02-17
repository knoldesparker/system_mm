var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://18.185.40.91/course/1",
    "method": "GET",
    "headers": {
        "cache-control": "no-cache",
        "Postman-Token": "06514289-949a-4e93-b663-668752c12579"
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});