import * as bootstrap from "bootstrap"
import * as Popper from '@popperjs/core'

window.bootstrap = bootstrap;
window.Popper = Popper;

// initialize the page
window.addEventListener('load', (event) => {
  initPage();
});
window.addEventListener('turbo:render', (event) => {
  initPage();
});
function initPage() {
  // initialize tooltips
  let tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
  tooltipTriggerList.forEach(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))

  // initialize popovers
  let popoverTriggerList = document.querySelectorAll('[data-bs-toggle="popover"]')
  popoverTriggerList.forEach(popoverTriggerEl => new bootstrap.Popover(popoverTriggerEl))
}
