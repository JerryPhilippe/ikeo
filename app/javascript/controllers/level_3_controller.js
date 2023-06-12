import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="level-3"
export default class extends Controller {
  static targets = ["bubble", "progression", "mouse"]

  connect() {

    if (window.location.pathname == "/cave"){
      // this.mouseTarget.classList.add("cursor");
    };
  }

  move(e) {
    let mouseY = e.clientY
    let mouseX = e.clientX
    this.mouseTarget.style.background = "none";
    this.mouseTarget.style.backgroundImage = "radial-gradient(circle closest-corner at " + mouseX + "px " + mouseY + "px , rgba(0,0,0,0) 0%, rgba(0,0,0,1) 35%)";
    console.log(mouseX, mouseY)
  }

}
