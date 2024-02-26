import { hamburger } from "./modules/hamburger.js";
import { Reveal } from "./modules/reveal.js";
import { contactForm } from "./modules/contact-form.js";
import { scrollTrigger } from "./modules/scroll-trigger.js";

hamburger();

if (document.body.dataset.page === "home") {
  Reveal();
  contactForm();
} else if (document.body.dataset.page === "project-details") {
  scrollTrigger();
}

const player = new Plyr("video");

