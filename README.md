# Coppermind

Coppermind is *a one-column minimal responsive Jekyll blog theme*.

## Why Another Jekyll Theme?

The modern web is bloated and disorganised. Pages load slowly and require large, resource-hungry web browsers to acess them. The machines and networks of years ago would be entirely adequate today if the programs they run were better optimised. This project seeks to provide a simple, low-dependency framework for creation of static sites.

## About

This project:

- Is built as a theme for [Jekyll](https://jekyllrb.com)
- Was created as a fork of [Monophase](https://github.com/whk-io/monophase) with additional features, fixes, and customisations

## Installation and Initial Setup

### Adding the gem


Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "coppermind"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: coppermind
```

And then execute:

```shell
bundle
```

Or install it yourself as:

```shell
gem install coppermind
```

### The navigation bar and homepage

Before the site is fully functional, you will need to add an index.html file and navigation bar config files.

```html
<!-- index.html -->

---
layout: home
---
```

To set up the navigation bar you need to specify titles and URLs in the file `_data/navigation.yml`. For example, the following will give you a navbar with an *about* page and three archive pages.

```yml
- title: About
  url: /about/

- title: Years
  url: /years/

- title: Categories
  url: /categories/

- title: Tags
  url: /tags/

```

You will also need to add markdown files corresponding to these links in the site's root directory:

```md
<!-- about.md -->

---
layout: page
title: About
permalink: /about/
---

some text
```

```md
<!-- categories.md -->

---
layout: archive
type: categories
title: Categories
permalink: /categories/
---
```

```md
<!-- tags.md -->

---
layout: archive
type: tags
title: Tags
permalink: /tags/
---
```

```md
<!-- years.md -->

---
layout: archive
type: years
title: Years
permalink: /years/
---
```

### The footbar pins
To include pins in the footer, you need to specify titles, image names, and URLs in the file `_data/pins.yml` as shown in the example below.

```yml
- title: Larbs
  url: https://larbs.xyz/
  image: larbs

- title: XXIIVV
  url: https://wiki.xxiivv.com/site/home.html
  image: xxiivv

- title: Luke Smith
  url: https://lukesmith.xyz/index
  image: luke

- title: Hundred Rabbits
  url: https://100r.co/site/home.html
  image: hundredrabbits

- title: Landchad
  url: https://landchad.net/
  image: landchad

- title: Kitchen
  url: https://grimgrains.com/site/home.html
  image: kitchen
```

This configuration corresponds to the following fiiles:
1. `assets/pins/larbs.gif`
2. `assets/pins/xxiivv.gif`
3. `assets/pins/luke.gif`
4. `assets/pins/hundredrabbits.gif`
5. `assets/pins/landchad.gif`
6. `assets/pins/kitchen.gif`


## Customisation

### Config.yml options
In addition to the standard Jekyll config.yml settings, Coppermind supports the following:

| Variable | Type | Default | Specification |
| -------- | ---- | ------- | ------------- |
| `paginate` | int | --- | The number of posts to include on the homepage |
| `title` | String | --- | The title of the website |
| `tagline` | String | --- | The tagline of the website |
| `lang` | String | `en` | The language of pages; The value can be overwritten by the `lang` variable on each page |
| `author.name` | String | --- | The name of the website author |
| `author.url` | String | --- | A URL of the website author |
| `tags_path` | String | --- | A path to the archive-by-tags page; It is used by tags on each post |
| `categories_path` | String | --- | A path to the archive-by-categories page; It is used by categories on each post |

The default config is shown below:

```md
<!-- config.yml -->

title: Coppermind
tagline: Your tagline here
author:
  name: Author

# Build settings
markdown: kramdown
plugins:
  - jekyll-feed
  - jekyll-paginate
  - jekyll-seo-tag
  - kramdown-parser-gfm
  
paginate: 2

tags_path: /tags/
categories_path: /categories/
```

### Page frontmatter

In addition to the standard Jekyll frontmatter configuration, Coppermind supports the following:

| Variable | Type | Default | Specification |
| -------- | ---- | ------- | ------------- |
| `description` | String | --- | A description of the current post |
| `last_modified_at` | String | --- | The date of the last modification you made on a post after its publishing |
| `author` | String or Array | --- | The author name(s) of the post |
| `comments` | Boolean | `true` | Does enable the Disqus comment system |
| `math` | Boolean | `false` | Does enable MathJax on this page |

A sample post is shown below:

```md
<!-- 2021-10-09-welcome-to-jekyll.markdown -->

---
layout: post
title:  "Welcome to Jekyll!"
date:   2021-10-09 11:25:13 +1100
categories: jekyll update
tags: jekyll 
---

some text
```

### Homepage

You can customise the homepage by setting `layout: home` in the frontmatter in an `index.html` file in the base directory.

### Custom Head

Coppermind leaves a placeholder to allow inserting custom HTML into the page head. HTML code in `_includes/custom-head.html` will be automatically included in `<head>`.

### Alert Messages

Coppermind provides some predefined classes to specify different levels of **alert messages**. In order of tone from light to heavy, they are: `message-info`, `message-warning`, and `message-danger`. You may add it to single elements like a `<p>`, or to a parent if there are multiple elements to show.

### Alignment

Coppermind also provides some predefined classes to specify the alignment of HTML elements—e.g. images. They are `align-center`, `align-left`, and `align-right`.


## Development

To set up your environment to develop this theme, run `bundle install`. This theme is setup just like a normal Jekyll site with various filler files for testing. To test the theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`.

When a new gem version is released, only the files in specified in the gemspec regexp and tracked with Git will be bundled.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).