---
layout: page
permalink: /patents/
title: patents
description: Patent families and applications in reverse chronological order.
nav: true
nav_order: 2
patents: true
---

{% assign empty_array = '' | split: ',' %}
{% assign patent_records = site.data.patents.patents | default: empty_array %}
{% assign approved_patents = patent_records | where: 'disclosure_approved', true | sort: 'year' | reverse %}
{% assign granted_patents = approved_patents | where: 'status', 'Granted' %}
{% assign published_patents = approved_patents | where: 'status', 'Published' %}
{% assign filed_patents = approved_patents | where: 'status', 'Filed' %}
{% assign demo_patents = approved_patents | where: 'demo', true %}
{% assign confidential_count = site.data.patents.confidential_count | default: 0 %}

<div class="patents" data-patents-root>
  {% if demo_patents.size > 0 %}
    <div class="patent-demo-notice" role="note">
      <i class="fa-solid fa-circle-info" aria-hidden="true"></i>
      These entries are fictional sample data for previewing the layout. Replace them with approved patent records before publishing.
    </div>
  {% endif %}

{% if approved_patents.size > 0 %}
<div class="patent-controls" aria-label="Patent filters">
<label class="sr-only" for="patent-search">Search patents</label>
      <input
        id="patent-search"
        class="search bibsearch-form-input patent-search"
        type="search"
        placeholder="Search by title, inventor, number, or topic"
        autocomplete="off"
        data-patent-search
      >

      <div class="patent-filters" role="group" aria-label="Filter patents by status">
        <button class="patent-filter active" type="button" data-patent-filter="All" aria-pressed="true">
          All <span>{{ approved_patents.size }}</span>
        </button>
        <button class="patent-filter" type="button" data-patent-filter="Granted" aria-pressed="false">
          Granted <span>{{ granted_patents.size }}</span>
        </button>
        <button class="patent-filter" type="button" data-patent-filter="Published" aria-pressed="false">
          Published <span>{{ published_patents.size }}</span>
        </button>
        <button class="patent-filter" type="button" data-patent-filter="Filed" aria-pressed="false">
          Filed <span>{{ filed_patents.size }}</span>
        </button>
      </div>
    </div>

    <p class="patent-results" aria-live="polite" data-patent-results></p>

    <div class="patent-list" data-patent-list>
      {% assign current_year = '' %}
      {% for patent in approved_patents %}
        {% capture patent_year %}{{ patent.year }}{% endcapture %}
        {% if patent_year != current_year %}
          {% unless forloop.first %}
              </div>
            </section>
          {% endunless %}
          <section class="patent-year-group" data-patent-year-group>
            <h2 class="patent-year-heading">{{ patent.year }}</h2>
            <div class="patent-year-list">
        {% endif %}
              {% include patent_card.liquid patent=patent %}
        {% assign current_year = patent_year %}
        {% if forloop.last %}
            </div>
          </section>
        {% endif %}
      {% endfor %}
    </div>

    <div class="patent-empty-state" data-patent-empty hidden>
      <i class="fa-solid fa-magnifying-glass" aria-hidden="true"></i>
      <p>No patents match the current search and status filter.</p>
      <button type="button" class="btn btn-sm" data-patent-reset>Clear filters</button>
    </div>

{% else %}
<div class="patent-empty-state">
<i class="fa-regular fa-file-lines" aria-hidden="true"></i>
<p>Patent records will appear here after the approved dataset is added.</p>
</div>
{% endif %}

{% if confidential_count > 0 %}
<p class="patent-confidential-note">
{{ confidential_count }} additional {% if confidential_count == 1 %}application is{% else %}applications are{% endif %} included in the total count but
omitted because the details are not approved for public disclosure.
</p>
{% endif %}
</div>
