document.addEventListener("DOMContentLoaded", () => {
  const publicationList = document.querySelector(".publications");

  publicationList?.querySelectorAll(".links a.award").forEach((badge) => {
    if (/\b(nominee|runner-up)\b/i.test(badge.textContent)) {
      badge.classList.add("award-nominee");
    }
  });

  const timeline = document.querySelector("[data-publication-timeline]");
  if (!timeline || !publicationList) return;

  const track = document.createElement("div");
  track.className = "publication-timeline-track";

  publicationList.querySelectorAll("h2.bibliography").forEach((heading) => {
    const year = heading.textContent.trim();
    const list = heading.nextElementSibling;
    if (!list?.matches("ol.bibliography")) return;

    heading.id ||= `publications-${year}`;

    const yearGroup = document.createElement("section");
    yearGroup.className = "publication-timeline-year";
    yearGroup.setAttribute("aria-labelledby", `timeline-year-${year}`);

    const yearLink = document.createElement("a");
    yearLink.className = "publication-timeline-year-link";
    yearLink.href = `#${heading.id}`;
    yearLink.id = `timeline-year-${year}`;
    yearLink.textContent = year;

    const events = document.createElement("div");
    events.className = "publication-timeline-events";

    list.querySelectorAll(":scope > li").forEach((item) => {
      const entry = item.querySelector("[id]");
      const title = item.querySelector(".title")?.textContent.trim();
      if (!entry || !title) return;

      entry.classList.add("publication-entry-anchor");

      const badge = item.querySelector(".links a.award");
      const badgeText = badge?.textContent.trim() || "";
      const isNominee = /\b(nominee|runner-up)\b/i.test(badgeText);
      const isAward = Boolean(badge) && !isNominee;

      const event = document.createElement("a");
      event.className = "publication-timeline-event";
      if (isAward) event.classList.add("publication-timeline-event-award");
      if (isNominee) event.classList.add("publication-timeline-event-nominee");
      event.href = `#${entry.id}`;

      const distinction = isAward
        ? ` — ${badgeText}`
        : isNominee
          ? ` — ${badgeText}`
          : "";
      event.setAttribute("aria-label", `${year}: ${title}${distinction}`);
      event.title = `${title}${distinction}`;
      events.append(event);
    });

    yearGroup.append(yearLink, events);
    track.append(yearGroup);
  });

  timeline.append(track);
});
