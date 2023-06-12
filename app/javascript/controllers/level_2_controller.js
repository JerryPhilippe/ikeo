import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="level-2"
export default class extends Controller {
  static targets = ["bubble", "progression", "mouse"]
  connect() {
    setTimeout(() => {
      const event = new CustomEvent("progess", { detail: { target: this.progressionTarget, desiredWidth: 60 } })
      window.dispatchEvent(event)
    }, 200);  }


}
