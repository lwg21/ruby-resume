A minimal static resume builder for Rubyists who enjoy writing code rather than pushing boxes around. I built this after growing frustrated with previous attempts using Word, Pages, PowerPoint, Canva, Figma, InDesign…

- YAML to store the data, HTML and CSS to structure and style the template, Ruby to hydrate it.
- Templating syntax inspired by Rails for familiarity (ERB, layout/views/partials organisation, `render` method).
- I later added PDF generation using [Grover](https://github.com/Studiosity/grover).

## Getting started

- Make sure you have both languages installed, as well as packages managers. For example, you can install [Ruby](https://ruby-doc.org/) and [Bundler](https://bundler.io/) using [rbenv](https://github.com/rbenv/rbenv), and [Node.js](https://nodejs.org/) and [NPM](https://www.npmjs.com/) using [nvm](https://github.com/nvm-sh/nvm)).
- Install dependencies.

```
bundle install
npm install
```

- The dependencies are for the PDF generation: [Grover](https://github.com/Studiosity/grover) which relies on [Puppeteer](https://github.com/puppeteer/puppeteer).
- Write the data of your CV in a `data.yml` file at the root the project.
- Write the HTML in the `layout.erb.html` and `view.html.erb` files. You can use ERB syntax `<%= %>` to render the data using the same keys as in your YAML file.
- Style it with CSS using the `public/style.css` file.
- Run `ruby script.rb` to build the resume as a static `public/index.html` file as well as generate a PDF version `public/index.pdf`.

## Copyright notices

- Icons from [Lucide](https://lucide.dev/). Copyright (c) for portions of Lucide are held by Cole Bemis 2013-2022 as part of Feather (MIT). All other copyright (c) for Lucide are held by Lucide Contributors 2022.
