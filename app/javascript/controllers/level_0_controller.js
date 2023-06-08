import { Controller } from "@hotwired/stimulus"




// Connects to data-controller="level-0"
export default class extends Controller {
  static targets = ["bubble"]

  connect() {
    if (window.location.pathname == "/"){
      setTimeout(() => {
        this.bubbleTarget.classList.remove("d-none");
    }, 5000);
  }
  }

  switchLight(){
    console.log("Light is on")
  }
}
