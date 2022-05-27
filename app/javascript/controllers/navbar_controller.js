import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const navigation = document.querySelector('nav');
    const logo = document.querySelector('.nav-item');
    const title = document.querySelector('.nav-icon');

    window.addEventListener('scroll', () => {

    if(window.scrollY > 750){
      navigation.classList.add('anim-nav');
      logo.classList.add('anim-item');
      title.classList.add('anim-icon');
    } else {
      navigation.classList.remove('anim-nav');
      logo.classList.remove('anim-item');
      title.classList.remove('anim-icon');
    }
  })
  }
}
