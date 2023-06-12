import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="progess"
export default class extends Controller {
  connect() {
    window.addEventListener("progess", this.updateProgressBar)
  }

  updateProgressBar(evt) {
    console.log(evt.detail)

    // let width = 0;
    // const id = setInterval(frame, 20);

    // function frame() {
    //   if (width >= desiredWidth) {
    //     clearInterval(id);
    //   } else {
    //     width++;
    //     progressTarget.style.width = width + "%";
    //   }
    // }
  }
}
