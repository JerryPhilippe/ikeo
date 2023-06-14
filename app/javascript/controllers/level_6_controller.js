import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="level-6"
export default class extends Controller {
  connect() {
    window.location.href = "/finish";
  }
}
