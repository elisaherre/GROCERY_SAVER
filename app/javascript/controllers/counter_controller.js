import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="counter"
export default class extends Controller {
  connect() {
    this.updateExpirationDate();
  }
  updateExpirationDate() {
    const expirationDate = new Date(this.data.get("expiration"));
    const currentDate = new Date();

    const timeDifference = expirationDate - currentDate;
    const daysDifference = Math.ceil(timeDifference / (1000 * 60 * 60 * 24));

    this.element.querySelector('span').innerText = daysDifference;
  }
}

