import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js";

// Connects to data-controller="typed"
export default class extends Controller {
  static values = {
    sentences: Array
  }

  connect() {
    console.log("teste typed.js")
    const options = {strings: this.sentencesValue, typeSpeed: 100};
    new Typed(this.element, options)
  }
}
