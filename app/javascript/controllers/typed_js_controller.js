import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Build the city you always dreamed of."],
      typeSpeed: 60,
      backSpeed: 40,
      backDelay: 500,
      loop: true
    })
  }
}
