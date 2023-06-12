import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="level-2"
export default class extends Controller {
  static targets = ["bubble", "progression", "mouse", "brusali", "cursorkey", "key", "homekey"]
  connect() {
    setTimeout(() => {
      const event = new CustomEvent("progess", { detail: { target: this.progressionTarget, desiredWidth: 60 } })
      window.dispatchEvent(event)
    }, 200);
  }

  takeKey(){
    this.cursorkeyTarget.classList.add("custom-cursor");
    this.keyTarget.classList.add("d-none");
    this.homekeyTarget.classList.remove("d-none");
  }

  cave(){
    fetch('/games/update', {
      method: 'PATCH',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
      },
      body: JSON.stringify({
        level: 3
      })
    })
      .then(response => response.json())
      .then(data => {
        console.log('Success:', data);
      })
      .catch((error) => {
        console.error('Error:', error);
      });

      window.location.href = "/cave";
  }

  openDrawer(evt){
    evt.currentTarget.src = "https://res.cloudinary.com/dwwqcadjv/image/upload/v1/development/oc9axzngspdyy6fqmkdiqlfsv8tt";
  }

  closeDrawer(evt){
    evt.currentTarget.src = "http://res.cloudinary.com/dwwqcadjv/image/upload/v1/development/aaqw22s37ljtnq1fjiexbsc9qx7s";
  }

  move(){

  }
}
