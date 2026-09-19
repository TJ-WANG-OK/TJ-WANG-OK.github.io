document.addEventListener("DOMContentLoaded", () => {
  const root = document.querySelector("[data-patents-root]");
  if (!root) return;

  const search = root.querySelector("[data-patent-search]");
  const filterButtons = Array.from(root.querySelectorAll("[data-patent-filter]"));
  const cards = Array.from(root.querySelectorAll("[data-patent-card]"));
  const yearGroups = Array.from(root.querySelectorAll("[data-patent-year-group]"));
  const results = root.querySelector("[data-patent-results]");
  const emptyState = root.querySelector("[data-patent-empty]");
  const resetButton = root.querySelector("[data-patent-reset]");

  if (!search || cards.length === 0) return;

  let activeStatus = "All";

  const updatePatents = () => {
    const query = search.value.trim().toLocaleLowerCase();
    let visibleCount = 0;

    cards.forEach((card) => {
      const statusMatches = activeStatus === "All" || card.dataset.status === activeStatus;
      const searchMatches = !query || card.dataset.search.includes(query);
      const isVisible = statusMatches && searchMatches;
      card.hidden = !isVisible;
      if (isVisible) visibleCount += 1;
    });

    yearGroups.forEach((group) => {
      const hasVisibleCard = Array.from(group.querySelectorAll("[data-patent-card]")).some((card) => !card.hidden);
      group.hidden = !hasVisibleCard;
    });

    results.textContent = `${visibleCount} ${visibleCount === 1 ? "patent" : "patents"}`;
    emptyState.hidden = visibleCount !== 0;
  };

  filterButtons.forEach((button) => {
    button.addEventListener("click", () => {
      activeStatus = button.dataset.patentFilter;
      filterButtons.forEach((candidate) => {
        const isActive = candidate === button;
        candidate.classList.toggle("active", isActive);
        candidate.setAttribute("aria-pressed", String(isActive));
      });
      updatePatents();
    });
  });

  search.addEventListener("input", updatePatents);

  resetButton?.addEventListener("click", () => {
    search.value = "";
    activeStatus = "All";
    filterButtons.forEach((button) => {
      const isActive = button.dataset.patentFilter === "All";
      button.classList.toggle("active", isActive);
      button.setAttribute("aria-pressed", String(isActive));
    });
    updatePatents();
    search.focus();
  });

  updatePatents();
});
