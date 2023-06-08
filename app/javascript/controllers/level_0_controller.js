import { Controller } from "@hotwired/stimulus"




// Connects to data-controller="level-0"
export default class extends Controller {
  static targets = ["bubble", "progression"]

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
