import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="level-4"
export default class extends Controller {
  static targets = ["loupe", "spiegella"]

  getLoop(e) {
    let mouseY = e.clientY
    let mouseX = e.clientX

    this.loupeTarget.style.position = "absolute"
    this.loupeTarget.style.top = `${mouseY}px`
    this.loupeTarget.style.left = `${mouseX + 15}px`
  }

  hot(){
    this.loupeTarget.style.animation = "jump-shaking 0.4s infinite";
    console.log("mouse is here!");
  }

  cold(){
    this.loupeTarget.style.animation = "jump-shaking 0.9s infinite";
    console.log("mouse is not here!");
  }
}
