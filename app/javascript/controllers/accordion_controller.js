import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static values = {
    defaultState: String,
  }

  connect() {
    this.initAccordion();

    this.initDefaultState()
  }

  initDefaultState() {
    const items = this.element.querySelectorAll('.accordion_item');

    switch(this.defaultStateValue) {
      case 'all_closed':
        this.hideAll(items);
        break;
      case 'all_opened':
        this.showAll(items);
        break;
      case 'first_opened':
        this.hideAll(items)
        this.open(items[0].querySelector('.accordion_content'))
    }
  }

  initAccordion() {
    const items = this.element.querySelectorAll('.accordion_item');

    items.forEach((item) => {
      const toggle = item.querySelector('.accordion_toggle');
      const content = item.querySelector('.accordion_content')

      toggle.addEventListener('click', (e) => {
        if (content.classList.contains('accordion_active')) {
          this.hide(content);
        } else {
          if ($(this.element).data('multiple-open') != true) {
            this.hideAll(items);
          }
          this.open(content);
        }
      });
    });
  }

  hideAll(items) {
    items.forEach((item) => this.hide(item.querySelector('.accordion_content')));
  }

  showAll(items) {
    items.forEach((item) => this.open(item.querySelector('.accordion_content')));
  }

  hide(item) {
    item.classList.remove("accordion_active")
    item.style.height = 0;
  }

  open(item) {
    item.classList.add("accordion_active")
    item.style.height = item.scrollHeight + 'px'
  }
}
