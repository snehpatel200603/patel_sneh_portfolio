export function scrollTrigger() {
    window.onload = function () {
      gsap.registerPlugin(ScrollTrigger);

      gsap.utils.toArray(".project-item").forEach((item) => {
        gsap.from(item, {
          scrollTrigger: {
            trigger: item,
            start: "top bottom-=100",
            toggleActions: "play none none none",
          },
          opacity: 0,
          y: 50,
          duration: 1,
        });
      });
    };
}