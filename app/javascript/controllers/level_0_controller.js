import { Controller } from "@hotwired/stimulus"




// Connects to data-controller="level-0"
export default class extends Controller {
  // static targets = ["lvl0"]

  connect() {
    console.log("Controller level 0 connected")
  }
}
