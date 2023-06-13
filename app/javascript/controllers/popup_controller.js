import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="popup"
export default class extends Controller {
  static targets = ["overlay"]

  show(event) {
    event.preventDefault();
    this.overlayTarget.classList.add("display");
  }

  hide(event) {
    event.preventDefault();
    this.overlayTarget.classList.remove("display");
  }
}
