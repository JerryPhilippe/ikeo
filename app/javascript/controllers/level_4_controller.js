import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="level-4"
export default class extends Controller {
  static targets = ["loupe", "spiegella", "buttonHiden", "flipCard"]

  getLoop(e) {

    window.addEventListener("mousemove", (e) => {
      let mouseY = e.clientY
      let mouseX = e.clientX
    this.loupeTarget.style.position = "fixed"
    this.loupeTarget.style.top = `${mouseY}px`
    this.loupeTarget.style.left = `${mouseX + 15}px`
    })
  }

  hot(){
    this.loupeTarget.style.animation = "jump-shaking 0.4s infinite";
  }

  cold(){
    this.loupeTarget.style.animation = "jump-shaking 0.9s infinite";
  }

  hidenButton() {
    this.flipCardTarget.classList.toggle('flipped');
  }
}
