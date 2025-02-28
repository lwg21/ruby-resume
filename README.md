A minimal static resume builder for Rubyists who enjoy writing code rather than pushing boxes around. I built this after growing frustrated with previous attempts using Word, Pages, PowerPoint, Canva, Figma, InDesign…

- YAML to store the data, HTML and CSS to structure and style the template, Ruby to hydrate it.
- Templating syntax inspired by Rails for familiarity (ERB, layout/views/partials organisation, `render` method and `_tag` helpers).
- No dependencies beyond Ruby (YAML and ERB are part of the standard library)

## Getting started

- Install [Ruby](https://ruby-doc.org/) (for example using [rbenv](https://github.com/rbenv/rbenv)).
- Write the data of your CV in a `data.yml` file at the root the project.
- Write the HTML in the `layout.erb.html` and `view.html.erb`. You can use ERB syntax `<%= %>` to render the data using the same keys as in `data.yml`.
- Style it with CSS using the `public/style.css` file.
- Run `ruby resume.rb` to build the resume as a static `public/index.html` file.
-  You can serve this file to see it in the browser.  For this purpose I use `ruby -run -e httpd ./public -p 8000` (requires the [WEBrick](https://github.com/ruby/webrick) gem).
- To keep it simple, I use the browser to generate a PDF (exact margin settings depend on your browser)

## Copyright notices

- Icons from [Lucide](https://lucide.dev/). Copyright (c) for portions of Lucide are held by Cole Bemis 2013-2022 as part of Feather (MIT). All other copyright (c) for Lucide are held by Lucide Contributors 2022.
