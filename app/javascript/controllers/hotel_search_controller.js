import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="hotel-search"
export default class extends Controller {
  static targets = ["params"]
  
  connect() {
    // console.log("search hotel connected...")
  }

  search() {
    // console.log("Search called...")
    const value = this.paramsTarget.value
    const csrfToken = document.querySelector("[name='csrf-token']").content

    var doc_hotel_search = document.getElementById('hotel_search')
    
    if (doc_hotel_search.value.length >= 3) {
      setTimeout(1000)
    } else {
      setTimeout(300)
    }

    fetch(`/search?search=${value}`, {
      method: 'POST',
      mode: 'cors',
      cache: 'no-cache',
      credentials: 'same-origin',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': csrfToken
      }
    })
      .then((response) => response.text())
      .then(res => {
        console.log(res)
        document.querySelector('#hotels').innerHTML = res
      })
  }
}
