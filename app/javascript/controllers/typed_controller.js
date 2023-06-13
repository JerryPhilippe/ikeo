import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js";

const level0Home = ["psst psst", "hey!", "psst","Hej ! J’ai besoin d’aide ! Que quelqu’un allume la lumière ! J’ai peur du noir !!! Je sais qu’il y a une lampe dans les articles de salon, qui que tu sois peux-tu aller l’allumer ?"]
const level2Cart = ["Bien joué !", "Une clef se trouve caché sur le site", "Celle-ci te permettra d'accéder à une pièce secrete. Trouve la vite afin que je puisse quitter le site"]
// Connects to data-controller="typed"
export default class extends Controller {
  static values = {
    level: Number
  }

  connect() {
    switch(this.levelValue){
      case 0 :
        const options0 = {strings: level0Home, typeSpeed: 50};
        setTimeout(() => {
          new Typed(this.element, options0);
      }, 5500);
      break;
      case 2 :
        const options2 = {strings: level2Cart, typeSpeed: 50};
        setTimeout(() => {
          new Typed(this.element, options2);
      }, 5500);
      break;
    }
  }
}
