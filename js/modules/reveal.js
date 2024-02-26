export function Reveal(){
    gsap.registerPlugin(ScrollTrigger);

    document.querySelectorAll(".reveal").forEach((reveal) => {
      const overlay = reveal.querySelector(".overlay");

      // Animation for the content to fade in and move up
      gsap.from(reveal.querySelector(".content"), {
        scrollTrigger: {
          trigger: reveal,
          start: "top bottom+=100", // Adjust this value based on your needs
          once: true, // Ensures the animation only triggers once
        },
        opacity: 0,
        y: 75,
        duration: 0.5,
        delay: 0.25,
      });

      // Animation to slide the overlay out and reveal the content
      gsap.to(overlay, {
        scrollTrigger: {
          trigger: reveal,
          start: "top bottom+=100", // Adjust this value to match the fade-in animation
          once: true, // Ensures the animation only triggers once
        },
        width: 0,
        duration: 0.5,
        ease: "easeIn",
      });
    });

}