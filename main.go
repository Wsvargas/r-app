package main

import (
    "fmt"
    "net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Hello from Go! This is your web app.")
	fmt.Fprintf(w, "Developer Name: Willian Vargas.")

}

func main() {
    http.HandleFunc("/", handler)
    fmt.Println("Server is starting at port 8080...")
    if err := http.ListenAndServe(":8080", nil); err != nil {
        fmt.Println("Error starting server:", err)
    }
}
