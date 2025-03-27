document.addEventListener("DOMContentLoaded", (event) => {
  const navItems = document.querySelectorAll("nav ul li a");
  const cards = document.querySelectorAll(".card");
  let previousSection = "";

  function setActiveSection(sectionId) {
    if (previousSection === "case-studies") {
      // Reset card animations when leaving the case studies section
      resetCardAnimations();
    }

    document.body.className = `${sectionId}-active`;
    navItems.forEach((item) => {
      if (item.getAttribute("href") === `#${sectionId}`) {
        item.classList.add("active");
      } else {
        item.classList.remove("active");
      }
    });

    if (sectionId === "case-studies") {
      // Trigger reflow to ensure animation runs again
      void document.body.offsetWidth;
      animateCards();
    }

    previousSection = sectionId;
  }

  function animateCards() {
    cards.forEach((card, index) => {
      setTimeout(() => {
        card.classList.add("animate");
      }, 100 * index); // Delay each card by 100ms * its index
    });
  }

  function resetCardAnimations() {
    cards.forEach((card) => {
      card.classList.remove("animate");
    });
  }

  navItems.forEach((anchor) => {
    anchor.addEventListener("click", function (e) {
      e.preventDefault();
      const targetId = this.getAttribute("href").substring(1);
      setActiveSection(targetId);
    });
  });

  // Set initial active section (e.g., 'about' or 'case-studies')
  setActiveSection("about");
});
