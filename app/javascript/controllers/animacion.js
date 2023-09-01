// scroll_animation_controller.js
import { Controller } from "stimulus";

export default class extends Controller {
  connect() {
    this.scrollHandler = this.checkScroll.bind(this);
    window.addEventListener("scroll", this.scrollHandler);
  }

  disconnect() {
    window.removeEventListener("scroll", this.scrollHandler);
  }

  checkScroll() {
    if (window.scrollY > 500) {
      this.element.classList.add("visible");
    }
  }
}
