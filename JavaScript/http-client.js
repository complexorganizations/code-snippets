const fetch = require("node-fetch");

var raw = ""

var requestOptions = {
    method: "GET",
    body: raw,
    redirect: "follow"
}

fetch("https://api.ipengine.dev", requestOptions)
    .then(response => response.text())
    .then(result => console.log(result))
    .catch(error => console.log("error", error))