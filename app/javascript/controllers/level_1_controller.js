import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="level-1"
export default class extends Controller {
  static targets = ["bubble", "progression", "mouse"]
  connect() {
    this.updateProgressBar(40, this.progressionTarget);
  }

  updateProgressBar(desiredWidth, progressTarget) {
    let width = 0;
    const id = setInterval(frame, 20);

    function frame() {
      if (width >= desiredWidth) {
        clearInterval(id);
      } else {
        width++;
        progressTarget.style.width = width + "%";
      }
    }
  }
}
