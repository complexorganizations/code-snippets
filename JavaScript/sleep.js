function main() {
    // let the user know we are sleep for 20 seconds.
    console.log("Sleeping for 20 seconds...")
    // sleep for 100 ms
    sleep(100).then(() => {
        // let the user know we are awake.
        console.log("Awake!")
    })
    // print "done"
    console.log("done")
}

main()

// sleep for certian amount of time
function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}