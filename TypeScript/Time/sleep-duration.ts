function main(): void {
    // Sleep for 10 seconds.
    console.log("Sleeping for 10 seconds...")
    sleepApplication(10000)
    console.log("Woke up!")
}

main()

// Sleep for the specified duration in miliseconds.
function sleepApplication(miliseconds: number): Promise<unknown> {
    return new Promise(resolve => setTimeout(resolve, miliseconds))
}