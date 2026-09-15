---
layout: about
title: Home
permalink: /
subtitle: Professor of Electrical and Computer Engineering · <a href="https://uwaterloo.ca/electrical-computer-engineering/">University of Waterloo</a>

profile:
  align: right
  image: nachiket.jpg
  image_circular: false
  more_info: >

selected_papers: true
social: true

announcements:
  enabled: false

latest_posts:
  enabled: false
---

<link rel="stylesheet" href="{{ '/assets/css/site.css' | relative_url }}">

I lead the **Waterloo Configurable Architectures Group (WatCAG)**. We build efficient machine-learning accelerators and agentic hardware-design workflows, supported by reconfigurable architectures, FPGA CAD, verification, and communication-centric systems.

I am a Professor at <span class="affiliation">{% include affiliation-icon.html organization="waterloo" %} [University of Waterloo](https://uwaterloo.ca/electrical-computer-engineering/)</span> and a Visiting Fellow at <span class="affiliation">{% include affiliation-icon.html organization="tenstorrent" %} [Tenstorrent](https://tenstorrent.com/)</span>. Previously, I was Research Director at <span class="affiliation">{% include affiliation-icon.html organization="xilinx" %} Xilinx Labs</span> (now part of <span class="affiliation">{% include affiliation-icon.html organization="amd" %} [AMD Research](https://www.amd.com/en/corporate/research.html)</span>) Singapore, CTO of <span class="affiliation">{% include affiliation-icon.html organization="plunify" %} Plunify</span> (now part of <span class="affiliation">{% include affiliation-icon.html organization="lattice" %} [Lattice Semiconductor](https://www.latticesemi.com/)</span>), and an Assistant Professor at <span class="affiliation">{% include affiliation-icon.html organization="ntu" %} [Nanyang Technological University](https://www.ntu.edu.sg/)</span>.

<div class="quick-links">
  <a href="{{ '/research.html' | relative_url }}">Explore research</a>
  <a href="{{ '/publications/' | relative_url }}">Browse publications</a>
  <a href="{{ '/cv.pdf' | relative_url }}">Download CV</a>
</div>

## Current Focus

<div class="focus-grid">
  <article>
    <h3>ML accelerators & arithmetic</h3>
    <p>Efficient tensor blocks, emerging numerical formats, and accelerator organizations that balance compute, memory, and programmability.</p>
  </article>
  <article>
    <h3>Agentic hardware-design flows</h3>
    <p>Engineer-guided agents for specification, RTL generation, verification, synthesis, design-space exploration, and measured hardware feedback.</p>
  </article>
  <article>
    <h3>Reconfigurable architectures & CAD</h3>
    <p>Learning-guided FPGA tools, networks-on-chip, prototyping, and practical flows from application intent to deployed hardware.</p>
  </article>
</div>

## Latest News

<div class="news-list news-list-home">
{% assign sorted_news = site.news | sort: "date" | reverse %}
{% assign current_year = "" %}
{% for item in sorted_news limit: 6 %}
  {% assign item_year = item.date | date: "%Y" %}
  {% if item_year != current_year %}
    {% assign current_year = item_year %}
    <h3 class="news-year">{{ current_year }}</h3>
  {% endif %}
  <div class="news-row">
    <time datetime="{{ item.date | date_to_xmlschema }}">{{ item.date | date: "%b %-d" }}</time>
    <div class="news-copy">{{ item.content }}</div>
  </div>
{% endfor %}
</div>

[All news →]({{ '/news.html' | relative_url }}){: .archive-link }

<script defer src="{{ '/assets/js/site.js' | relative_url }}"></script>
