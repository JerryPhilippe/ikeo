import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js";

const level0Home = ["psst psst", "hey!", "psst","Hej ! J’ai besoin d’aide ! Que quelqu’un allume la lumière ! J’ai peur du noir !!! Je sais qu’il y a une lampe dans les articles de salon, qui que tu sois peux-tu aller l’allumer ?"]

// Connects to data-controller="typed"
export default class extends Controller {
  static values = {
    level: Number
  }

  connect() {
    const options = {strings: level0Home, typeSpeed: 50};

    setTimeout(() => {
      new Typed(this.element, options);
  }, 5500);
  }
}
