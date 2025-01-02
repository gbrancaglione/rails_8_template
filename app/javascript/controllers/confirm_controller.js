import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
    confirm(event) {
        const message = "Are you sure?";
        if (!confirm(message)) {
            event.preventDefault(); // Prevents the action if the user cancels
        }
    }
}
