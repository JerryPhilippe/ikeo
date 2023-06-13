import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-items"
export default class extends Controller {
  static targets = [ "form", "list", "searchInput" ]

  connect() {
  }

  update() {
    if (this.searchInputTarget.value == "wagon") {
      setTimeout(() => {
        window.location.href = "/"
      }, 1000);

      return;
    }

    const url = `${this.formTarget.action}?query=${this.searchInputTarget.value}`

    fetch(url, { headers: { 'Accept': 'text/plain' } })
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data;
      })
  }
}
