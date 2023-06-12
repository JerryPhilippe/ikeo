import { Controller } from "@hotwired/stimulus"




// Connects to data-controller="level-0"
export default class extends Controller {
  static targets = ["bubble", "progression", "mouse"]

  connect() {
   this.mouseTarget.classList.add("cursor");
   this.bubble();


   setTimeout(() => {
     const event = new CustomEvent("progess", { detail: { target: this.progressionTarget, desiredWidth: 20 } })
     window.dispatchEvent(event)
   }, 200);
  }

  bubble(){
    if (window.location.pathname == "/"){
      setTimeout(() => {
        this.bubbleTarget.classList.remove("d-none");
    }, 5000);
  }
  }

  switchLight(){
    this.mouseTarget.classList.remove("cursor");
    fetch('/games/update', {
      method: 'PATCH',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
      },
      body: JSON.stringify({
        level: 1
      })
    })
      .then(response => response.json())
      .then(data => {
        console.log('Success:', data);
      })
      .catch((error) => {
        console.error('Error:', error);
      });

      setTimeout(function() {
        window.location.href = "/cart";
    }, 2000);
  }

  okButton(){
    this.bubbleTarget.classList.toggle("d-none");
  }

  move(e) {
    let mouseY = e.clientY
    let mouseX = e.clientX
    this.mouseTarget.style.background = "none";
    this.mouseTarget.style.backgroundImage = "radial-gradient(circle closest-corner at " + mouseX + "px " + mouseY + "px , rgba(0,0,0,0) 0%, rgba(0,0,0,.8) 66%)";
  }
}
