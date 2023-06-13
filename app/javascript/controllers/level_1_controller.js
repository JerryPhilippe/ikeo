import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="level-1"
export default class extends Controller {
  static targets = ["kura", "backkura", "vitval", "backvitval", "sundvik", "backsundvik", "huset", "backhuset", "trogen", "backtrogen", "sacados"]
  connect() {
    this.updateProgressBar(40, this.progressionTarget);
    console.log(this.sacadosTarget)
  }

  updateProgressBar(desiredWidth, progressTarget) {
    let width = 0;
    const id = setInterval(frame, 20);

    function frame() {
      if (width >= desiredWidth) {
        clearInterval(id);
      } else {
        width++;
        progressTarget.style.width = width + "%";
      }
    }
  }

   returnkura() {
    this.kuraTarget.classList.add('card-flip')
    this.backkuraTarget.innerText = "A"
    this.backkuraTarget.style.fontSize = "200px"
   }

   returnvitval() {
    this.vitvalTarget.classList.add('card-flip')
    this.backvitvalTarget.innerText = "G"
    this.backvitvalTarget.style.fontSize = "150px"
   }

   returnsundvik() {
    this.sundvikTarget.classList.add('card-flip')
    this.backsundvikTarget.innerText = "W"
    this.backsundvikTarget.style.fontSize = "250px"
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

   jump(){
    console.log("jump")
    this.sacadosTarget.classList.add('jump');
   }

   move(){

   }

}
