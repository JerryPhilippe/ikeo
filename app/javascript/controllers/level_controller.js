import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="level"
export default class extends Controller {
  static values = {
    level: String
  }

  connect() {
  }
}
