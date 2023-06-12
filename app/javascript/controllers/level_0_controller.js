import { Controller } from "@hotwired/stimulus"




// Connects to data-controller="level-0"
export default class extends Controller {
  static targets = ["bubble", "progression", "mouse"]

  connect() {
    if (window.location.pathname == "/"){
      setTimeout(() => {
        this.bubbleTarget.classList.remove("d-none");
    }, 5000);
  }
  console.log(this.progressionTarget.style.width)
   this.updateProgressBar(20, this.progressionTarget); //until which persentage should be set --> A voir si possible d'utiliser cela pour tous le controleurs
  }

  switchLight(){
    console.log("Light is on")
  }

  okButton(){
    this.bubbleTarget.classList.toggle("d-none");
  }

  move(e) {
    let mouseY = e.clientY
    let mouseX = e.clientX
    this.mouseTarget.style.background = "none";
    this.mouseTarget.style.backgroundImage = `radial-gradient(circle closest-corner at ${mouseX}px ${mouseY}px , rgba(0,0,0,0) 0%, rgba(0,0,0,1) 66%)`;
    console.log(mouseX, mouseY)
  }

  updateProgressBar(desiredWidth, progressTarget) {
    let width = 0;
    const id = setInterval(frame, 20); // update every 10ms

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
