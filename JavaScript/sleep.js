function main() {
    // let the user know we are sleep for 20 seconds.
    console.log("Sleeping for 20 seconds...")
    // sleep for 20 seconds
    sleep(20000)
    // print "done"
    console.log("done")
}

main()

// sleep for certian amount of time
function sleep(milliseconds) {
    var start = new Date().getTime();
    for (var i = 0; i < 1e7; i++) {
        if ((new Date().getTime() - start) > milliseconds){
            break;
        }
    }
}