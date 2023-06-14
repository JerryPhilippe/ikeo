import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="progess"
export default class extends Controller {
  connect() {
    window.addEventListener("progess", this.updateProgressBar)
  }

  updateProgressBar(evt) {
    let width = 0;
    const id = setInterval(frame, 20);

    function frame() {
      if (width >= evt.detail.desiredWidth) {
        clearInterval(id);
      } else {
        width++;
        evt.detail.target.style.width = width + "%";
      }
    }
  }
}
