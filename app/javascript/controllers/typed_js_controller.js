import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Green space.....",
    "Community interaction.....", "Your ideas....."],
      typeSpeed: 60,
      backSpeed: 40,
      backDelay: 500,
      loop: true
    })
  }
}
