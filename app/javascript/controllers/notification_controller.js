import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["panel"]

    show() {
        this.panelTarget.classList.add("translate-y-0", "opacity-100", "sm:translate-x-0")
        this.panelTarget.classList.remove("translate-y-2", "opacity-0", "sm:translate-y-0", "sm:translate-x-2")
        this.panelTarget.setAttribute("data-visible", "true")

        // Automatically hide the notification after 3 seconds
        setTimeout(() => this.hide(), 30000)
    }

    hide() {
        this.panelTarget.classList.add("translate-y-2", "opacity-0", "sm:translate-y-0", "sm:translate-x-2")
        this.panelTarget.classList.remove("translate-y-0", "opacity-100", "sm:translate-x-0")
        this.panelTarget.setAttribute("data-visible", "false")
    }
}
