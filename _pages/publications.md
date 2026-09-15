---
layout: page
permalink: /publications/
title: Publications
description: Publications by Nachiket Kapre and collaborators, in reverse chronological order.
nav: true
nav_order: 3
---

<link rel="stylesheet" href="{{ '/assets/css/site.css' | relative_url }}">

<!-- _pages/publications.md -->

<section class="publication-timeline" aria-labelledby="publication-timeline-title">
  <div class="publication-timeline-header">
    <div>
      <h2 id="publication-timeline-title">Publication Timeline</h2>
      <p>Each box links to its publication entry below.</p>
    </div>
    <div class="publication-timeline-legend" aria-label="Timeline legend">
      <span><i class="timeline-swatch" aria-hidden="true"></i> Publication</span>
      <span><i class="timeline-swatch timeline-swatch-award" aria-hidden="true"></i> Best Paper</span>
      <span><i class="timeline-swatch timeline-swatch-nominee" aria-hidden="true"></i> Nominee / Runner-up</span>
    </div>
  </div>
  <div class="publication-timeline-scroll" data-publication-timeline aria-label="Publication timeline"></div>
</section>

<!-- Bibsearch Feature -->

{% include bib_search.liquid %}

<div class="publications">

{% bibliography %}

</div>

<script defer src="{{ '/assets/js/site.js' | relative_url }}"></script>
