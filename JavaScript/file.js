var path = require("path");

function main() {
    // Get the current working file name
    console.log(getCurrentFileName())
    // Get the current path in the system
    console.log(getCurrentPath())
}

main()

// Get the current working file name
function getCurrentFileName() {
    return path.basename(__filename);
}

// Get the current path in the system
function getCurrentPath() {
    return process.cwd()+"\\"+getCurrentFileName();
}