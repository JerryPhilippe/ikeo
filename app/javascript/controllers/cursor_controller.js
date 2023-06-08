import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cursor"
export default class extends Controller {
  static targets = ["mouse", "background"]

  move(e) {
    const mouseY = e.clientY;
    const mouseX = e.clientX;
    this.mouseTarget.style.transform = `translate3d(${mouseX}px, ${mouseY}px, 0)`;
    console.log(this.mouseTarget)
  }
}
