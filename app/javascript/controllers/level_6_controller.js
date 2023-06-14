import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js";

const level6 = ["Je vais enfin pouvoir visiter tout internet !", "J’ai tellement hâte ! Je ne pourrais jamais assez te remercier, j’espère te revoir un jour !"]

// Connects to data-controller="level-6"
export default class extends Controller {
  static targets = ["door","koko","bubble", "span"]

  static values = {
    texte: Array
  }
  connect() {
    /* window.location.href = "/finish"; */

    setTimeout(() => {
      const event = new CustomEvent("progess", { detail: { target: this.progressionTarget, desiredWidth: 100 } })
      window.dispatchEvent(event)
    }, 200);

    this.bubbleTarget.classList.remove("d-none");

    console.log(this.texteValue)
    console.log(this.spanTarget)

    const options = {strings: level6, typeSpeed: 40};
    new Typed(this.spanTarget, options)

    setTimeout(() => {
      this.bubbleTarget.classList.add("d-none");
    }, 10500);


    setTimeout(() => {
      this.doorTarget.classList.add('open');
    }, 11000);

    setTimeout(() => {
      this.kokoTarget.classList.add('slide');
    }, 12500);

    setTimeout(() => {
      this.kokoTarget.classList.add('kokoforscale');
      this.kokoTarget.classList.add('scale');
    }, 14500);

    setTimeout(() => {
      this.doorTarget.classList.remove('open');
      this.doorTarget.classList.add('close');
    }, 15500);



  }


  move(){

  }
}
