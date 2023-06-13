import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="level-1"
export default class extends Controller {
  static targets = ["kura", "backkura", "micke", "backmicke", "flisat", "backflisat", "huset", "backhuset", "trogen", "backtrogen", "sacados", "button", "bubble", "progression"]
  connect() {
    setTimeout(() => {
      const event = new CustomEvent("progess", { detail: { target: this.progressionTarget, desiredWidth: 19 } })
      window.dispatchEvent(event)
    }, 200);
  }

   returnkura() {
    this.kuraTarget.classList.add('card-flip')
    this.backkuraTarget.innerText = "A"
    this.backkuraTarget.style.fontSize = "200px"
   }

   returnmicke() {
    this.mickeTarget.classList.add('card-flip')
    this.backmickeTarget.innerText = "G"
    this.backmickeTarget.style.fontSize = "150px"
   }

   returnflisat() {
    this.flisatTarget.classList.add('card-flip')
    this.backflisatTarget.innerText = "W"
    this.backflisatTarget.style.fontSize = "250px"
   }

   returnhuset() {
    this.husetTarget.classList.add('card-flip')
    this.backhusetTarget.innerText = "N"
    this.backhusetTarget.style.fontSize = "50px"
   }

   returntrogen() {
    this.trogenTarget.classList.add('card-flip')
    this.backtrogenTarget.innerText = "o"
    this.backtrogenTarget.style.fontSize = "100px"
   }

   shadowkura() {
    console.log("hover")
    this.kuraTarget.classList.add('shadow-card')
   }

   shadowoutkura() {
    console.log("out")
    this.kuraTarget.classList.remove('shadow-card')
   }

   shadowmicke() {
    console.log("hover")
    this.mickeTarget.classList.add('shadow-card')
   }

   shadowoutmicke() {
    console.log("out")
    this.mickeTarget.classList.remove('shadow-card')
   }

   shadowflisat() {
    console.log("hover")
    this.flisatTarget.classList.add('shadow-card')
   }

   shadowoutflisat() {
    console.log("out")
    this.flisatTarget.classList.remove('shadow-card')
   }

   shadowhuset() {
    console.log("hover")
    this.husetTarget.classList.add('shadow-card')
   }

   shadowouthuset() {
    console.log("out")
    this.husetTarget.classList.remove('shadow-card')
   }

   shadowtrogen() {
    console.log("hover")
    this.trogenTarget.classList.add('shadow-card')
   }

   shadowouttrogen() {
    console.log("out")
    this.trogenTarget.classList.remove('shadow-card')
   }


   jump(){
    console.log("jump")
    this.sacadosTarget.classList.add('jump');
    this.buttonTarget.classList.remove("disabled");
   }

   move(){
   }

   tocart(){
    fetch('/games/update', {
      method: 'PATCH',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
      },
      body: JSON.stringify({
        level: 2,
        card_name: "Ingvor Komprod"
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
    }, 1000);
  }

   }
