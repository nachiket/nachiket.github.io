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
    <p>Waterloo, Ontario, Canada</p>

selected_papers: true
social: true

announcements:
  enabled: false

latest_posts:
  enabled: false
---

<link rel="stylesheet" href="{{ '/assets/css/site.css' | relative_url }}">

I lead the **Waterloo Configurable Architectures Group (WatCAG)**. We build efficient machine-learning accelerators and agentic hardware-design workflows, supported by reconfigurable architectures, FPGA CAD, verification, and communication-centric systems.

I am a Professor at the University of Waterloo and a Visiting Fellow at Tenstorrent. Previously, I was Research Director at Xilinx Labs (now AMD Research) Singapore, CTO of Plunify, and an Assistant Professor at Nanyang Technological University.

<div class="quick-links">
  <a href="{{ '/research.html' | relative_url }}">Explore research</a>
  <a href="{{ '/publications/' | relative_url }}">Browse publications</a>
  <a href="{{ '/cv.pdf' | relative_url }}">Download CV</a>
</div>

## Current focus

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

## Latest news

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
