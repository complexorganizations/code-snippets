import os, { CpuInfo } from "os"
import process from "process"

function main(): void {
    // Clear the console
    clearConsole()
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
    // Change the current working directory
    changeDirectory("/")
    // Exit the program
    exit()
}

main()

// Clear the console
function clearConsole():void {
    process.stdout.write("\033c")
}

// Get the current operating system
function getCurrentOS() {
    return os.platform()
}

// Get the current user name
function getCurrentUser(): string {
    return os.userInfo().username
}

// Get the current user's home directory
function getCurrentUserHomeDirectory(): string {
    return os.userInfo().homedir
}

// Get the current user's uid
function getCurrentUserUID(): number {
    return os.userInfo().uid
}

// Get the current user's gid
function getCurrentUserGID(): number {
    return os.userInfo().gid
}

// Get the current system hostname
function getCurrentHostname(): string {
    return os.hostname()
}

// Get the current system's architecture
function getCurrentArchitecture(): string {
    return os.arch()
}

// Get the current system uptime
function getCurrentUptime(): number  {
    return os.uptime()
}

// Get the current system load average
function getCurrentLoadAverage(): number[] {
    return os.loadavg()
}

// Get the current system's total memory
function getCurrentTotalMemory(): number  {
    return os.totalmem()
}

// Get the current system's free memory
function getCurrentFreeMemory(): number  {
    return os.freemem()
}

// Get the current system's network interfaces
function getCurrentNetworkInterfaces() {
    return os.networkInterfaces()
}

// Get the current system process count
function getCurrentProcessCount(): number {
    return os.cpus().length
}

// Get the current system's cpu count
function getCurrentCPUCount(): CpuInfo[] {
    return os.cpus()
}

// Get the current system's cpu model
function getCurrentCPUModel(): CpuInfo[]  {
    return os.cpus()
}

// Get the current system's cpu speed
function getCurrentCPUSpeed(): number  {
    return os.cpus()[0].speed
}

// Get the current system's cpu times
function getCurrentCPUTimes() {
    return os.cpus()[0].times
}

// Get the current system's cpu usage
function getCurrentCPUUsage(): number  {
    return os.cpus()[0].times.user
}

// Change the current working directory
function changeDirectory(path: string): void {
    process.chdir(path)
}

// Exit the program
function exit(): void {
    process.exit()
}
