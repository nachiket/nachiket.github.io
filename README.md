# Nachiket Kapre’s academic website

This branch is an al-folio v1.2 migration prototype for <https://nachiket.github.io>.

## Local preview

Use Ruby 3.3 or newer, then run:

```sh
bundle install
npm ci
bundle exec jekyll serve
```

The site is generated from `_pages/`, `_news/`, and `_bibliography/papers.bib`. Existing publication PDFs, award certificates, advice pages, and retrospective galleries remain at their established public paths.

The production GitHub Actions workflow builds the Jekyll site and publishes `_site`. The prototype branch is intentionally local and should be reviewed before it replaces the current production branch.
