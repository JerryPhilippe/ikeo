import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="level-5"
export default class extends Controller {
  static targets = ["button"];
  connect() {
    this.buttonTarget.classList.remove("disabled");
    this.buttonTarget.classList.add("enabled");
  }

  tofinish(){
    fetch('/games/update', {
      method: 'PATCH',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
      },
      body: JSON.stringify({
        level: 6,
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
        window.location.href = "/finish";
    }, 1000);
  }

  move(){}
}
