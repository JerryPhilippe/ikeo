import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="level-6"
export default class extends Controller {
  connect() {
    window.location.href = "/finish";

    setTimeout(() => {
      const event = new CustomEvent("progess", { detail: { target: this.progressionTarget, desiredWidth: 100 } })
      window.dispatchEvent(event)
    }, 200);
  }
}
