// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "../components"
import * as bootstrap from "bootstrap"

// Enable Bootstrap popovers everywhere
const popoverTriggerList = document.querySelectorAll('[data-bs-toggle="popover"]')
const popoverList = [...popoverTriggerList].map(popoverTriggerEl => new bootstrap.Popover(popoverTriggerEl))
