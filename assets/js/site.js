document.addEventListener("DOMContentLoaded", () => {
  document.querySelectorAll(".publications .links a.award").forEach((badge) => {
    if (/\b(nominee|runner-up)\b/i.test(badge.textContent)) {
      badge.classList.add("award-nominee");
    }
  });
});
