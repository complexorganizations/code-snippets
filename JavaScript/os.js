const os = require("os")

function main() {
    // Print the current OS
    console.log(getCurrentOS())
    // Print the current user
    console.log(getCurrentUser())
    // Print the current user's home directory
    console.log(getCurrentUserHomeDirectory())
    // Print the current user's uid
    console.log(getCurrentUserUID())
    // Print the current user's gid
    console.log(getCurrentUserGID())
    // Print the current system hostname
    console.log(getCurrentHostname())
    // Print the current system's architecture
    console.log(getCurrentArchitecture())
    // Print the current system uptime
    console.log(getCurrentUptime())
    // Print the current system load average
    console.log(getCurrentLoadAverage())
    // Print the current system's total memory
    console.log(getCurrentTotalMemory())
    // Print the current system's free memory
    console.log(getCurrentFreeMemory())
    // Print the current system's network interfaces
    console.log(getCurrentNetworkInterfaces())
    // Print the current system process count
    console.log(getCurrentProcessCount())
    // Print the current system's cpu count
    console.log(getCurrentCPUCount())
    // Print the current system's cpu model
    console.log(getCurrentCPUModel())
    // Print the current system's cpu speed
    console.log(getCurrentCPUSpeed())
    // Print the current system's cpu times
    console.log(getCurrentCPUTimes())
    // Print the current system's cpu usage
    console.log(getCurrentCPUUsage())
    // Clear the console
    clearConsole()
    // Exit the program
    exit()
}

main()

// Get the current operating system
function getCurrentOS() {
    return os.platform()
}

// Get the current user name
function getCurrentUser() {
    return os.userInfo().username
}

// Get the current user's home directory
function getCurrentUserHomeDirectory() {
    return os.userInfo().homedir
}

// Get the current user's uid
function getCurrentUserUID() {
    return os.userInfo().uid
}

// Get the current user's gid
function getCurrentUserGID() {
    return os.userInfo().gid
}

// Get the current system hostname
function getCurrentHostname() {
    return os.hostname()
}

// Get the current system's architecture
function getCurrentArchitecture() {
    return os.arch()
}

// Get the current system uptime
function getCurrentUptime() {
    return os.uptime()
}

// Get the current system load average
function getCurrentLoadAverage() {
    return os.loadavg()
}

// Get the current system's total memory
function getCurrentTotalMemory() {
    return os.totalmem()
}

// Get the current system's free memory
function getCurrentFreeMemory() {
    return os.freemem()
}

// Get the current system's network interfaces
function getCurrentNetworkInterfaces() {
    return os.networkInterfaces()
}

// Get the current system process count
function getCurrentProcessCount() {
    return os.cpus().length
}

// Get the current system's cpu count
function getCurrentCPUCount() {
    return os.cpus()
}

// Get the current system's cpu model
function getCurrentCPUModel() {
    return os.cpus()[0].model
}

// Get the current system's cpu speed
function getCurrentCPUSpeed() {
    return os.cpus()[0].speed
}

// Get the current system's cpu times
function getCurrentCPUTimes() {
    return os.cpus()[0].times
}

// Get the current system's cpu usage
function getCurrentCPUUsage() {
    return os.cpus()[0].times.user
}

// Clear the console
function clearConsole() {
    process.stdout.write("\033c")
}

// Exit the program
function exit() {
    process.exit()
}