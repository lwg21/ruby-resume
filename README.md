A minimalistic static resume builder for Rubyists who enjoy writing code rather working with a UI. I wrote this after growing frustrated with tools like Word, Pages, PowerPoint and Figma. Inspired by [this post](https://mrzool.cc/writing/typesetting-automation/) on typesetting automation.

- YAML to store the data, HTML and CSS to structure and style the template, Ruby to hydrate it.
- Templating syntax inspired by Rails for familiarity (ERB, layout/views/partials organisation, `render` method).

## Getting started

- To generate the resume as HTML, you only need Ruby.
- Write your data as YAML in the `data.yml` file.
- Write your HTML in the `layout.erb.html` and `view.html.erb` files. You can use ERB syntax `<%= %>` to render the data using the same keys as in the YAML file.
- Style the document with CSS using the `public/style.css` file.
- Run the script to build the resume as a static `public/index.html` file.

```
ruby script.rb
```

## PDF generation

- To generate a PDF of your resume, you can either serve the HTML file and print it in the browser, or you can use the `-pdf` flag. This will generate a PDF version of the resume in `public/resume.pdf`.
- PDF generation works using [Grover](https://github.com/Studiosity/grover), which relies on [Puppeteer](https://github.com/puppeteer/puppeteer). You will therefore need to install the additional dependencies.
- Make sure you have both Ruby and Node.js installed, as well as packages managers. For example, install [Ruby](https://ruby-doc.org/) and [Bundler](https://bundler.io/) using [rbenv](https://github.com/rbenv/rbenv), [Node.js](https://nodejs.org/) and [NPM](https://www.npmjs.com/) using [nvm](https://github.com/nvm-sh/nvm)).

```
bundle install
npm install
ruby script.rb -pdf
```

## Copyright notices

- Icons from [Lucide](https://lucide.dev/). Copyright (c) for portions of Lucide are held by Cole Bemis 2013-2022 as part of Feather (MIT). All other copyright (c) for Lucide are held by Lucide Contributors 2022.
