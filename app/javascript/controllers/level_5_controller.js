import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="level-5"
export default class extends Controller {
  static targets = ["button", "bubble", "progression", "addressCredit", "nameCredit", "cvcCredit", "dateCredit", "numberCredit"];
  connect() {
    this.buttonTarget.classList.remove("disabled");
    this.buttonTarget.classList.add("enabled");

    setTimeout(() => {
      const event = new CustomEvent("progess", { detail: { target: this.progressionTarget, desiredWidth: 100 } })
      window.dispatchEvent(event)
    }, 200);
  }

    nameCreditTargetConnected() {
      this.nameCreditTarget.classList.add('green-background')
    }

    addressCreditTargetConnected() {
      this.addressCreditTarget.classList.add('green-background')
    }

    cvcCreditTargetConnected() {
      this.cvcCreditTarget.classList.add('green-background')
    }

    dateCreditTargetConnected() {
      this.dateCreditTarget.classList.add('green-background')
    }

    numberCreditTargetConnected() {
      this.numberCreditTarget.classList.add('green-background')
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
