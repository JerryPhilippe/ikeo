import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="door"
export default class extends Controller {
  static targets = ["door","zoom"]
  connect() {
    console.log("hello door")
  }
  open(){
    console.log("open door")
    this.doorTarget.classList.toggle("heartbeat");
    this.doorTarget.classList.toggle('open');

    setTimeout(() => {
      console.log(this.zoomTarget)
      this.zoomTarget.classList.toggle('grow');
    }, 2000);


    setTimeout(() => {
      window.location.href = "/";
    }, 4000);

  }

}
