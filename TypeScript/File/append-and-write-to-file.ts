import * as fs from "fs"

function main(): void {
    // Append and write string to a file.
    appendAndWriteToFile("assets/remove/z48G2eX248wk87qvAn5Gd97765m7EJbN", "Hello World!")
}

main()

// Append and write string to a file.
function appendAndWriteToFile(fileName: string, content: string): void {
    fs.appendFile(fileName, content, function (err) {
        if (err) {
            return err
        }
    })
}