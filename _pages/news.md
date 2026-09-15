---
layout: page
title: News Archive
permalink: /news.html
description: News and announcements, grouped by year.
nav: false
---

<link rel="stylesheet" href="{{ '/assets/css/site.css' | relative_url }}">

<div class="news-list">
{% assign sorted_news = site.news | sort: "date" | reverse %}
{% assign current_year = "" %}
{% for item in sorted_news %}
  {% assign item_year = item.date | date: "%Y" %}
  {% if item_year != current_year %}
    {% assign current_year = item_year %}
    <h2 class="news-year">{{ current_year }}</h2>
  {% endif %}
  <div class="news-row">
    <time datetime="{{ item.date | date_to_xmlschema }}">{{ item.date | date: "%b %-d" }}</time>
    <div class="news-copy">{{ item.content }}</div>
  </div>
{% endfor %}
</div>
