import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  resetForm(event) {
    const form = event.target
    console.log(form)
    if (form.requestSucceeded) {
      form.reset()
    }
  }
}
