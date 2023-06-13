import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="level-4"
export default class extends Controller {
  static targets = ["loupe", "spiegella", "buttonHiden", "flipCard", "bubble", "progression"]

  getLoop() {
    window.addEventListener("mousemove", (e) => {
      let mouseY = e.clientY
      let mouseX = e.clientX
      this.loupeTarget.style.position = "fixed"
      this.loupeTarget.style.top = `${mouseY}px`
      this.loupeTarget.style.left = `${mouseX + 15}px`
    })
  }

  connect() {
    setTimeout(() => {
      const event = new CustomEvent("progess", { detail: { target: this.progressionTarget, desiredWidth: 81 } })
      window.dispatchEvent(event)
    }, 200);
    this.loupeTarget.classList.add("move-loupe");
    if (window.location.pathname !== "/cart"){
      this.getLoop()
    }
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

  move(){}
}
