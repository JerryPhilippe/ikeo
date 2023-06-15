import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="level-3"
export default class extends Controller {
  static targets = ["bubble", "progression", "mouse", "broom"]

  connect() {
    setTimeout(() => {
      const event = new CustomEvent("progess", { detail: { target: this.progressionTarget, desiredWidth: 62 } })
      window.dispatchEvent(event)
    }, 200);

    this.enableBroom = false

    if (window.location.pathname == "/cave"){
      this.mouseTarget.classList.add("cursor");
    };
  }

  switchLight(){
    this.mouseTarget.classList.remove("cursor");
    this.enableBroom = true
    this.broomTarget.classList.add("balais-img");
  }

  toCart(){
    jump(){

    
    }
    setTimeout(() => {
      fetch('/games/update', {
        method: 'PATCH',
        headers: {
          'Content-Type': 'application/json',
          'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
        },
        body: JSON.stringify({
          level: 4,
          address: "68 avenue Parmentier"
        })
      })
        .then(response => response.json())
        .then(data => {
          console.log('Success:', data);
        })
        .catch((error) => {
          console.error('Error:', error);
        });

        window.location.href = "/cart";
    }, 2000);

  }

  move(e) {
    let mouseY = e.clientY
    let mouseX = e.clientX
    this.mouseTarget.style.background = "none";
    this.mouseTarget.style.backgroundImage = "radial-gradient(circle closest-corner at " + mouseX + "px " + mouseY + "px , rgba(0,0,0,0) 0%, rgba(0,0,0,1) 35%)";
  }

  getBroom(evt) {
    if (!this.enableBroom) { return; }
    document.querySelector('body').dataset.broom = 'enable'

    window.addEventListener('mousemove', (e) => {
      let mouseY = e.clientY
      let mouseX = e.clientX

      this.broomTarget.style.position = "fixed"
      this.broomTarget.style.top = `${mouseY}px`
      this.broomTarget.style.left = `${mouseX + 15}px`
    })
  }
}
