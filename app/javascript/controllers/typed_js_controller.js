import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Bikes first, cars second.", "Fun activities for everybody.",
      "Green space instead of parking spots.", "Space for creatives."],
      typeSpeed: 50,
      backSpeed: 30,
      backDelay: 500,
      loop: true
    })
  }
}
