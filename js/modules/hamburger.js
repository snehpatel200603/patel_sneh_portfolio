export function hamburger() {
var hamburger = document.querySelector(".hamburger");
var navMobile = document.querySelector(".navbar-mobile");

hamburger.addEventListener("click", function () {
  this.classList.toggle("active");
  navMobile.classList.toggle("active");
});

}
