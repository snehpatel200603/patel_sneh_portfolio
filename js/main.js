(() => {
  function toggleMobileNav() {
    var navbarMobile = document.querySelector("#navbar-mobile");
    var hamburgerIcon = document.querySelector("#hamburger-icon");
    navbarMobile.classList.toggle("active");
    hamburgerIcon.classList.toggle("active");
  }

  var hamburger = document.querySelector(".hamburger");
  var navMobile = document.querySelector(".navbar-mobile");

  hamburger.addEventListener("click", function () {
    this.classList.toggle("active");
    navMobile.classList.toggle("active");
  });

  gsap.registerPlugin(ScrollTrigger);

  gsap.from(".project", {
    opacity: 0,
    y: 50,
    stagger: 0.2,
    scrollTrigger: {
      trigger: "#work-section",
      start: "top 60%",
      end: "bottom 40%",
      scrub: 1,
    },
  });

  const player = new Plyr("video");
})();
