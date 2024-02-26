import { hamburger } from "./modules/hamburger.js";

hamburger();

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