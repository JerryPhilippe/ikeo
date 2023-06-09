import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="level-4"
export default class extends Controller {
  static targets = ["loupe", "spiegella", "buttonHiden", "flipCard", "bubble", "progression", "ikeoLogo", "logo", "nameCredit", "addressCredit"]

  connect() {
    setTimeout(() => {
      const event = new CustomEvent("progess", { detail: { target: this.progressionTarget, desiredWidth: 81 } })
      window.dispatchEvent(event)
    }, 200);
    this.loupeTarget.classList.add("jump-loupe");
    }

    getLoop(e) {
      this.logoTarget.setAttribute("data-level-4-target", "flipCard");
      this.ikeoLogoTarget.removeAttribute("href");
      this.loupeTarget.classList.toggle("jump-loupe");
      window.addEventListener("mousemove", (e) => {
        let mouseY = e.clientY
        let mouseX = e.clientX
        this.loupeTarget.style.position = "fixed"
        this.loupeTarget.style.top = `${mouseY}px`
        this.loupeTarget.style.left = `${mouseX + 15}px`
        this.loupeTarget.classList.toggle("loupe-index")
      })
    }

    nameCreditTargetConnected() {
      this.nameCreditTarget.classList.add('green-background')
    }

    addressCreditTargetConnected() {
      this.addressCreditTarget.classList.add('green-background')
    }

  hot() {
    this.loupeTarget.classList.toggle("move-loupe");
  }

  flip() {
    this.flipCardTarget.classList.toggle('credit-card-flip');
    setTimeout(() => {
      this.toCart();
    }, 3000);
  }

  toCart(){
    fetch('/games/update', {
      method: 'PATCH',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
      },
      body: JSON.stringify({
        level: 5,
        date: "06/25",
        code: "435",
        card_number: "4980 1952 1212 9000"
    })
  })
      .then(response => response.json())
      .then(data => {
        console.log('Success:', data);
      })
      .catch((error) => {
        console.error('Error:', error);
      });

      window.location.href = "/cart";
  }

  move(){}
}
