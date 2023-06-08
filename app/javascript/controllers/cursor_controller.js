import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cursor"
export default class extends Controller {
  static targets = ["mouse"]

  move(e) {
    let mouseY = e.clientY
    let mouseX = e.clientX
    this.mouseTarget.style.background = "none";
    this.mouseTarget.style.backgroundImage = "radial-gradient(circle closest-corner at " + mouseX + "px " + mouseY + "px , rgba(0,0,0,0) 0%, rgba(0,0,0,.9) 66%)";
    console.log(mouseX, mouseY)
  }
}
