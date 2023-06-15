import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="level-1"
export default class extends Controller {
  static targets = ["kura", "backkura", "micke", "backmicke", "flisat", "backflisat", "huset", "backhuset", "trogen", "backtrogen", "sacados", "button", "bubble", "progression"]
  connect() {
    setTimeout(() => {
      const event = new CustomEvent("progess", { detail: { target: this.progressionTarget, desiredWidth: 24 } })
      window.dispatchEvent(event)
    }, 200);
  }



   returnkura() {
    this.kuraTarget.classList.add('card-flip')
    this.kuraTarget.classList.remove('shadow-card')
    this.backkuraTarget.innerText = "A"
    this.backkuraTarget.style.fontSize = "200px"
    this.kuraTarget.removeAttribute('data-action');
   }

   returnmicke() {
    this.mickeTarget.classList.add('card-flip')
    this.mickeTarget.classList.remove('shadow-card')
    this.backmickeTarget.innerText = "G"
    this.backmickeTarget.style.fontSize = "150px"
    this.mickeTarget.removeAttribute('data-action');
   }

   returnflisat() {
    this.flisatTarget.classList.add('card-flip')
    this.flisatTarget.classList.remove('shadow-card')
    this.backflisatTarget.innerText = "W"
    this.backflisatTarget.style.fontSize = "250px"
    this.flisatTarget.removeAttribute('data-action');
   }

   returnhuset() {
    this.husetTarget.classList.add('card-flip')
    this.husetTarget.classList.remove('shadow-card')
    this.backhusetTarget.innerText = "N"
    this.backhusetTarget.style.fontSize = "50px"
    this.husetTarget.removeAttribute('data-action');
   }

   returntrogen() {
    this.trogenTarget.classList.add('card-flip')
    this.trogenTarget.classList.remove('shadow-card')
    this.backtrogenTarget.innerText = "o"
    this.backtrogenTarget.style.fontSize = "100px"
    this.trogenTarget.removeAttribute('data-action');
   }

   shadowkura() {
    this.kuraTarget.classList.add('shadow-card')
   }

   shadowoutkura() {
    this.kuraTarget.classList.remove('shadow-card')
   }

   shadowmicke() {
    this.mickeTarget.classList.add('shadow-card')
   }

   shadowoutmicke() {
    this.mickeTarget.classList.remove('shadow-card')
   }

   shadowflisat() {
    this.flisatTarget.classList.add('shadow-card')
   }

   shadowoutflisat() {
    this.flisatTarget.classList.remove('shadow-card')
   }

   shadowhuset() {
    this.husetTarget.classList.add('shadow-card')
   }

   shadowouthuset() {
    this.husetTarget.classList.remove('shadow-card')
   }

   shadowtrogen() {
    this.trogenTarget.classList.add('shadow-card')
   }

   shadowouttrogen() {
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
    }, 100);
  }
   }
