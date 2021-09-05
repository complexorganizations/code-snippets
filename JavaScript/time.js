function main() {
    // Get the current time.
    var now = new Date();
    // Get the current hour.
    var hour = now.getHours();
    // Get the current minute.
    var minute = now.getMinutes();
    // Get the current second.
    var second = now.getSeconds();
    console.log(now + hour + ":" + minute + ":" + second);
}

main();