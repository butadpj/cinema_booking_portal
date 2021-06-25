// Instantiating Material Components
// mdc.ripple.MDCRipple.attachTo 

let mdcButtons = document.querySelectorAll(".mdc-button")


mdcButtons.forEach(button => {
    mdc.ripple.MDCRipple.attachTo(button)

});
