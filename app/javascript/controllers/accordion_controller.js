import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = [ "item" ]

  static values = {
    multipleOpen: Boolean,
    defaultState: String
  }

  connect() {
    // inits default state for accordion
    switch(this.defaultStateValue) {
      case 'all_closed':
        this.hideAll(this.itemTargets);
        break;
      case 'all_opened':
        this.showAll(this.itemTargets);
        break;
      case 'first_opened':
        this.hideAll(this.itemTargets)
        this.open(this.itemTargets[0].querySelector('.accordion_content'))
    }
  }

  toggle(e) {
    const content = e.currentTarget.parentNode.querySelector('.accordion_content')

    if (content.classList.contains('accordion_active')) {
      this.hide(content);
    } else {
      if (!this.multipleOpenValue) {
        this.hideAll(this.itemTargets);
      }
      this.open(content);
    }
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
    item.style.height = item.scrollHeight + 'px';

    item.querySelectorAll('.accordion_content').forEach(function(child) {
      new ResizeObserver(function() {
        item.style.height = item.scrollHeight + 'px';
      }).observe(child);
    });
  }
}
